CLASS zcl_cq_employee_sa DEFINITION
  PUBLIC
    FINAL
    CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.
    METHODS constructor RAISING
                          /iwbep/cx_gateway
                          cx_a4c_cp_svc_inst_not_exist
                          cx_a4c_dest_svc_lookup_failure
                          cx_a4c_destination_not_found
                          cx_web_http_client_error
                          cx_http_dest_provider_error.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mo_client_proxy TYPE REF TO /iwbep/if_cp_client_proxy.
    METHODS create_client_proxy
      RETURNING
        VALUE(ro_client_proxy) TYPE REF TO /iwbep/if_cp_client_proxy
      RAISING
        /iwbep/cx_gateway
        cx_a4c_cp_svc_inst_not_exist
        cx_a4c_dest_svc_lookup_failure
        cx_a4c_destination_not_found
        cx_web_http_client_error
        cx_http_dest_provider_error.
ENDCLASS.


CLASS zcl_cq_employee_sa IMPLEMENTATION.

  METHOD constructor.
    me->mo_client_proxy = me->create_client_proxy( ).
  ENDMETHOD.


  METHOD create_client_proxy.
    DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
        i_name                  = 'S4HC'
        i_authn_mode            = if_a4c_cp_service=>user_propagation
    ).

    cl_web_http_client_manager=>create_by_http_destination(
        EXPORTING
          i_destination = lo_destination
        RECEIVING
          r_client = DATA(lo_http_client)
     ).

    lo_http_client->get_http_request( )->set_uri_path( '/sap/opu/odata/sap/API_BUSINESS_PARTNER' ).
    lo_http_client->set_csrf_token( ).

    ro_client_proxy  = cl_web_odata_client_factory=>create_v2_remote_proxy(
       iv_service_definition_name = 'Z_BUSINESSPARTNER_SA'
       io_http_client           = lo_http_client
       iv_relative_service_root = '/sap/opu/odata/sap/API_BUSINESS_PARTNER'
    ).

  ENDMETHOD.


  METHOD if_rap_query_provider~select.
*       ensure: in case of a single record is requested (e.g. data for a detail page),
*               only one record is returned and SET_TOTAL_NUMBER_OF_RECORDS = 1
    DATA lt_employees     TYPE STANDARD TABLE OF zi_ce_employee_sa WITH KEY businesspartner.
    DATA lt_firstname_range TYPE RANGE OF za_businesspartner-firstname.
    DATA lt_lastname_range TYPE RANGE OF za_businesspartner-lastname.
    DATA lt_bupa_range TYPE RANGE OF za_businesspartner-businesspartner.
    DATA lt_bupacat_range TYPE RANGE OF za_businesspartner-businesspartnercategory.
    DATA lt_select_properties TYPE /iwbep/if_cp_runtime_types=>ty_t_property_path.
    DATA lt_filter_node TYPE STANDARD TABLE OF REF TO /iwbep/if_cp_filter_node.
    DATA lo_filter_root TYPE REF TO /iwbep/if_cp_filter_node.
    DATA lx_exc TYPE REF TO cx_root.

    IF io_request->is_data_requested( ).
      DATA(ls_paging)      = io_request->get_paging( )->get_page_size( ).
      DATA(ls_skip)        = io_request->get_paging( )->get_offset( ).
      DATA(lt_fields)      = io_request->get_requested_elements( ).
      DATA(lt_sort)        = io_request->get_sort_elements( ).

      TRY.
          DATA(lt_filter_cond) = io_request->get_filter( )->get_as_ranges( ).

          DATA(lo_list_request) = mo_client_proxy->create_resource_for_entity_set( 'A_BUSINESSPARTNER' )->create_request_for_read( ).

