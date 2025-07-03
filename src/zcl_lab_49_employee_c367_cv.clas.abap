CLASS zcl_lab_49_employee_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: log TYPE string.

    METHODS: on_payroll_paid FOR EVENT payroll_paid OF zcl_lab_48_adm_dep_c367_cv
      IMPORTING sender,
      constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_49_employee_c367_cv IMPLEMENTATION.
  METHOD on_payroll_paid.
    me->log = |Pago-empleado { sender->emp_id }|.
  ENDMETHOD.

  METHOD constructor.
    SET HANDLER me->on_payroll_paid FOR ALL INSTANCES.
  ENDMETHOD.

ENDCLASS.
