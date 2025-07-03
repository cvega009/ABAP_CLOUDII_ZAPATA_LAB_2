CLASS zcl_lab_43_navigation_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: log TYPE string.

    METHODS on_TOUCH_SCREEN  FOR EVENT  touch_screen OF zcl_lab_42_screen_c367_cv
      IMPORTING ev_horizontal
                ev_vertical
                sender.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_43_navigation_c367_cv IMPLEMENTATION.
  METHOD on_touch_screen.
    me->log = |Event raise...Screen type { sender->screen_type }, Posicion Horizontal { ev_horizontal }, posición vertical { ev_vertical }|.
  ENDMETHOD.

ENDCLASS.
