<?php
$module_name = 'dp_license';
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
            'name' => 'num_license_c',
            'label' => 'LBL_NUM_LICENSE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'srok_work_license_c',
            'label' => 'LBL_SROK_WORK_LICENSE',
          ),
        ),
        3 => 
        array (
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
            'name' => 'indefinitely_srok_work_license_c',
            'label' => 'LBL_INDEFINITELY_SROK_WORK_LICENSE_C',
          ),
        ),
        6 => 
        array (
          0 => 'description',
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'accounts_dp_license_1_name',
          ),
        ),
        8 => 
        array (
          0 => 'assigned_user_name',
        ),
      ),
    ),
  ),
);
?>
