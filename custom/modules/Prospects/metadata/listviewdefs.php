<?php
$listViewDefs ['Prospects'] = 
array (
  'NUMIZV_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_NUMIZV',
    'width' => '10%',
  ),
  'ACCOUNT_NAME' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_ACCOUNT_NAME',
    'width' => '10%',
    'default' => true,
  ),
  'SUBJ_TENDER_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_SUBJ_TENDER',
    'width' => '10%',
  ),
  'OBESP_C' => 
  array (
    'type' => 'currency',
    'default' => true,
    'label' => 'LBL_OBESP',
    'currency_format' => true,
    'width' => '10%',
  ),
  'EMAIL1' => 
  array (
    'width' => '20%',
    'label' => 'LBL_LIST_EMAIL_ADDRESS',
    'sortable' => false,
    'link' => false,
    'default' => true,
  ),
  'PHONE_WORK' => 
  array (
    'width' => '10%',
    'label' => 'LBL_LIST_PHONE',
    'link' => false,
    'default' => true,
  ),
  'DATE_ENTERED' => 
  array (
    'type' => 'datetime',
    'label' => 'LBL_DATE_ENTERED',
    'width' => '10%',
    'default' => true,
  ),
);
?>
