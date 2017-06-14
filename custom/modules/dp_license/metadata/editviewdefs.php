<?php
$module_name = 'dp_license';
$viewdefs [$module_name] = 
array (
  'EditView' => 
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
        'includes' =>
            array (
                0 =>
                    array (
                        'file' => 'modules/dp_license/edit.view.js',
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
          0 => 
          array (
            'name' => 'indefinitely_srok_work_license_c',
            'label' => 'LBL_INDEFINITELY_SROK_WORK_LICENSE_C',
          ),
          1 => '',
        ),
        4 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
