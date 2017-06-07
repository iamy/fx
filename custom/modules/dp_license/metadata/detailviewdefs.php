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
          1 => 'assigned_user_name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'num_license_c',
            'label' => 'LBL_NUM_LICENSE',
          ),
          1 => 
          array (
            'name' => 'license_for_c',
            'studio' => 'visible',
            'label' => 'LBL_LICENSE_FOR',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'srok_work_license_c',
            'label' => 'LBL_SROK_WORK_LICENSE',
          ),
          1 => 
          array (
            'name' => 'bywhom_license_c',
            'label' => 'LBL_BYWHOM_LICENSE',
          ),
        ),
        3 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
