<?php
// created: 2017-05-29 07:12:04
$dictionary["dp_founder_fl"]["fields"]["dp_founder_fl_contacts_1"] = array (
  'name' => 'dp_founder_fl_contacts_1',
  'type' => 'link',
  'relationship' => 'dp_founder_fl_contacts_1',
  'source' => 'non-db',
  'module' => 'Contacts',
  'bean_name' => 'Contact',
  'vname' => 'LBL_DP_FOUNDER_FL_CONTACTS_1_FROM_CONTACTS_TITLE',
  'id_name' => 'dp_founder_fl_contacts_1contacts_idb',
);
$dictionary["dp_founder_fl"]["fields"]["dp_founder_fl_contacts_1_name"] = array (
  'name' => 'dp_founder_fl_contacts_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_DP_FOUNDER_FL_CONTACTS_1_FROM_CONTACTS_TITLE',
  'save' => true,
  'id_name' => 'dp_founder_fl_contacts_1contacts_idb',
  'link' => 'dp_founder_fl_contacts_1',
  'table' => 'contacts',
  'module' => 'Contacts',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["dp_founder_fl"]["fields"]["dp_founder_fl_contacts_1contacts_idb"] = array (
  'name' => 'dp_founder_fl_contacts_1contacts_idb',
  'type' => 'link',
  'relationship' => 'dp_founder_fl_contacts_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_DP_FOUNDER_FL_CONTACTS_1_FROM_CONTACTS_TITLE',
);
