CLASS zcl_lab_48_adm_dep_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    EVENTS payroll_paid.

    METHODS: constructor IMPORTING VALUE(iv_emp_id) TYPE string,
             notify_employee.

    DATA: emp_id TYPE string,
          log    TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_48_adm_dep_c367_cv IMPLEMENTATION.
  METHOD constructor.
    me->emp_id = iv_emp_id.
  ENDMETHOD.

  METHOD notify_employee.
    me->log = |Evento-empleado: { me->emp_id }|.
    RAISE EVENT payroll_paid.
  ENDMETHOD.
ENDCLASS.
