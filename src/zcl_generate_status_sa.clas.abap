CLASS zcl_generate_status_sa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_generate_status_sa IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    " delete existing entries in the database table
    DELETE FROM zrel_stat_sa.

    " insert statuses
    DATA: itab TYPE STANDARD TABLE OF zrel_stat_sa WITH KEY code, wa LIKE LINE OF itab.
          " Status 'Pending'
          wa-code = 'P'.
          wa-description = 'Pending'.
          INSERT INTO zrel_stat_sa VALUES @wa.

          " Status 'In process'
          wa-code = 'I'.
          wa-description = 'In process'.
          INSERT INTO zrel_stat_sa VALUES @wa.

          " Status 'Released'
          wa-code = 'R'.
          wa-description = 'Released'.
          INSERT INTO zrel_stat_sa VALUES @wa.

    COMMIT WORK.

    out->write( 'Status data inserted.').

  ENDMETHOD.

ENDCLASS.
