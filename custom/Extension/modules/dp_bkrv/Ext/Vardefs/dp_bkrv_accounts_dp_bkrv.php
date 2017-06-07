<?php
// created: 2017-05-29 06:57:59
$dictionary["dp_bkrv"]["fields"]["dp_bkrv_accounts"] = array (
  'name' => 'dp_bkrv_accounts',
  'type' => 'link',
  'relationship' => 'dp_bkrv_accounts',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_DP_BKRV_ACCOUNTS_FROM_ACCOUNTS_TITLE',
  'id_name' => 'dp_bkrv_accountsaccounts_ida',
);
$dictionary["dp_bkrv"]["fields"]["dp_bkrv_accounts_name"] = array (
  'name' => 'dp_bkrv_accounts_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_DP_BKRV_ACCOUNTS_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'dp_bkrv_accountsaccounts_ida',
  'link' => 'dp_bkrv_accounts',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["dp_bkrv"]["fields"]["dp_bkrv_accountsaccounts_ida"] = array (
  'name' => 'dp_bkrv_accountsaccounts_ida',
  'type' => 'link',
  'relationship' => 'dp_bkrv_accounts',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_DP_BKRV_ACCOUNTS_FROM_DP_BKRV_TITLE',
);
