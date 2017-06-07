<?php
$module_name = 'dp_bkrv';
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
            'name' => 'rsch',
            'label' => 'LBL_RSCH',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'krch',
            'label' => 'LBL_KRCH',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'inn_bank',
            'label' => 'LBL_INN_BANK',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'bik_bank',
            'label' => 'LBL_BIK_BANK',
          ),
        ),
        5 => 
        array (
          0 => 'assigned_user_name',
        ),
      ),
    ),
  ),
);
?>
