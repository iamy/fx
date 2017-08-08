<?php
// created: 2017-07-06 15:39:03
$subpanel_layout['list_fields'] = array (
  'name' => 
  array (
    'vname' => 'LBL_NAME',
    'widget_class' => 'SubPanelDetailViewLink',
    'width' => '45%',
    'default' => true,
  ),
  'fl_share_size_cur_c' => 
  array (
    'type' => 'decimal',
    'default' => true,
    'vname' => 'LBL_FL_SHARE_SIZE_CUR',
    'width' => '10%',
  ),
  'fl_size_perc_c' => 
  array (
    'type' => 'decimal',
    'default' => true,
    'vname' => 'LBL_FL_SIZE_PERC',
    'width' => '10%',
  ),
  'link_contact_c' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'vname' => 'LBL_LINK_CONTACT',
    'id' => 'CONTACT_ID_C',
    'link' => true,
    'width' => '10%',
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'Contacts',
    'target_record_key' => 'contact_id_c',
  ),
  'dp_founder_fl_contacts_1_name' => 
  array (
    'type' => 'relate',
    'link' => true,
    'vname' => 'LBL_DP_FOUNDER_FL_CONTACTS_1_FROM_CONTACTS_TITLE',
    'id' => 'DP_FOUNDER_FL_CONTACTS_1CONTACTS_IDB',
    'width' => '10%',
    'default' => true,
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'Contacts',
    'target_record_key' => 'dp_founder_fl_contacts_1contacts_idb',
  ),
  'edit_button' => 
  array (
    'vname' => 'LBL_EDIT_BUTTON',
    'widget_class' => 'SubPanelEditButton',
    'module' => 'dp_founder_fl',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'dp_founder_fl',
    'width' => '5%',
    'default' => true,
  ),
);