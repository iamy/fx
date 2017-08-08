<?php
$module_name = 'dp_license';
$viewdefs [$module_name] = 
array (
  'QuickCreate' => 
  array (
    'templateMeta' => 
    array (
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
            'name' => 'num_license_c',
            'label' => 'LBL_NUM_LICENSE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'date_license_c',
            'label' => 'LBL_DATE_LICENSE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'srok_work_license_c',
            'label' => 'LBL_SROK_WORK_LICENSE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'bywhom_license_c',
            'label' => 'LBL_BYWHOM_LICENSE',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'accounts_dp_license_1_name',
            'label' => 'LBL_ACCOUNTS_DP_LICENSE_1_FROM_ACCOUNTS_TITLE',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'comment' => 'Full text of the note',
            'label' => 'LBL_DESCRIPTION',
          ),
        ),
        7 => 
        array (
          0 => 'assigned_user_name',
        ),
      ),
    ),
  ),
);
?>
