CLASS zcl_lab_50_work_zone_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
   GLOBAL FRIENDS zcl_lab_51_wz_friend_c367_cv.

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: s_work_zone TYPE ty_work_zone,
          mo_helper   TYPE REF TO lcl_helper.

    METHODS: set_work_zone.

ENDCLASS.

CLASS zcl_lab_50_work_zone_c367_cv IMPLEMENTATION.
  METHOD set_work_zone.
    me->s_work_zone-dashboard = 'Dashboard'.
    me->s_work_zone-launchpad = 'Launchpad'.
    me->s_work_zone-spaces    = 'Spaces'.
  ENDMETHOD.

ENDCLASS.
