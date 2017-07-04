<?php
$module_name = 'dp_founder_fl';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'fl_size_perc_c',
            'label' => 'LBL_FL_SIZE_PERC',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'fl_share_size_cur_c',
            'label' => 'LBL_FL_SHARE_SIZE_CUR',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'link_contact_c',
            'studio' => 'visible',
            'label' => 'LBL_LINK_CONTACT',
          ),
        ),
        4 => 
        array (
          0 => 'description',
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'dp_founder_fl_contacts_1_name',
          ),
        ),
        6 => 
        array (
          0 => 'assigned_user_name',
        ),
      ),
    ),
  ),
);
?>
