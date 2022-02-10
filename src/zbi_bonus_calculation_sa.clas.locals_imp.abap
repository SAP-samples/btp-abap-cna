    CLASS lcl_handler DEFINITION INHERITING FROM cl_abap_behavior_handler ABSTRACT FINAL.
      PUBLIC SECTION.

        TYPES:
          tt_c_bonuscalc        TYPE TABLE FOR CREATE zi_bonus_calc_SA,
          ts_c_bonuscalc        TYPE LINE OF tt_c_bonuscalc,
          tt_u_bonuscalc        TYPE TABLE FOR UPDATE zi_bonus_calc_SA,
          ts_u_bonuscalc        TYPE LINE OF tt_u_bonuscalc,
          tt_d_bonuscalc        TYPE TABLE FOR DELETE zi_bonus_calc_SA,
          tt_mapped_bonuscalc   TYPE TABLE FOR MAPPED zi_bonus_calc_SA,
          tt_failed_bonuscalc   TYPE TABLE FOR FAILED zi_bonus_calc_SA,
          tt_reported_bonuscalc TYPE TABLE FOR REPORTED zi_bonus_calc_SA,
          ts_reported_bonuscalc TYPE LINE OF tt_reported_bonuscalc,
          BEGIN OF bonusinfo,
            actualrevenueamount TYPE decfloat34,
            targetamount        TYPE decfloat34,
            bonuspercentage     TYPE decfloat34,
          END OF bonusinfo,
          BEGIN OF bonusresult,
            bonusamount TYPE decfloat34,
          END OF bonusresult.

        CLASS-DATA:
          mt_create TYPE tt_c_bonuscalc,
          mt_update TYPE tt_u_bonuscalc,
          mt_delete TYPE tt_d_bonuscalc,
          mt_mapped TYPE tt_mapped_bonuscalc.

        METHODS:
          create_bonus_calculation
            IMPORTING
              it_create   TYPE tt_c_bonuscalc
            CHANGING
              ct_mapped   TYPE tt_mapped_bonuscalc
              ct_failed   TYPE tt_failed_bonuscalc
              ct_reported TYPE tt_reported_bonuscalc RAISING zcx_bonus_calculation_sa,

          update_bonus_calculation
            IMPORTING
              it_update   TYPE tt_u_bonuscalc
            CHANGING
              ct_mapped   TYPE tt_mapped_bonuscalc
              ct_failed   TYPE tt_failed_bonuscalc
              ct_reported TYPE tt_reported_bonuscalc RAISING zcx_bonus_calculation_SA,

          delete_bonus_calculation
            IMPORTING
              it_delete   TYPE tt_d_bonuscalc
            CHANGING
              ct_mapped   TYPE tt_mapped_bonuscalc
              ct_failed   TYPE tt_failed_bonuscalc
              ct_reported TYPE tt_reported_bonuscalc RAISING zcx_bonus_calculation_SA,

          calculate_bonus
            IMPORTING
              it_calculate TYPE tt_u_bonuscalc
            CHANGING
              ct_mapped    TYPE tt_mapped_bonuscalc
              ct_failed    TYPE tt_failed_bonuscalc
              ct_reported  TYPE tt_reported_bonuscalc RAISING zcx_bonus_calculation_SA,

          calculate_bonus_event
            IMPORTING
              it_calculate TYPE tt_u_bonuscalc
            CHANGING
              ct_mapped    TYPE tt_mapped_bonuscalc
              ct_failed    TYPE tt_failed_bonuscalc
              ct_reported  TYPE tt_reported_bonuscalc RAISING zcx_bonus_calculation_SA.

        CLASS-METHODS: save.

      PRIVATE SECTION.

        CONSTANTS:
          base_url     TYPE string VALUE 'https://bonus-calculation.ed815aa.kyma.shoot.live.k8s-hana.ondemand.com',
          content_type TYPE string VALUE 'Content-type',
          json_content TYPE string VALUE 'application/json; charset=UTF-8'.

        METHODS:
          check_non_negative
            IMPORTING
              it_bonus_calculation TYPE tt_c_bonuscalc
            CHANGING
              ct_failed            TYPE tt_failed_bonuscalc
              ct_reported          TYPE tt_reported_bonuscalc RAISING zcx_bonus_calculation_SA,

          check_mandatory
            IMPORTING
              it_bonus_calculation TYPE tt_c_bonuscalc
            CHANGING
              ct_failed            TYPE tt_failed_bonuscalc
              ct_reported          TYPE tt_reported_bonuscalc RAISING zcx_bonus_calculation_SA,

          before_save
            IMPORTING
              it_bonus_calculation TYPE tt_c_bonuscalc
            CHANGING
              ct_failed            TYPE tt_failed_bonuscalc
              ct_reported          TYPE tt_reported_bonuscalc RAISING zcx_bonus_calculation_SA,

          validate
            IMPORTING
              it_bonus_calculation TYPE tt_c_bonuscalc
              iv_is_create         TYPE abap_bool
            CHANGING
              ct_failed            TYPE tt_failed_bonuscalc
              ct_reported          TYPE tt_reported_bonuscalc RAISING zcx_bonus_calculation_SA.

        METHODS after_modification
          IMPORTING
            it_bonus_calculation         TYPE tt_c_bonuscalc
           CHANGING
             ct_failed                   TYPE tt_failed_bonuscalc
             ct_reported                 TYPE tt_reported_bonuscalc
           RETURNING
             VALUE(rt_bonus_calculation) TYPE tt_c_bonuscalc RAISING zcx_bonus_calculation_SA.

        METHODS execute_calculation
          IMPORTING bonusinfo     TYPE bonusinfo
          RETURNING VALUE(result) TYPE decfloat34
          RAISING   cx_static_check.

        METHODS lock FOR BEHAVIOR IMPORTING roots_to_lock FOR LOCK bonuscalculation.
        METHODS read FOR BEHAVIOR IMPORTING roots_to_read FOR READ bonuscalculation RESULT et_bonusplan.

        METHODS create_s4_client_proxy
          RETURNING
            VALUE(ro_client_proxy) TYPE REF TO /iwbep/if_cp_client_proxy
          RAISING
            cx_a4c_cp_svc_inst_not_exist
            cx_web_http_client_error
            cx_http_dest_provider_error
            /iwbep/cx_gateway.

        METHODS create_s4_client_proxy_event
          RETURNING
            VALUE(ro_client_proxy) TYPE REF TO /iwbep/if_cp_client_proxy
          RAISING
            cx_a4c_cp_svc_inst_not_exist
            cx_web_http_client_error
            cx_http_dest_provider_error
            /iwbep/cx_gateway.

        METHODS modify FOR BEHAVIOR IMPORTING
                                      it_create                FOR CREATE bonuscalculation
                                      it_update                FOR UPDATE bonuscalculation
                                      it_delete                FOR DELETE bonuscalculation
                                      it_calculate_bonus       FOR ACTION bonuscalculation~calculate_bonus RESULT bonuscalculation
                                      it_calculate_bonus_event FOR ACTION bonuscalculation~calculate_bonus_event RESULT bonuscalculation_event.

        METHODS create_bupa_proxy
          RETURNING
            VALUE(ro_client_proxy) TYPE REF TO /iwbep/if_cp_client_proxy
          RAISING
            cx_a4c_cp_svc_inst_not_exist
            cx_web_http_client_error
            cx_http_dest_provider_error
            /iwbep/cx_gateway.

        METHODS create_bupa_proxy_event
          RETURNING
            VALUE(ro_client_proxy) TYPE REF TO /iwbep/if_cp_client_proxy
          RAISING
            cx_a4c_cp_svc_inst_not_exist
            cx_web_http_client_error
            cx_http_dest_provider_error
            /iwbep/cx_gateway.

        METHODS create_client
          IMPORTING url           TYPE string
          RETURNING VALUE(result) TYPE REF TO if_web_http_client
          RAISING   cx_static_check.

    ENDCLASS.

    CLASS lcl_handler IMPLEMENTATION.

      METHOD create_bupa_proxy.
        DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
              i_name                  = 'S4HC'
              i_authn_mode            = if_a4c_cp_service=>user_propagation
        ).

        cl_web_http_client_manager=>create_by_http_destination(
            EXPORTING
              i_destination = lo_destination
            RECEIVING
              r_client = DATA(lo_http_client) ).

        lo_http_client->get_http_request( )->set_uri_path( '/sap/opu/odata/sap/API_BUSINESS_PARTNER' ).

        ro_client_proxy  = cl_web_odata_client_factory=>create_v2_remote_proxy(
           iv_service_definition_name = 'Z_BUSINESSPARTNER_SA'
           io_http_client           = lo_http_client
           iv_relative_service_root = '/sap/opu/odata/sap/API_BUSINESS_PARTNER' ).

      ENDMETHOD.

      METHOD lock.
        LOOP AT roots_to_lock ASSIGNING FIELD-SYMBOL(<s_bonuspl_key>).
          TRY.
              DATA(lo_lock) = cl_abap_lock_object_factory=>get_instance( iv_name = 'EZ_BONUSCAL_SA').
              lo_lock->enqueue(
                EXPORTING
                  it_table_mode = VALUE if_abap_lock_object=>tt_table_mode( ( table_name = 'ZBONUSCALCSA' mode = 'E' ) )
                  it_parameter  = VALUE if_abap_lock_object=>tt_parameter( ( name = 'ID' value = REF #( <s_bonuspl_key>-id ) ) ) ).

            CATCH cx_abap_foreign_lock.
              DATA(lv_msg) = me->new_message(
                 id       = 'zcm_bonus_cal_sa'
                 number   = 010
                 severity = if_abap_behv_message=>severity-error
                 v1       = <s_bonuspl_key>-id
                 v2       = cl_abap_context_info=>get_user_technical_name( ) ).
              APPEND VALUE #( id = <s_bonuspl_key>-id %msg = lv_msg ) TO reported-bonuscalculation.
              APPEND VALUE #( id = <s_bonuspl_key>-id %fail = VALUE if_abap_behv=>t_failinfo( cause = if_abap_behv=>cause-locked ) ) TO failed-bonuscalculation.

            CATCH cx_abap_lock_failure.
              ASSERT 1 = 0.
          ENDTRY.
        ENDLOOP.
      ENDMETHOD.

      METHOD read.
        READ TABLE roots_to_read INTO DATA(ls_root_to_read) INDEX 1.
        SELECT SINGLE FROM zi_bonus_calc_SA FIELDS sap_lastchangeddatetime WHERE id = @ls_root_to_read-id INTO @DATA(lv_changedatetime).
        et_bonusplan = VALUE #( ( id = ls_root_to_read-id sap_lastchangeddatetime = lv_changedatetime ) ).
      ENDMETHOD.

      METHOD save.
        DATA ls_update_bonuscalc TYPE LINE OF tt_u_bonuscalc.
        DATA lt_control_components TYPE string_table.

        "CREATE
        LOOP AT lcl_handler=>mt_create ASSIGNING FIELD-SYMBOL(<ls_create_bonuscalc>).
          DATA(ls_db_c_bonusplan) = CORRESPONDING zbonuscalcSA( <ls_create_bonuscalc> ).
          INSERT INTO  zbonuscalcSA VALUES @ls_db_c_bonusplan.
          ASSERT sy-subrc = 0.
        ENDLOOP.

        "UPDATE
        IF lcl_handler=>mt_update IS NOT INITIAL.
          SELECT * FROM zi_bonus_calc_SA
          FOR ALL ENTRIES IN @lcl_handler=>mt_update
          WHERE id = @lcl_handler=>mt_update-id
          INTO TABLE @DATA(lt_old_bonuscalcs).
        ENDIF.

        lt_control_components = VALUE #(
            ( `sap_lastchangedbyuser` )
            ( `id` )
            ( `validitystartdate` )
            ( `validityenddate` )
            ( `targetamount_v` )
            ( `targetamount_c` )
            ( `bonuspercentage_v` )
            ( `bonuspercentage_u` )
            ( `isconsistent` )
            ( `employeeid` )
            ( `employeename` )
            ( `releasestatus` )
            ( `actualrevenueamount_v` )
            ( `actualrevenueamount_c` )
            ( `bonusamount_v` )
            ( `bonusamount_c` ) ).

        LOOP AT lcl_handler=>mt_update ASSIGNING FIELD-SYMBOL(<ls_update_bonuscalc>).
          READ TABLE lt_old_bonuscalcs WITH KEY id = <ls_update_bonuscalc>-id ASSIGNING FIELD-SYMBOL(<ls_old_bonuscalc>).

          LOOP AT lt_control_components INTO DATA(lv_component_name).
            ASSIGN COMPONENT lv_component_name OF STRUCTURE <ls_update_bonuscalc>-%control TO FIELD-SYMBOL(<lv_control_value>).
            CHECK <lv_control_value> = cl_abap_behavior_handler=>flag_changed.

            ASSIGN COMPONENT lv_component_name OF STRUCTURE <ls_update_bonuscalc> TO FIELD-SYMBOL(<lv_new_value>).
            ASSIGN COMPONENT lv_component_name OF STRUCTURE <ls_old_bonuscalc> TO FIELD-SYMBOL(<lv_old_value>).

            <lv_old_value> = <lv_new_value>.
          ENDLOOP.

          "Update Bonusplan table
          DATA(ls_db_u_bonuscalc) = CORRESPONDING zbonuscalcSA( <ls_old_bonuscalc> ).
          UPDATE zbonuscalcSA FROM @ls_db_u_bonuscalc.
        ENDLOOP.

        "DELETE
        IF lcl_handler=>mt_delete IS NOT INITIAL.
          " Delete bonusplan table
          DELETE FROM zbonuscalcSA WHERE id IN ( SELECT id FROM @lcl_handler=>mt_delete AS itab ).
        ENDIF.

      ENDMETHOD.

      METHOD check_mandatory.
        DATA: lt_components_to_check TYPE string_table.
        FIELD-SYMBOLS:
          <lv_value>       TYPE any,
          <lv_change_flag> TYPE any.

        lt_components_to_check = VALUE #(
            ( `EmployeeID`)
            ( `TargetAmount_C`)
            ( `TargetAmount_V`)
            ( `BonusPercentage_V`)
            ( `ValidityStartDate` )
            ( `ValidityEndDate` ) ).

        LOOP AT it_bonus_calculation INTO DATA(ls_create_bonuscalc).
          LOOP AT lt_components_to_check INTO DATA(wa_comp_name).
            ASSIGN COMPONENT wa_comp_name OF STRUCTURE  ls_create_bonuscalc  TO <lv_value>.
            ASSIGN COMPONENT wa_comp_name OF STRUCTURE ls_create_bonuscalc-%control TO <lv_change_flag>.

            IF <lv_value> IS INITIAL AND <lv_change_flag> IS NOT INITIAL.
              APPEND CORRESPONDING ts_reported_bonuscalc( ls_create_bonuscalc MAPPING %element = %control ) TO ct_reported.
              RAISE EXCEPTION TYPE zcx_bonus_calculation_SA MESSAGE e000(zcm_bonus_cal_sa) WITH wa_comp_name
               EXPORTING
                        severity          = 'E'.
            ENDIF.

            UNASSIGN <lv_value>.
            UNASSIGN <lv_change_flag>.
          ENDLOOP.
        ENDLOOP.
      ENDMETHOD.

      METHOD check_non_negative.
        DATA: lt_components_to_check TYPE string_table.
        FIELD-SYMBOLS <lv_value> TYPE any.

        lt_components_to_check = VALUE #(
          ( `TargetAmount_V`)
          ( `BonusPercentage_V` ) ).

        LOOP AT it_bonus_calculation INTO DATA(ls_create_bonuscalc).
          LOOP AT lt_components_to_check INTO DATA(wa_comp_name).
            ASSIGN COMPONENT wa_comp_name OF STRUCTURE  ls_create_bonuscalc TO <lv_value>.

            ASSERT sy-subrc = 0.

            IF <lv_value> IS NOT INITIAL AND <lv_value> LT 0.
              APPEND CORRESPONDING ts_reported_bonuscalc( ls_create_bonuscalc MAPPING %element = %control ) TO ct_reported.
              RAISE EXCEPTION TYPE zcx_bonus_calculation_SA MESSAGE e001(zcm_bonus_cal_sa) WITH wa_comp_name
                 EXPORTING
                          severity          = 'E'.
            ENDIF.
          ENDLOOP.
        ENDLOOP.
      ENDMETHOD.

      METHOD create_bonus_calculation.
        validate(
          EXPORTING
            it_bonus_calculation = it_create
            iv_is_create         = abap_true
          CHANGING
            ct_failed            = ct_failed
            ct_reported          = ct_reported ).

        DATA(lt_create_bonuscalc) = after_modification(
          EXPORTING
            it_bonus_calculation = it_create
          CHANGING
            ct_failed            = ct_failed
            ct_reported          = ct_reported ).

        LOOP AT lt_create_bonuscalc INTO DATA(ls_create_bonuscalc).
          ls_create_bonuscalc-sap_createdbyuser = cl_abap_context_info=>get_user_alias( ).
          GET TIME STAMP FIELD ls_create_bonuscalc-sap_createddatetime.
          GET TIME STAMP FIELD ls_create_bonuscalc-sap_lastchangeddatetime. "etag handling

          "set ID
          IF ls_create_bonuscalc-id IS INITIAL.
            SELECT MAX( id ) FROM zi_bonus_calc_SA INTO @DATA(current_max_id).
            ls_create_bonuscalc-id = current_max_id + 1.
          ENDIF.

          "set release status initially
          IF ls_create_bonuscalc-releasestatus IS INITIAL.
            ls_create_bonuscalc-releasestatus = '1'.
          ENDIF.

          ls_create_bonuscalc-bonuspercentage_u = 'P1'.

          IF ls_create_bonuscalc-%cid IS NOT INITIAL.
            INSERT CORRESPONDING #( ls_create_bonuscalc ) INTO TABLE mt_mapped.
            INSERT CORRESPONDING #( ls_create_bonuscalc ) INTO TABLE ct_mapped.
          ENDIF.
          IF NOT line_exists( ct_failed[ %cid = ls_create_bonuscalc-%cid ] ). "Do not insert malformed entries
            INSERT ls_create_bonuscalc INTO TABLE mt_create.
          ENDIF.
        ENDLOOP.

      ENDMETHOD.

      METHOD after_modification.
        DATA lx_exception TYPE REF TO cx_root.
        DATA lo_bupa_proxy TYPE REF TO /iwbep/if_cp_client_proxy.

        LOOP AT it_bonus_calculation INTO DATA(ls_bonuscalc).
          "set employee name
          IF ls_bonuscalc-employeeid IS NOT INITIAL.
            TRY.
                IF lo_bupa_proxy IS INITIAL.
                  lo_bupa_proxy = me->create_bupa_proxy( ).
                ENDIF.

                DATA(ls_bupa) = VALUE za_businesspartner( businesspartner = ls_bonuscalc-employeeid ).
                DATA(lo_read_resource) = lo_bupa_proxy->create_resource_for_entity_set( 'A_BUSINESSPARTNER' ).
                DATA(lo_read_request) = lo_read_resource->navigate_with_key( ls_bupa )->create_request_for_read( ).
                DATA(lo_read_response) = lo_read_request->execute( ).

                lo_read_response->get_business_data(
                  IMPORTING
                    es_business_data = ls_bupa ).

                ls_bonuscalc-employeename = ls_bupa-businesspartnerfullname.
                ls_bonuscalc-%control-employeename = cl_abap_behavior_handler=>flag_changed.

              CATCH cx_root INTO lx_exception.
                APPEND CORRESPONDING ts_reported_bonuscalc( ls_bonuscalc MAPPING %element = %control ) TO ct_reported.
                RAISE EXCEPTION TYPE zcx_bonus_calculation_SA MESSAGE e008(zcm_bonus_cal_sa) WITH lx_exception->get_text( )
                EXPORTING previous = lx_exception
                          severity = 'E'.
            ENDTRY.
          ENDIF.

          "consistency check START
          IF ( ls_bonuscalc-%control-validitystartdate = cl_abap_behavior_handler=>flag_changed AND ls_bonuscalc-validitystartdate IS INITIAL )
           OR ( ls_bonuscalc-%control-validityenddate = cl_abap_behavior_handler=>flag_changed AND ls_bonuscalc-validityenddate IS INITIAL )
           OR ( ( ls_bonuscalc-%control-validitystartdate = cl_abap_behavior_handler=>flag_changed OR ls_bonuscalc-validityenddate  = cl_abap_behavior_handler=>flag_changed ) AND ls_bonuscalc-validitystartdate GE ls_bonuscalc-validityenddate )
           OR ( ls_bonuscalc-%control-bonuspercentage_v = cl_abap_behavior_handler=>flag_changed AND ls_bonuscalc-bonuspercentage_v IS INITIAL )
           OR ( ls_bonuscalc-%control-bonuspercentage_v = cl_abap_behavior_handler=>flag_changed AND ls_bonuscalc-bonuspercentage_v GE 100 )
           OR ( ls_bonuscalc-%control-employeeid = cl_abap_behavior_handler=>flag_changed AND ls_bonuscalc-employeeid IS INITIAL ).
            ls_bonuscalc-isconsistent = abap_false.
          ELSE.
            ls_bonuscalc-isconsistent = abap_true.
          ENDIF.
          ls_bonuscalc-%control-isconsistent = cl_abap_behavior_handler=>flag_changed.

          "decide about save rejection
          IF ls_bonuscalc-releasestatus EQ '2'.
            SELECT SINGLE *
            FROM zi_bonus_calc_SA
            WHERE id = @ls_bonuscalc-id
            INTO @DATA(ls_bonuscalc_db).

            IF ls_bonuscalc_db-releasestatus NE '2' AND ls_bonuscalc_db-isconsistent EQ abap_true.
              DATA(ls_reported) = CORRESPONDING ts_reported_bonuscalc( ls_bonuscalc MAPPING %element = %control ).
              ls_reported-%msg = me->new_message(
                 id       = 'zcm_bonus_cal_sa'
                 number   = 007
                 severity = if_abap_behv_message=>severity-success ).
              APPEND ls_reported TO ct_reported.

            ELSEIF ls_bonuscalc_db-releasestatus NE '2' AND ls_bonuscalc_db-isconsistent EQ abap_false.
              APPEND CORRESPONDING ts_reported_bonuscalc( ls_bonuscalc MAPPING %element = %control ) TO ct_reported.
              RAISE EXCEPTION TYPE zcx_bonus_calculation_SA MESSAGE e006(zcm_bonus_cal_sa)
                   EXPORTING severity          = 'E'.
            ELSEIF ls_bonuscalc_db-releasestatus EQ '2'.
              APPEND CORRESPONDING ts_reported_bonuscalc( ls_bonuscalc MAPPING %element = %control ) TO ct_reported.
              RAISE EXCEPTION TYPE zcx_bonus_calculation_SA MESSAGE e005(zcm_bonus_cal_sa)
                   EXPORTING severity          = 'E'.
            ENDIF.
          ENDIF.

          APPEND ls_bonuscalc TO rt_bonus_calculation.
        ENDLOOP.
      ENDMETHOD.

      METHOD delete_bonus_calculation.
        DATA(lt_delete) = it_delete.

        LOOP AT lt_delete ASSIGNING FIELD-SYMBOL(<ls_delete>) WHERE id IS INITIAL."Initial key:  Determine key by Contend ID
          <ls_delete>-id = ct_mapped[ %cid = <ls_delete>-%cid_ref ]-id.
        ENDLOOP.

        LOOP AT lt_delete INTO DATA(ls_delete).
          INSERT ls_delete INTO TABLE mt_delete.
        ENDLOOP.

      ENDMETHOD.

      METHOD update_bonus_calculation.
        validate(
         EXPORTING
           it_bonus_calculation = it_update
           iv_is_create         = abap_false
         CHANGING
           ct_failed            = ct_failed
           ct_reported          = ct_reported ).

        DATA(lt_update) = it_update.

        LOOP AT lt_update ASSIGNING FIELD-SYMBOL(<ls_update>) WHERE id IS INITIAL."Initial key:  Determine key by Contend ID
          <ls_update>-id = ct_mapped[ %cid = <ls_update>-%cid_ref ]-id.
        ENDLOOP.

        lt_update = after_modification(
          EXPORTING
            it_bonus_calculation = lt_update
          CHANGING
            ct_failed            = ct_failed
            ct_reported          = ct_reported ).

        LOOP AT lt_update INTO DATA(ls_update).
          GET TIME STAMP FIELD ls_update-sap_lastchangeddatetime.
          ls_update-sap_lastchangedbyuser = cl_abap_context_info=>get_user_alias( ).
          ls_update-%control-sap_lastchangeddatetime = cl_abap_behavior_handler=>flag_changed.
          ls_update-%control-sap_lastchangedbyuser = cl_abap_behavior_handler=>flag_changed.

          IF NOT line_exists( ct_failed[ %cid = ls_update-%cid_ref ] ). "Do not insert malformed entries
            INSERT ls_update INTO TABLE mt_update.
          ENDIF.
        ENDLOOP.
      ENDMETHOD.

      METHOD create_s4_client_proxy.
        DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
            i_name                  = 'S4HC'
            i_authn_mode            = if_a4c_cp_service=>user_propagation
        ).

        cl_web_http_client_manager=>create_by_http_destination(
            EXPORTING
              i_destination = lo_destination
            RECEIVING
              r_client = DATA(lo_http_client) ).

        lo_http_client->get_http_request( )->set_uri_path( '/sap/opu/odata/sap/YY1_SALESORDERITEMCUBE_SA_CDS' ).

        ro_client_proxy  = cl_web_odata_client_factory=>create_v2_remote_proxy(
           iv_service_definition_name = 'Z_SALESORDERITEMCUBE_SA'
           io_http_client           = lo_http_client
           iv_relative_service_root = '/sap/opu/odata/sap/YY1_SALESORDERITEMCUBE_SA_CDS' ).

      ENDMETHOD.

      METHOD calculate_bonus.

        DATA lt_employeeid_range TYPE RANGE OF zyy1_salesorderitemcubesaresu-businesspartner.
        DATA lt_sdprocessstatus_range TYPE RANGE OF zyy1_salesorderitemcubesaresu-overallsdprocessstatus.
        DATA lt_creationdate_range TYPE RANGE OF zyy1_salesorderitemcubesaresu-creationdate.
        DATA ls_salesorderitemcubres TYPE zyy1_salesorderitemcubesaresu.
        DATA lt_salesorderitemcubres TYPE STANDARD TABLE OF zyy1_salesorderitemcubesaresu WITH DEFAULT KEY.
        DATA lt_salesorderitemcubres_fback TYPE STANDARD TABLE OF zyy1_salesorderitemcubesaresu WITH DEFAULT KEY.
        DATA lx_exception TYPE REF TO cx_root.
        DATA lo_s4_client_proxy TYPE REF TO /iwbep/if_cp_client_proxy.

        LOOP AT it_calculate INTO DATA(ls_bonus_calculation).
          CLEAR lt_salesorderitemcubres.
          CLEAR ls_salesorderitemcubres.

          SELECT SINGLE *
           FROM zi_bonus_calc_SA
           WHERE id EQ @ls_bonus_calculation-id INTO CORRESPONDING FIELDS OF @ls_bonus_calculation.

          TRY.
              lo_s4_client_proxy = me->create_s4_client_proxy( ).

              DATA(ls_salesorderitemcub) = VALUE zyy1_salesorderitemcubesa(
                p_exchangeratetype = 'M'
                p_displaycurrency = ls_bonus_calculation-targetamount_c ).

              " get completed Sales Orders for bonus plan's employee
              DATA(lo_list_resource) = lo_s4_client_proxy->create_resource_for_entity_set( 'YY1_SALESORDERITEMCUBE_SA' ).
              DATA(lo_list_request)  = lo_list_resource->navigate_with_key( ls_salesorderitemcub )->navigate_to_many( '_RESULTS' )->create_request_for_read( ).

              lt_employeeid_range = VALUE #( ( sign = 'I' option = 'EQ' low = ls_bonus_calculation-employeeid  ) ).

              DATA(lo_filter_node) = lo_list_request->create_filter_factory( )->create_by_range(
                iv_property_path     = 'BUSINESSPARTNER'
                it_range             = lt_employeeid_range ).

              lo_list_request->set_filter( lo_filter_node ).
              lo_list_request->set_select_properties( it_select_property = VALUE #( ( `NETAMOUNTINDISPLAYCURRENCY` ) ( `DISPLAYCURRENCY` ) ) ).

              DATA(lo_read_response_list) = lo_list_request->execute( ).

              lo_read_response_list->get_business_data(
                IMPORTING
                  et_business_data = lt_salesorderitemcubres ).

              READ TABLE lt_salesorderitemcubres INTO ls_salesorderitemcubres INDEX 1.

              ls_bonus_calculation-actualrevenueamount_v = ls_salesorderitemcubres-netamountindisplaycurrency.
              ls_bonus_calculation-actualrevenueamount_c = ls_salesorderitemcubres-displaycurrency.
              ls_bonus_calculation-bonusamount_c = ls_bonus_calculation-targetamount_c.

              "calculate bonus
              ls_bonus_calculation-bonusamount_v = me->execute_calculation( VALUE #( actualrevenueamount = ls_bonus_calculation-actualrevenueamount_v
                                                                                     targetamount = ls_bonus_calculation-targetamount_v
                                                                                     bonuspercentage = ls_bonus_calculation-bonuspercentage_v
                                                                                   ) ).

