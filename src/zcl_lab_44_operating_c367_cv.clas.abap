CLASS zcl_lab_44_operating_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_05_browser_c367_cv.

    METHODS mouse_movement.

    DATA: log TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_44_operating_c367_cv IMPLEMENTATION.

  METHOD mouse_movement.
    me->log = |Evento: { cl_abap_context_info=>get_system_time( ) }|.
    RAISE EVENT zif_lab_05_browser_c367_cv~close_window.
  ENDMETHOD.

ENDCLASS.
