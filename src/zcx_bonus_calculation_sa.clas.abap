CLASS zcx_bonus_calculation_sa DEFINITION
      PUBLIC
      INHERITING FROM cx_dynamic_check
      FINAL
      CREATE PUBLIC .

      PUBLIC SECTION.
       DATA severity TYPE c.
       INTERFACES if_t100_dyn_msg .
       INTERFACES if_t100_message .

       METHODS constructor
         IMPORTING
           !textid   LIKE if_t100_message=>t100key OPTIONAL
           !previous LIKE previous OPTIONAL
           !severity TYPE c OPTIONAL.

       CLASS-METHODS create_from_system_message RETURNING VALUE(rcx) TYPE REF TO zcx_bonus_calculation_sa.

      PROTECTED SECTION.
      PRIVATE SECTION.
ENDCLASS.


CLASS zcx_bonus_calculation_sa IMPLEMENTATION.


      METHOD constructor ##ADT_SUPPRESS_GENERATION.
       CALL METHOD super->constructor
         EXPORTING
           previous = previous.

       me->severity = severity.
       CLEAR me->textid.

       IF textid IS INITIAL.
         if_t100_message~t100key = if_t100_message=>default_textid.
       ELSE.
         if_t100_message~t100key = textid.
       ENDIF.
      ENDMETHOD.


      METHOD create_from_system_message.
       TRY.
           RAISE EXCEPTION TYPE ZCX_BONUS_CALCULATION_SA USING MESSAGE.
         CATCH ZCX_BONUS_CALCULATION_SA INTO rcx ##no_handler.
       ENDTRY.
      ENDMETHOD.
ENDCLASS.
