CLASS zcl_lab_42_screen_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    "Definir
    EVENTS touch_screen  EXPORTING VALUE(ev_horizontal) TYPE i
                                   VALUE(ev_vertical)   TYPE i.

    METHODS: constructor IMPORTING iv_screen_type TYPE string.

    METHODS: element_selected.

    DATA: screen_type TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_lab_42_screen_c367_cv IMPLEMENTATION.
  METHOD element_selected.

    RAISE EVENT touch_screen EXPORTING ev_horizontal = 10
                                       ev_vertical   = 20.

  ENDMETHOD.

  METHOD constructor.
    me->screen_type = iv_screen_type.
  ENDMETHOD.

ENDCLASS.
