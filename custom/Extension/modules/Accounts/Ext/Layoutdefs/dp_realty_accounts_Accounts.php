<?php
 // created: 2017-05-29 06:57:59
$layout_defs["Accounts"]["subpanel_setup"]['dp_realty_accounts'] = array (
  'order' => 100,
  'module' => 'dp_realty',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_DP_REALTY_ACCOUNTS_FROM_DP_REALTY_TITLE',
  'get_subpanel_data' => 'dp_realty_accounts',
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
