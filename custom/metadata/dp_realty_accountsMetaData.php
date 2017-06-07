<?php
// created: 2017-05-29 06:57:59
$dictionary["dp_realty_accounts"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'dp_realty_accounts' => 
    array (
      'lhs_module' => 'Accounts',
      'lhs_table' => 'accounts',
      'lhs_key' => 'id',
      'rhs_module' => 'dp_realty',
      'rhs_table' => 'dp_realty',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'dp_realty_accounts_c',
      'join_key_lhs' => 'dp_realty_accountsaccounts_ida',
      'join_key_rhs' => 'dp_realty_accountsdp_realty_idb',
    ),
  ),
  'table' => 'dp_realty_accounts_c',
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
      'name' => 'dp_realty_accountsaccounts_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'dp_realty_accountsdp_realty_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'dp_realty_accountsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'dp_realty_accounts_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'dp_realty_accountsaccounts_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'dp_realty_accounts_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'dp_realty_accountsdp_realty_idb',
      ),
    ),
  ),
);