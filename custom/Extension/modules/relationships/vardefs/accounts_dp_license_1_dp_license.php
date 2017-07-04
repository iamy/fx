<?php
// created: 2017-07-04 14:13:49
$dictionary["dp_license"]["fields"]["accounts_dp_license_1"] = array (
  'name' => 'accounts_dp_license_1',
  'type' => 'link',
  'relationship' => 'accounts_dp_license_1',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_ACCOUNTS_DP_LICENSE_1_FROM_ACCOUNTS_TITLE',
  'id_name' => 'accounts_dp_license_1accounts_ida',
);
$dictionary["dp_license"]["fields"]["accounts_dp_license_1_name"] = array (
  'name' => 'accounts_dp_license_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_DP_LICENSE_1_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'accounts_dp_license_1accounts_ida',
  'link' => 'accounts_dp_license_1',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["dp_license"]["fields"]["accounts_dp_license_1accounts_ida"] = array (
  'name' => 'accounts_dp_license_1accounts_ida',
  'type' => 'link',
  'relationship' => 'accounts_dp_license_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_ACCOUNTS_DP_LICENSE_1_FROM_DP_LICENSE_TITLE',
);
