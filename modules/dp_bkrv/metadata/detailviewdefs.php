<?php
$module_name = 'dp_bkrv';
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
            'name' => 'rsch',
            'label' => 'LBL_RSCH',
          ),
          1 => 
          array (
            'name' => 'krch',
            'label' => 'LBL_KRCH',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'inn_bank',
            'label' => 'LBL_INN_BANK',
          ),
          1 => 
          array (
            'name' => 'bik_bank',
            'label' => 'LBL_BIK_BANK',
          ),
        ),
        3 => 
        array (
          0 => 'date_entered',
          1 => 'date_modified',
        ),
        4 => 
        array (
          0 => 'description',
          1 => 
          array (
            'name' => 'dp_bkrv_accounts_name',
          ),
        ),
      ),
    ),
  ),
);
?>
