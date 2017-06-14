<?php
$module_name = 'sro_svid_sro';
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
            'name' => 'sro_for_c',
            'studio' => 'visible',
            'label' => 'LBL_SRO_FOR',
          ),
        ),
        6 => 
        array (
          0 => 'assigned_user_name',
        ),
        7 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
