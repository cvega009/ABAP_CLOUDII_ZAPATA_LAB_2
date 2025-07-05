CLASS zcl_lab_51_wz_friend_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_helper.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_51_wz_friend_c367_cv IMPLEMENTATION.
  METHOD get_helper.
    DATA(mo_helper) = NEW zcl_lab_50_work_zone_c367_cv(  ).

    mo_helper->mo_helper->get_work_zone(  ).

  ENDMETHOD.

ENDCLASS.
