<?php
// created: 2017-05-29 07:13:45
$dictionary["dp_founder_ul_accounts_1"] = array (
  'true_relationship_type' => 'one-to-one',
  'from_studio' => true,
  'relationships' => 
  array (
    'dp_founder_ul_accounts_1' => 
    array (
      'lhs_module' => 'dp_founder_ul',
      'lhs_table' => 'dp_founder_ul',
      'lhs_key' => 'id',
      'rhs_module' => 'Accounts',
      'rhs_table' => 'accounts',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'dp_founder_ul_accounts_1_c',
      'join_key_lhs' => 'dp_founder_ul_accounts_1dp_founder_ul_ida',
      'join_key_rhs' => 'dp_founder_ul_accounts_1accounts_idb',
    ),
  ),
  'table' => 'dp_founder_ul_accounts_1_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'dp_founder_ul_accounts_1dp_founder_ul_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'dp_founder_ul_accounts_1accounts_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'dp_founder_ul_accounts_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'dp_founder_ul_accounts_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'dp_founder_ul_accounts_1dp_founder_ul_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'dp_founder_ul_accounts_1_idb2',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'dp_founder_ul_accounts_1accounts_idb',
      ),
    ),
  ),
);