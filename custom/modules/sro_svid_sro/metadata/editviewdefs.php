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
          1 => 
          array (
            'name' => 'date_sro_c',
            'label' => 'LBL_DATE_SRO',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'num_sro_c',
            'label' => 'LBL_NUM_SRO',
          ),
          1 => 
          array (
            'name' => 'bywhom_sro_c',
            'label' => 'LBL_BYWHOM_SRO',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'sro_for_c',
            'studio' => 'visible',
            'label' => 'LBL_SRO_FOR',
          ),
          1 => 'assigned_user_name',
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
