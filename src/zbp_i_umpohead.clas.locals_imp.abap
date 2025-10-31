CLASS lhc_head DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR head RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE head.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE head.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE head.

    METHODS read FOR READ
      IMPORTING keys FOR READ head RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK head.

    METHODS rba_item FOR READ
      IMPORTING keys_rba FOR READ head\_item FULL result_requested RESULT result LINK association_links.

    METHODS cba_item FOR MODIFY
      IMPORTING entities_cba FOR CREATE head\_item.

ENDCLASS.

CLASS lhc_head IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_item.
  ENDMETHOD.

  METHOD cba_item.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_item DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE item.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE item.

    METHODS read FOR READ
      IMPORTING keys FOR READ item RESULT result.

    METHODS rba_head FOR READ
      IMPORTING keys_rba FOR READ item\_head FULL result_requested RESULT result LINK association_links.

    METHODS rba_sche FOR READ
      IMPORTING keys_rba FOR READ item\_sche FULL result_requested RESULT result LINK association_links.

    METHODS cba_sche FOR MODIFY
      IMPORTING entities_cba FOR CREATE item\_sche.

ENDCLASS.

CLASS lhc_item IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_head.
  ENDMETHOD.

  METHOD rba_sche.
  ENDMETHOD.

  METHOD cba_sche.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_sche DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE sche.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE sche.

    METHODS read FOR READ
      IMPORTING keys FOR READ sche RESULT result.

    METHODS rba_head FOR READ
      IMPORTING keys_rba FOR READ sche\_head FULL result_requested RESULT result LINK association_links.

    METHODS rba_item FOR READ
      IMPORTING keys_rba FOR READ sche\_item FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_sche IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_head.
  ENDMETHOD.

  METHOD rba_item.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_zi_umpohead DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS adjust_numbers REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_zi_umpohead IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD adjust_numbers.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