*             SET $FILTER
          LOOP AT lt_filter_cond INTO DATA(ls_filter_cond).
            CASE ls_filter_cond-name.
              WHEN 'FIRSTNAME'.
                lt_firstname_range = CORRESPONDING #( ls_filter_cond-range ).
              WHEN 'LASTNAME'.
                lt_lastname_range = CORRESPONDING #( ls_filter_cond-range ).
              WHEN 'BUSINESSPARTNER'.
                lt_bupa_range = CORRESPONDING #( ls_filter_cond-range ).
            ENDCASE.
          ENDLOOP.

          DATA(lo_filter_factory) = lo_list_request->create_filter_factory( ).

          IF lt_firstname_range IS NOT INITIAL.
            DATA(lo_filter_node) = lo_filter_factory->create_by_range(
              iv_property_path     = 'FIRSTNAME'
              it_range             = lt_firstname_range
            ).
            APPEND lo_filter_node TO lt_filter_node.
          ENDIF.

          IF lt_lastname_range IS NOT INITIAL.
            lo_filter_node = lo_filter_factory->create_by_range(
              iv_property_path     = 'LASTNAME'
              it_range             = lt_lastname_range
            ).
            APPEND lo_filter_node TO lt_filter_node.
          ENDIF.

          IF lt_bupa_range IS NOT INITIAL.
            lo_filter_node = lo_filter_factory->create_by_range(
              iv_property_path     = 'BUSINESSPARTNER'
              it_range             = lt_bupa_range
            ).
            APPEND lo_filter_node TO lt_filter_node.
          ENDIF.

*            BUSINESSPARTNERCATEGORY = 1
          lt_bupacat_range = VALUE #( ( low = '1' option = 'EQ' sign = 'I' ) ).
          lo_filter_node = lo_filter_factory->create_by_range(
              iv_property_path     = 'BUSINESSPARTNERCATEGORY'
              it_range             = lt_bupacat_range
            ).
          APPEND lo_filter_node TO lt_filter_node.

          LOOP AT lt_filter_node INTO lo_filter_node.
            IF lo_filter_root IS INITIAL.
              lo_filter_root = lo_filter_node.
            ELSE.
              lo_filter_root = lo_filter_root->and( lo_filter_node ).
            ENDIF.
          ENDLOOP.

          lo_list_request->set_filter( lo_filter_root ).

*             SET $SELECT
          LOOP AT lt_fields INTO DATA(ls_field).
            APPEND ls_field TO lt_select_properties.
          ENDLOOP.
          lo_list_request->set_select_properties( lt_select_properties ).

*             SET $TOP AND $SKIP
          lo_list_request->set_skip( CONV i( ls_skip ) ).
          IF CONV i( ls_paging ) > 0.
            lo_list_request->set_top( CONV i( ls_paging ) ).
          ENDIF.

*             SET $COUNT
          IF io_request->is_total_numb_of_rec_requested(  ).
            lo_list_request->request_count(  ).
          ENDIF.

          DATA(lo_read_response_list) = lo_list_request->execute( ).

          IF io_request->is_total_numb_of_rec_requested( ).
            io_response->set_total_number_of_records( lo_read_response_list->get_count( ) ).
          ENDIF.

          lo_read_response_list->get_business_data(
            IMPORTING
              et_business_data = lt_employees
          ).

*             return business partner(s)
*              lt_employees = VALUE #( ( businesspartner = '4711' firstname = 'Kai' lastname = 'DEHMANN' ) ).
          io_response->set_data( lt_employees ).

*          CATCH /iwbep/cx_cp_remote INTO lx_exc.
*          CATCH /iwbep/cx_gateway INTO lx_exc.
*            RAISE EXCEPTION TYPE cx_a4c_rap_query_provider
*              EXPORTING
*                previous = lx_exc.
        CATCH cx_root INTO DATA(exception).
          DATA(exception_message) = cl_message_helper=>get_latest_t100_exception( exception )->if_message~get_longtext( ).

      ENDTRY.
    ENDIF.


  ENDMETHOD.
ENDCLASS.
