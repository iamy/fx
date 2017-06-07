<?php
 // created: 2017-05-29 06:57:59
$layout_defs["Accounts"]["subpanel_setup"]['dp_bkrv_accounts'] = array (
  'order' => 100,
  'module' => 'dp_bkrv',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_DP_BKRV_ACCOUNTS_FROM_DP_BKRV_TITLE',
  'get_subpanel_data' => 'dp_bkrv_accounts',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
