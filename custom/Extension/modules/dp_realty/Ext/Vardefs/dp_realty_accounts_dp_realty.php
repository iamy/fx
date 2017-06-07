<?php
// created: 2017-05-29 06:57:59
$dictionary["dp_realty"]["fields"]["dp_realty_accounts"] = array (
  'name' => 'dp_realty_accounts',
  'type' => 'link',
  'relationship' => 'dp_realty_accounts',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_DP_REALTY_ACCOUNTS_FROM_ACCOUNTS_TITLE',
  'id_name' => 'dp_realty_accountsaccounts_ida',
);
$dictionary["dp_realty"]["fields"]["dp_realty_accounts_name"] = array (
  'name' => 'dp_realty_accounts_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_DP_REALTY_ACCOUNTS_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'dp_realty_accountsaccounts_ida',
  'link' => 'dp_realty_accounts',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["dp_realty"]["fields"]["dp_realty_accountsaccounts_ida"] = array (
  'name' => 'dp_realty_accountsaccounts_ida',
  'type' => 'link',
  'relationship' => 'dp_realty_accounts',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_DP_REALTY_ACCOUNTS_FROM_DP_REALTY_TITLE',
);
