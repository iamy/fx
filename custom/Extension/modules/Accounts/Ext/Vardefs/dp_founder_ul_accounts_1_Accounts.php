<?php
// created: 2017-05-29 07:13:45
$dictionary["Account"]["fields"]["dp_founder_ul_accounts_1"] = array (
  'name' => 'dp_founder_ul_accounts_1',
  'type' => 'link',
  'relationship' => 'dp_founder_ul_accounts_1',
  'source' => 'non-db',
  'module' => 'dp_founder_ul',
  'bean_name' => 'dp_founder_ul',
  'vname' => 'LBL_DP_FOUNDER_UL_ACCOUNTS_1_FROM_DP_FOUNDER_UL_TITLE',
  'id_name' => 'dp_founder_ul_accounts_1dp_founder_ul_ida',
);
$dictionary["Account"]["fields"]["dp_founder_ul_accounts_1_name"] = array (
  'name' => 'dp_founder_ul_accounts_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_DP_FOUNDER_UL_ACCOUNTS_1_FROM_DP_FOUNDER_UL_TITLE',
  'save' => true,
  'id_name' => 'dp_founder_ul_accounts_1dp_founder_ul_ida',
  'link' => 'dp_founder_ul_accounts_1',
  'table' => 'dp_founder_ul',
  'module' => 'dp_founder_ul',
  'rname' => 'name',
);
$dictionary["Account"]["fields"]["dp_founder_ul_accounts_1dp_founder_ul_ida"] = array (
  'name' => 'dp_founder_ul_accounts_1dp_founder_ul_ida',
  'type' => 'link',
  'relationship' => 'dp_founder_ul_accounts_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_DP_FOUNDER_UL_ACCOUNTS_1_FROM_DP_FOUNDER_UL_TITLE',
);
