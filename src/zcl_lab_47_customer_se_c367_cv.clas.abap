CLASS zcl_lab_47_customer_se_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA: log TYPE string.

    CLASS-METHODS on_new_call FOR EVENT new_call OF zcl_lab_46_mobile_oper_c367_cv
      IMPORTING ev_phone_number.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_47_customer_se_c367_cv IMPLEMENTATION.
  METHOD on_new_call.
    log = ev_phone_number.
  ENDMETHOD.

ENDCLASS.