*              IF ( ls_bonus_calculation-actualrevenueamount_v > ls_bonus_calculation-targetamount_v ).
*                ls_bonus_calculation-bonusamount_v = ( ls_bonus_calculation-actualrevenueamount_v - ls_bonus_calculation-targetamount_v ) * ls_bonus_calculation-bonuspercentage_v / 100.
*                ls_bonus_calculation-bonusamount_c = ls_bonus_calculation-targetamount_c.
*              ELSE.
*                ls_bonus_calculation-bonusamount_v = 0.
*                ls_bonus_calculation-bonusamount_c = ls_bonus_calculation-targetamount_c.
*              ENDIF.

            CATCH cx_root INTO lx_exception.
              APPEND CORRESPONDING ts_reported_bonuscalc( ls_bonus_calculation MAPPING %element = %control ) TO ct_reported.
              RAISE EXCEPTION TYPE zcx_bonus_calculation_SA MESSAGE e011(zcm_bonus_cal_sa) WITH lx_exception->get_text( )
                    EXPORTING severity  = 'E'.
          ENDTRY.

          ls_bonus_calculation-%control-actualrevenueamount_v = cl_abap_behavior_handler=>flag_changed.
          ls_bonus_calculation-%control-actualrevenueamount_c = cl_abap_behavior_handler=>flag_changed.
          ls_bonus_calculation-%control-bonusamount_v = cl_abap_behavior_handler=>flag_changed.
          ls_bonus_calculation-%control-bonusamount_c = cl_abap_behavior_handler=>flag_changed.

          INSERT ls_bonus_calculation INTO TABLE mt_update.

