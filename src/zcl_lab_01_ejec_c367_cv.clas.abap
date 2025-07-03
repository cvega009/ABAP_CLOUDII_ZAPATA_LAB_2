CLASS zcl_lab_01_ejec_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_01_ejec_c367_cv IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
**----------------------------------------------------------------
*8. ALL INSTANCE
    DATA(go_adm_001) = NEW zcl_lab_48_adm_dep_c367_cv( '1000' ).
    DATA(go_adm_002) = NEW zcl_lab_48_adm_dep_c367_cv( '1234' ).
    DATA(go_adm_003) = NEW zcl_lab_48_adm_dep_c367_cv( '2344' ).

    DATA(go_employee) = NEW zcl_lab_49_employee_c367_cv(  ).

    go_adm_001->notify_employee(  ).
    out->write( go_adm_001->log ).
    out->write( go_employee->log ).

    go_adm_002->notify_employee(  ).
    out->write( go_adm_002->log ).
    out->write( go_employee->log ).

    go_adm_003->notify_employee(  ).
    out->write( go_adm_003->log ).
    out->write( go_employee->log ).


**----------------------------------------------------------------
**7. Eventos estáticos
*    SET HANDLER zcl_lab_47_customer_se_c367_cv=>on_new_call.
*
*    zcl_lab_46_mobile_oper_c367_cv=>assign_call(  ).
*    out->write( zcl_lab_47_customer_se_c367_cv=>log ).
**----------------------------------------------------------------
**5. Definir eventos en las interfaces
*    DATA(go_operating) = NEW  zcl_lab_44_operating_c367_cv(  ).
*    DATA(go_chrome)   = NEW zcl_lab_45_chrome_c367_cv(  ).
*
*    SET HANDLER go_chrome->on_close_window FOR go_operating ACTIVATION abap_false.
*
*    DO 2 TIMES.
*      WAIT UP TO 1 SECONDS.
*      go_operating->mouse_movement( ).
*      out->write( go_operating->log ).
*      out->write( go_chrome->log ).
*    ENDDO.

**----------------------------------------------------------------
*    "3. Establecer referencia manejadora – EVENT HANDLER
*    DATA(go_screen) = NEW zcl_lab_42_screen_c367_cv( 'Cristal' ).
*
*    DATA(go_nav) = NEW zcl_lab_43_navigation_c367_cv( ).
*
*    SET HANDLER go_nav->on_touch_screen FOR go_screen.
*
*    "Prueba
*    go_screen->element_selected(  ).
*    out->write( go_nav->log ).

  ENDMETHOD.
ENDCLASS.
