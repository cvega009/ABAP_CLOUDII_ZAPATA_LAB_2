CLASS zcl_lab_45_chrome_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: log TYPE string.
    METHODS on_close_window FOR EVENT close_window OF zif_lab_05_browser_c367_cv.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_45_chrome_c367_cv IMPLEMENTATION.
  METHOD on_close_window.
    me->log = |Cierre: { cl_abap_context_info=>get_system_time( ) }|.
  ENDMETHOD.
ENDCLASS.
