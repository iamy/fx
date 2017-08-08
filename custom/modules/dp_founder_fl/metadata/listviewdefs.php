<?php
$module_name = 'dp_founder_fl';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'FL_SHARE_SIZE_CUR_C' => 
  array (
    'type' => 'decimal',
    'default' => true,
    'label' => 'LBL_FL_SHARE_SIZE_CUR',
    'width' => '10%',
  ),
  'FL_SIZE_PERC_C' => 
  array (
    'type' => 'decimal',
    'default' => true,
    'label' => 'LBL_FL_SIZE_PERC',
    'width' => '10%',
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => true,
  ),
);
?>
