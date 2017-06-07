<?php
// created: 2017-05-29 07:13:45
$dictionary["dp_founder_ul"]["fields"]["dp_founder_ul_accounts_1"] = array (
  'name' => 'dp_founder_ul_accounts_1',
  'type' => 'link',
  'relationship' => 'dp_founder_ul_accounts_1',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_DP_FOUNDER_UL_ACCOUNTS_1_FROM_ACCOUNTS_TITLE',
  'id_name' => 'dp_founder_ul_accounts_1accounts_idb',
);
$dictionary["dp_founder_ul"]["fields"]["dp_founder_ul_accounts_1_name"] = array (
  'name' => 'dp_founder_ul_accounts_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_DP_FOUNDER_UL_ACCOUNTS_1_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'dp_founder_ul_accounts_1accounts_idb',
  'link' => 'dp_founder_ul_accounts_1',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["dp_founder_ul"]["fields"]["dp_founder_ul_accounts_1accounts_idb"] = array (
  'name' => 'dp_founder_ul_accounts_1accounts_idb',
  'type' => 'link',
  'relationship' => 'dp_founder_ul_accounts_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_DP_FOUNDER_UL_ACCOUNTS_1_FROM_ACCOUNTS_TITLE',
);
