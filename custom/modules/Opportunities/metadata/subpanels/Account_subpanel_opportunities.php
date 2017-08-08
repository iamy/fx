<?php
// created: 2017-07-06 15:44:47
$subpanel_layout['list_fields'] = array (
  'name' => 
  array (
    'name' => 'name',
    'vname' => 'LBL_LIST_OPPORTUNITY_NAME',
    'widget_class' => 'SubPanelDetailViewLink',
    'width' => '40%',
    'default' => true,
  ),
  'lot_c' => 
  array (
    'type' => 'int',
    'default' => true,
    'vname' => 'LBL_LOT',
    'width' => '10%',
  ),
  'subj_tender_c' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'vname' => 'LBL_SUBJ_TENDER',
    'width' => '10%',
  ),
  'email_win_c' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'vname' => 'LBL_EMAIL_WIN',
    'width' => '10%',
  ),
  'sales_stage' => 
  array (
    'name' => 'sales_stage',
    'vname' => 'LBL_LIST_SALES_STAGE',
    'width' => '15%',
    'default' => true,
  ),
  'nmc_c' => 
  array (
    'type' => 'currency',
    'default' => true,
    'vname' => 'LBL_NMC',
    'currency_format' => true,
    'width' => '10%',
  ),
  'amount' => 
  array (
    'type' => 'currency',
    'vname' => 'LBL_AMOUNT',
    'currency_format' => true,
    'width' => '10%',
    'default' => true,
  ),
  'assigned_user_name' => 
  array (
    'name' => 'assigned_user_name',
    'vname' => 'LBL_LIST_ASSIGNED_TO_NAME',
    'widget_class' => 'SubPanelDetailViewLink',
    'target_record_key' => 'assigned_user_id',
    'target_module' => 'Employees',
    'width' => '10%',
    'default' => true,
  ),
  'edit_button' => 
  array (
    'vname' => 'LBL_EDIT_BUTTON',
    'widget_class' => 'SubPanelEditButton',
    'module' => 'Opportunities',
    'width' => '4%',
    'default' => true,
  ),
  'currency_id' => 
  array (
    'usage' => 'query_only',
  ),
);