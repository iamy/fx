<?php
$module_name = 'sro_svid_sro';
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
          'file' => 'modules/sro_svid_sro/edit.view.js',
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
            'name' => 'date_sro_c',
            'label' => 'LBL_DATE_SRO',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'num_sro_c',
            'label' => 'LBL_NUM_SRO',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'bywhom_sro_c',
            'label' => 'LBL_BYWHOM_SRO',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'srok_work_sro_c',
            'label' => 'LBL_SROK_WORK_SRO',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'indefinitely_srok_work_sro_c',
            'label' => 'LBL_INDEFINITELY_SROK_WORK_SRO_C',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'sro_for_c',
            'studio' => 'visible',
            'label' => 'LBL_SRO_FOR',
          ),
        ),
        7 => 
        array (
          0 => 'assigned_user_name',
        ),
        8 => 
        array (
          0 => 'description',
          1 => 
          array (
            'name' => 'accounts_sro_svid_sro_1_name',
          ),
        ),
      ),
    ),
  ),
);
?>
