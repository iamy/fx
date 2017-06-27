<?php
$popupMeta = array (
    'moduleMain' => 'dp_realty',
    'varName' => 'dp_realty',
    'orderBy' => 'dp_realty.name',
    'whereClauses' => array (
  'name' => 'dp_realty.name',
  'status_nedv' => 'dp_realty.status_nedv',
  'target_nedv' => 'dp_realty.target_nedv',
  'assigned_user_id' => 'dp_realty.assigned_user_id',
),
    'searchInputs' => array (
  1 => 'name',
  4 => 'status_nedv',
  5 => 'target_nedv',
  6 => 'assigned_user_id',
),
    'searchdefs' => array (
  'name' => 
  array (
    'name' => 'name',
    'width' => '10%',
  ),
  'status_nedv' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_STATUS_NEDV',
    'width' => '10%',
    'name' => 'status_nedv',
  ),
  'target_nedv' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_TARGET_NEDV',
    'width' => '10%',
    'name' => 'target_nedv',
  ),
  'assigned_user_id' => 
  array (
    'name' => 'assigned_user_id',
    'label' => 'LBL_ASSIGNED_TO',
    'type' => 'enum',
    'function' => 
    array (
      'name' => 'get_user_array',
      'params' => 
      array (
        0 => false,
      ),
    ),
    'width' => '10%',
  ),
),
);
