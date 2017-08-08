<?php
// created: 2017-07-13 14:22:35
$subpanel_layout['list_fields'] = array (
  'name' => 
  array (
    'vname' => 'LBL_NAME',
    'widget_class' => 'SubPanelDetailViewLink',
    'width' => '45%',
    'default' => true,
  ),
  'num_license_c' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'vname' => 'LBL_NUM_LICENSE',
    'width' => '10%',
  ),
  'srok_work_license_c' => 
  array (
    'type' => 'date',
    'default' => true,
    'vname' => 'LBL_SROK_WORK_LICENSE',
    'width' => '10%',
  ),
  'description' => 
  array (
    'type' => 'text',
    'vname' => 'LBL_DESCRIPTION',
    'sortable' => false,
    'width' => '10%',
    'default' => true,
  ),
  'date_modified' => 
  array (
    'vname' => 'LBL_DATE_MODIFIED',
    'width' => '45%',
    'default' => true,
  ),
  'edit_button' => 
  array (
    'vname' => 'LBL_EDIT_BUTTON',
    'widget_class' => 'SubPanelEditButton',
    'module' => 'dp_license',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'dp_license',
    'width' => '5%',
    'default' => true,
  ),
);