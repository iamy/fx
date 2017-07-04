<?php
 // created: 2017-07-04 14:13:49
$layout_defs["Accounts"]["subpanel_setup"]['accounts_dp_license_1'] = array (
  'order' => 100,
  'module' => 'dp_license',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_ACCOUNTS_DP_LICENSE_1_FROM_DP_LICENSE_TITLE',
  'get_subpanel_data' => 'accounts_dp_license_1',
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
