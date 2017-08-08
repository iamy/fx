<?php
$module_name = 'dp_license';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'SROK_WORK_LICENSE_C' => 
  array (
    'type' => 'date',
    'default' => true,
    'label' => 'LBL_SROK_WORK_LICENSE',
    'width' => '10%',
  ),
  'ACCOUNTS_DP_LICENSE_1_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_ACCOUNTS_DP_LICENSE_1_FROM_ACCOUNTS_TITLE',
    'id' => 'ACCOUNTS_DP_LICENSE_1ACCOUNTS_IDA',
    'width' => '10%',
    'default' => true,
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
