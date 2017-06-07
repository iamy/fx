<?php
// created: 2017-05-31 17:42:27
$dictionary["Contact"]["fields"]["accounts_contacts_2"] = array (
  'name' => 'accounts_contacts_2',
  'type' => 'link',
  'relationship' => 'accounts_contacts_2',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_ACCOUNTS_CONTACTS_2_FROM_ACCOUNTS_TITLE',
  'id_name' => 'accounts_contacts_2accounts_ida',
);
$dictionary["Contact"]["fields"]["accounts_contacts_2_name"] = array (
  'name' => 'accounts_contacts_2_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_CONTACTS_2_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'accounts_contacts_2accounts_ida',
  'link' => 'accounts_contacts_2',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["Contact"]["fields"]["accounts_contacts_2accounts_ida"] = array (
  'name' => 'accounts_contacts_2accounts_ida',
  'type' => 'link',
  'relationship' => 'accounts_contacts_2',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_ACCOUNTS_CONTACTS_2_FROM_ACCOUNTS_TITLE',
);
