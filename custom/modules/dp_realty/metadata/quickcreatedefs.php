<?php
$module_name = 'dp_realty';
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
          0 => 'assigned_user_name',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'status_nedv',
            'studio' => 'visible',
            'label' => 'LBL_STATUS_NEDV',
          ),
          1 => 
          array (
            'name' => 'date_reg_dogovor_arend',
            'label' => 'LBL_DATE_REG_DOGOVOR_AREND',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'target_nedv',
            'studio' => 'visible',
            'label' => 'LBL_TARGET_NEDV',
          ),
          1 => 
          array (
            'name' => 'area_nedv',
            'label' => 'LBL_AREA_NEDV',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'num_svid_nedv',
            'label' => 'LBL_NUM_SVID_NEDV',
          ),
          1 => 
          array (
            'name' => 'date_reg_nedv',
            'label' => 'LBL_DATE_REG_NEDV',
          ),
        ),
      ),
    ),
  ),
);
?>
