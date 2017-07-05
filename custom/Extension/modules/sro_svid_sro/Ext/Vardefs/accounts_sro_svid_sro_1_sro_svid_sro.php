<?php
// created: 2017-07-04 14:14:08
$dictionary["sro_svid_sro"]["fields"]["accounts_sro_svid_sro_1"] = array (
  'name' => 'accounts_sro_svid_sro_1',
  'type' => 'link',
  'relationship' => 'accounts_sro_svid_sro_1',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_ACCOUNTS_SRO_SVID_SRO_1_FROM_ACCOUNTS_TITLE',
  'id_name' => 'accounts_sro_svid_sro_1accounts_ida',
);
$dictionary["sro_svid_sro"]["fields"]["accounts_sro_svid_sro_1_name"] = array (
  'name' => 'accounts_sro_svid_sro_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_SRO_SVID_SRO_1_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'accounts_sro_svid_sro_1accounts_ida',
  'link' => 'accounts_sro_svid_sro_1',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["sro_svid_sro"]["fields"]["accounts_sro_svid_sro_1accounts_ida"] = array (
  'name' => 'accounts_sro_svid_sro_1accounts_ida',
  'type' => 'link',
  'relationship' => 'accounts_sro_svid_sro_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_ACCOUNTS_SRO_SVID_SRO_1_FROM_SRO_SVID_SRO_TITLE',
);