*         Update SerchTerm1 & serchterm2 of Business Partner master data with the bonus amount
          DATA lo_bupa_proxy TYPE REF TO /iwbep/if_cp_client_proxy.
          TRY.
              IF lo_bupa_proxy IS INITIAL.
                lo_bupa_proxy = me->create_bupa_proxy(  ).
              ENDIF.

              DATA(ls_bupa) = VALUE za_businesspartner( businesspartner = ls_bonus_calculation-employeeid searchterm1 = CONV string( ls_bonus_calculation-bonusamount_v ) searchterm2 = ls_bonus_calculation-bonusamount_c  ).
              DATA(lo_update_resource) = lo_bupa_proxy->create_resource_for_entity_set( 'A_BUSINESSPARTNER' ).
              DATA(lo_update_request) = lo_update_resource->navigate_with_key( ls_bupa )->create_request_for_update( /iwbep/if_cp_request_update=>gcs_update_semantic-patch ).

              lo_update_request->set_business_data( is_business_data = ls_bupa
                                                    it_provided_property = VALUE #( ( |SEARCHTERM1| ) ( |SEARCHTERM2| ) ) ).
              lo_update_request->execute(  ).

            CATCH cx_root INTO lx_exception.
              APPEND CORRESPONDING ts_reported_bonuscalc( ls_bonus_calculation MAPPING %element = %control ) TO ct_reported.
              RAISE EXCEPTION TYPE zcx_bonus_calculation_SA MESSAGE e011(zcm_bonus_cal_sa) WITH lx_exception->get_text( )
                    EXPORTING severity  = 'E'.
          ENDTRY.

          DATA(ls_reported) = CORRESPONDING ts_reported_bonuscalc( ls_bonus_calculation MAPPING %element = %control ).
          ls_reported-%msg = me->new_message_with_text(
            EXPORTING
              severity = cl_abap_behv=>ms-success
              text     = 'Bonus Calculated!' ).

          APPEND ls_reported TO ct_reported.
        ENDLOOP.
      ENDMETHOD.

      METHOD validate.
        check_non_negative(
           EXPORTING
             it_bonus_calculation = it_bonus_calculation
           CHANGING
             ct_failed            = ct_failed
             ct_reported          = ct_reported ).

        check_mandatory(
          EXPORTING
            it_bonus_calculation = it_bonus_calculation
          CHANGING
            ct_failed            = ct_failed
            ct_reported          = ct_reported ).

        before_save(
          EXPORTING
            it_bonus_calculation = it_bonus_calculation
          CHANGING
            ct_failed            = ct_failed
            ct_reported          = ct_reported ).
      ENDMETHOD.

      METHOD before_save.
        LOOP AT it_bonus_calculation INTO DATA(ls_bonus_calculation).
          IF ( ls_bonus_calculation-%control-validitystartdate = cl_abap_behavior_handler=>flag_changed OR
          ls_bonus_calculation-%control-validityenddate = cl_abap_behavior_handler=>flag_changed ) AND
          ( ls_bonus_calculation-validitystartdate GE ls_bonus_calculation-validityenddate ).
            APPEND CORRESPONDING ts_reported_bonuscalc( ls_bonus_calculation MAPPING %element = %control ) TO ct_reported.
            RAISE EXCEPTION TYPE zcx_bonus_calculation_SA MESSAGE e004(zcm_bonus_cal_sa) WITH ls_bonus_calculation-validityenddate ls_bonus_calculation-validitystartdate
                     EXPORTING severity  = 'E'.
          ENDIF.

          IF ( ls_bonus_calculation-%control-bonuspercentage_v = cl_abap_behavior_handler=>flag_changed )
         AND ( ls_bonus_calculation-bonuspercentage_v GE 100 ).
            APPEND CORRESPONDING ts_reported_bonuscalc( ls_bonus_calculation MAPPING %element = %control ) TO ct_reported.
            RAISE EXCEPTION TYPE zcx_bonus_calculation_SA MESSAGE e003(zcm_bonus_cal_sa)
                        EXPORTING severity  = 'E'.
          ENDIF.

        ENDLOOP.
      ENDMETHOD.

      METHOD modify.
        TRY.
            IF it_calculate_bonus IS NOT INITIAL.
              me->calculate_bonus(
                EXPORTING
                  it_calculate = CORRESPONDING tt_u_bonuscalc( it_calculate_bonus )
                CHANGING
                  ct_mapped = mapped-bonuscalculation
                  ct_failed = failed-bonuscalculation
                  ct_reported = reported-bonuscalculation ).
            ENDIF.

            IF it_calculate_bonus_event IS NOT INITIAL.
              me->calculate_bonus_event(
                EXPORTING
                  it_calculate = CORRESPONDING tt_u_bonuscalc( it_calculate_bonus_event )
                CHANGING
                  ct_mapped = mapped-bonuscalculation
                  ct_failed = failed-bonuscalculation
                  ct_reported = reported-bonuscalculation ).
            ENDIF.

            IF it_create IS NOT INITIAL.
              me->create_bonus_calculation(
                EXPORTING
                  it_create  = it_create
                CHANGING
                  ct_mapped  = mapped-bonuscalculation
                  ct_failed  = failed-bonuscalculation
                  ct_reported = reported-bonuscalculation ).
            ENDIF.

            IF it_update IS NOT INITIAL.
              me->update_bonus_calculation(
                EXPORTING
                  it_update  = it_update
                CHANGING
                  ct_mapped  = mapped-bonuscalculation
                  ct_failed  = failed-bonuscalculation
                  ct_reported = reported-bonuscalculation ).
            ENDIF.

            IF it_delete IS NOT INITIAL.
              me->delete_bonus_calculation(
                EXPORTING
                  it_delete   = it_delete
                CHANGING
                  ct_mapped   = mapped-bonuscalculation
                  ct_failed   = failed-bonuscalculation
                  ct_reported = reported-bonuscalculation ).
            ENDIF.

          CATCH zcx_bonus_calculation_SA INTO DATA(lx_exc).
*      todo: zcx_bonusplan --- ts_c_bonusplan type structure for create zpp_bonusplan_test
            IF line_exists( reported-bonuscalculation[ 1 ] ).
              CASE lx_exc->severity.
                WHEN 'E'.
                  DATA(lv_severity) = cl_abap_behv=>ms-error.
                  APPEND VALUE #(  %cid = reported-bonuscalculation[ 1 ]-%cid id = reported-bonuscalculation[ 1 ]-id ) TO failed-bonuscalculation.

                WHEN 'I'.
                  lv_severity = cl_abap_behv=>ms-information.
                WHEN 'S'.
                  lv_severity = cl_abap_behv=>ms-success.
                WHEN 'W'.
                  lv_severity = cl_abap_behv=>ms-warning.
              ENDCASE.

              reported-bonuscalculation[ 1 ]-%msg = me->new_message_with_text(
                EXPORTING
                  text     = lx_exc->get_text( )
                  severity = lv_severity ).
            ENDIF.
        ENDTRY.
      ENDMETHOD.

      METHOD calculate_bonus_event.

        DATA lt_employeeid_range TYPE RANGE OF zyy1_salesorderitemcubesaresu-businesspartner.
        DATA lt_sdprocessstatus_range TYPE RANGE OF zyy1_salesorderitemcubesaresu-overallsdprocessstatus.
        DATA lt_creationdate_range TYPE RANGE OF zyy1_salesorderitemcubesaresu-creationdate.
        DATA ls_salesorderitemcubres TYPE zyy1_salesorderitemcubesaresu.
        DATA lt_salesorderitemcubres TYPE STANDARD TABLE OF zyy1_salesorderitemcubesaresu WITH DEFAULT KEY.
        DATA lt_salesorderitemcubres_fback TYPE STANDARD TABLE OF zyy1_salesorderitemcubesaresu WITH DEFAULT KEY.
        DATA lx_exception TYPE REF TO cx_root.
        DATA lo_s4_client_proxy TYPE REF TO /iwbep/if_cp_client_proxy.

        LOOP AT it_calculate INTO DATA(ls_bonus_calculation).
          CLEAR lt_salesorderitemcubres.
          CLEAR ls_salesorderitemcubres.

          SELECT SINGLE *
           FROM zi_bonus_calc_SA
           WHERE id EQ @ls_bonus_calculation-id INTO @DATA(ls_bonus_plan).

          IF ls_bonus_plan IS NOT INITIAL.
            SELECT SINGLE *
             FROM zi_bonus_calc_SA
             WHERE id EQ @ls_bonus_calculation-id INTO CORRESPONDING FIELDS OF @ls_bonus_calculation.

            TRY.
                lo_s4_client_proxy = me->create_s4_client_proxy_event( ).

                DATA(ls_salesorderitemcub) = VALUE zyy1_salesorderitemcubesa(
                  p_exchangeratetype = 'M'
                  p_displaycurrency = ls_bonus_calculation-targetamount_c ).

                " get completed Sales Orders for bonus plan's employee
                DATA(lo_list_resource) = lo_s4_client_proxy->create_resource_for_entity_set( 'YY1_SALESORDERITEMCUBE_SA' ).
                DATA(lo_list_request)  = lo_list_resource->navigate_with_key( ls_salesorderitemcub )->navigate_to_many( '_RESULTS' )->create_request_for_read( ).

                lt_employeeid_range = VALUE #( ( sign = 'I' option = 'EQ' low = ls_bonus_calculation-employeeid  ) ).

                DATA(lo_filter_node) = lo_list_request->create_filter_factory( )->create_by_range(
                  iv_property_path     = 'BUSINESSPARTNER'
                  it_range             = lt_employeeid_range ).

                lo_list_request->set_filter( lo_filter_node ).
                lo_list_request->set_select_properties( it_select_property = VALUE #( ( `NETAMOUNTINDISPLAYCURRENCY` ) ( `DISPLAYCURRENCY` ) ) ).

                DATA(lo_read_response_list) = lo_list_request->execute( ).

                lo_read_response_list->get_business_data(
                  IMPORTING
                    et_business_data = lt_salesorderitemcubres ).

                READ TABLE lt_salesorderitemcubres INTO ls_salesorderitemcubres INDEX 1.

                ls_bonus_calculation-actualrevenueamount_v = ls_salesorderitemcubres-netamountindisplaycurrency.
                ls_bonus_calculation-actualrevenueamount_c = ls_salesorderitemcubres-displaycurrency.
                ls_bonus_calculation-bonusamount_c = ls_bonus_calculation-targetamount_c.

                "calculate bonus
                ls_bonus_calculation-bonusamount_v = me->execute_calculation( VALUE #( actualrevenueamount = ls_bonus_calculation-actualrevenueamount_v
                                                                                       targetamount = ls_bonus_calculation-targetamount_v
                                                                                       bonuspercentage = ls_bonus_calculation-bonuspercentage_v
                                                                                     ) ).

*              IF ( ls_bonus_calculation-actualrevenueamount_v > ls_bonus_calculation-targetamount_v ).
*                ls_bonus_calculation-bonusamount_v = ( ls_bonus_calculation-actualrevenueamount_v - ls_bonus_calculation-targetamount_v ) * ls_bonus_calculation-bonuspercentage_v / 100.
*                ls_bonus_calculation-bonusamount_c = ls_bonus_calculation-targetamount_c.
*              ELSE.
*                ls_bonus_calculation-bonusamount_v = 0.
*                ls_bonus_calculation-bonusamount_c = ls_bonus_calculation-targetamount_c.
*              ENDIF.

              CATCH cx_root INTO lx_exception.
                APPEND CORRESPONDING ts_reported_bonuscalc( ls_bonus_calculation MAPPING %element = %control ) TO ct_reported.
                RAISE EXCEPTION TYPE zcx_bonus_calculation_SA MESSAGE e011(zcm_bonus_cal_sa) WITH lx_exception->get_text( )
                      EXPORTING severity  = 'E'.
            ENDTRY.

            ls_bonus_calculation-%control-actualrevenueamount_v = cl_abap_behavior_handler=>flag_changed.
            ls_bonus_calculation-%control-actualrevenueamount_c = cl_abap_behavior_handler=>flag_changed.
            ls_bonus_calculation-%control-bonusamount_v = cl_abap_behavior_handler=>flag_changed.
            ls_bonus_calculation-%control-bonusamount_c = cl_abap_behavior_handler=>flag_changed.

            INSERT ls_bonus_calculation INTO TABLE mt_update.

*           Update SerchTerm1 & serchterm2 of Business Partner master data with the bonus amount
            DATA lo_bupa_proxy TYPE REF TO /iwbep/if_cp_client_proxy.
            TRY.
                IF lo_bupa_proxy IS INITIAL.
                  lo_bupa_proxy = me->create_bupa_proxy_event(  ).
                ENDIF.

                DATA(ls_bupa) = VALUE za_businesspartner( businesspartner = ls_bonus_calculation-employeeid searchterm1 = CONV string( ls_bonus_calculation-bonusamount_v ) searchterm2 = ls_bonus_calculation-bonusamount_c  ).
                DATA(lo_update_resource) = lo_bupa_proxy->create_resource_for_entity_set( 'A_BUSINESSPARTNER' ).
                DATA(lo_update_request) = lo_update_resource->navigate_with_key( ls_bupa )->create_request_for_update( /iwbep/if_cp_request_update=>gcs_update_semantic-patch ).

                lo_update_request->set_business_data( is_business_data = ls_bupa
                                                      it_provided_property = VALUE #( ( |SEARCHTERM1| ) ( |SEARCHTERM2| ) ) ).
                lo_update_request->execute(  ).

              CATCH cx_root INTO lx_exception.
                APPEND CORRESPONDING ts_reported_bonuscalc( ls_bonus_calculation MAPPING %element = %control ) TO ct_reported.
                RAISE EXCEPTION TYPE zcx_bonus_calculation_SA MESSAGE e011(zcm_bonus_cal_sa) WITH lx_exception->get_text( )
                      EXPORTING severity  = 'E'.
            ENDTRY.

            DATA(ls_reported) = CORRESPONDING ts_reported_bonuscalc( ls_bonus_calculation MAPPING %element = %control ).
            ls_reported-%msg = me->new_message_with_text(
              EXPORTING
                severity = cl_abap_behv=>ms-success
                text     = 'Bonus Calculated!' ).

            APPEND ls_reported TO ct_reported.
          ENDIF.
        ENDLOOP.
      ENDMETHOD.

      METHOD create_s4_client_proxy_event.
        DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
            i_name                  = 'S4HC'
            i_authn_mode            = if_a4c_cp_service=>service_specific
        ).

        cl_web_http_client_manager=>create_by_http_destination(
            EXPORTING
              i_destination = lo_destination
            RECEIVING
              r_client = DATA(lo_http_client) ).

        lo_http_client->get_http_request( )->set_uri_path( '/sap/opu/odata/sap/YY1_SALESORDERITEMCUBE_SA_CDS' ).

        ro_client_proxy  = cl_web_odata_client_factory=>create_v2_remote_proxy(
           iv_service_definition_name = 'Z_SALESORDERITEMCUBE_SA'
           io_http_client           = lo_http_client
           iv_relative_service_root = '/sap/opu/odata/sap/YY1_SALESORDERITEMCUBE_SA_CDS' ).


      ENDMETHOD.

      METHOD create_bupa_proxy_event.
        DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
              i_name                  = 'S4HC'
              i_authn_mode            = if_a4c_cp_service=>service_specific
        ).

        cl_web_http_client_manager=>create_by_http_destination(
            EXPORTING
              i_destination = lo_destination
            RECEIVING
              r_client = DATA(lo_http_client) ).

        lo_http_client->get_http_request( )->set_uri_path( '/sap/opu/odata/sap/API_BUSINESS_PARTNER' ).

        ro_client_proxy  = cl_web_odata_client_factory=>create_v2_remote_proxy(
           iv_service_definition_name = 'Z_BUSINESSPARTNER_SA'
           io_http_client           = lo_http_client
           iv_relative_service_root = '/sap/opu/odata/sap/API_BUSINESS_PARTNER' ).

      ENDMETHOD.

      METHOD create_client.
        DATA(dest) = cl_http_destination_provider=>create_by_url( url ).
        result = cl_web_http_client_manager=>create_by_http_destination( dest ).
      ENDMETHOD.

      METHOD execute_calculation.
        " Convert input data to JSON
        DATA(json_data) = xco_cp_json=>data->from_abap( bonusinfo )->apply(
          VALUE #( ( xco_cp_json=>transformation->underscore_to_camel_case ) ) )->to_string(  ).

        " Send JSON of data to server and return the response
        DATA(url) = |{ base_url }|.
        DATA(client) = create_client( url ).
        DATA(req) = client->get_http_request(  ).
        req->set_text( json_data ).
        req->set_header_field( i_name = content_type i_value = json_content ).
        DATA(response) = client->execute( if_web_http_client=>post )->get_text(  ) .
        client->close(  ).

        " Convert JSON to result structure
        DATA bonusresult TYPE bonusresult.
        xco_cp_json=>data->from_string( response )->apply(
          VALUE #( ( xco_cp_json=>transformation->camel_case_to_underscore ) )
          )->write_to( REF #( bonusresult ) ).

        result = bonusresult-bonusamount.
      ENDMETHOD.

    ENDCLASS.

    CLASS lcl_saver DEFINITION INHERITING FROM cl_abap_behavior_saver.
      PROTECTED SECTION.
        METHODS save              REDEFINITION.
    ENDCLASS.

    CLASS lcl_saver IMPLEMENTATION.
      METHOD save.
        lcl_handler=>save( ).
      ENDMETHOD.
    ENDCLASS.
