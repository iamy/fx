<?php
$module_name = 'dp_realty';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'STATUS_NEDV' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_STATUS_NEDV',
    'width' => '10%',
    'default' => true,
  ),
  'DP_REALTY_ACCOUNTS_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_DP_REALTY_ACCOUNTS_FROM_ACCOUNTS_TITLE',
    'id' => 'DP_REALTY_ACCOUNTSACCOUNTS_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'TARGET_NEDV' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_TARGET_NEDV',
    'width' => '10%',
    'default' => true,
  ),
  'AREA_NEDV' => 
  array (
    'type' => 'int',
    'label' => 'LBL_AREA_NEDV',
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
