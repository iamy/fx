<?php
// created: 2017-07-13 13:07:02
$subpanel_layout['list_fields'] = array (
  'name' => 
  array (
    'vname' => 'LBL_NAME',
    'widget_class' => 'SubPanelDetailViewLink',
    'width' => '45%',
    'default' => true,
  ),
  'ul_share_size_c' => 
  array (
    'type' => 'decimal',
    'default' => true,
    'vname' => 'LBL_UL_SHARE_SIZE',
    'width' => '10%',
  ),
  'ul_size_perc_c' => 
  array (
    'type' => 'decimal',
    'default' => true,
    'vname' => 'LBL_UL_SIZE_PERC',
    'width' => '10%',
  ),
  'link_kontr_c' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'vname' => 'LBL_LINK_KONTR',
    'id' => 'ACCOUNT_ID_C',
    'link' => true,
    'width' => '10%',
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'Accounts',
    'target_record_key' => 'account_id_c',
  ),
  'edit_button' => 
  array (
    'vname' => 'LBL_EDIT_BUTTON',
    'widget_class' => 'SubPanelEditButton',
    'module' => 'dp_founder_ul',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'dp_founder_ul',
    'width' => '5%',
    'default' => true,
  ),
);