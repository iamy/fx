<?php
// created: 2017-05-29 07:12:04
$dictionary["Contact"]["fields"]["dp_founder_fl_contacts_1"] = array (
  'name' => 'dp_founder_fl_contacts_1',
  'type' => 'link',
  'relationship' => 'dp_founder_fl_contacts_1',
  'source' => 'non-db',
  'module' => 'dp_founder_fl',
  'bean_name' => 'dp_founder_fl',
  'vname' => 'LBL_DP_FOUNDER_FL_CONTACTS_1_FROM_DP_FOUNDER_FL_TITLE',
  'id_name' => 'dp_founder_fl_contacts_1dp_founder_fl_ida',
);
$dictionary["Contact"]["fields"]["dp_founder_fl_contacts_1_name"] = array (
  'name' => 'dp_founder_fl_contacts_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_DP_FOUNDER_FL_CONTACTS_1_FROM_DP_FOUNDER_FL_TITLE',
  'save' => true,
  'id_name' => 'dp_founder_fl_contacts_1dp_founder_fl_ida',
  'link' => 'dp_founder_fl_contacts_1',
  'table' => 'dp_founder_fl',
  'module' => 'dp_founder_fl',
  'rname' => 'name',
);
$dictionary["Contact"]["fields"]["dp_founder_fl_contacts_1dp_founder_fl_ida"] = array (
  'name' => 'dp_founder_fl_contacts_1dp_founder_fl_ida',
  'type' => 'link',
  'relationship' => 'dp_founder_fl_contacts_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_DP_FOUNDER_FL_CONTACTS_1_FROM_DP_FOUNDER_FL_TITLE',
);
