<?php
$module_name = 'dp_founder_fl';
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
            'name' => 'fl_share_size_cur_c',
            'label' => 'LBL_FL_SHARE_SIZE_CUR',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'fl_size_perc_c',
            'label' => 'LBL_FL_SIZE_PERC',
          ),
        ),
        3 => 
        array (
        ),
        4 => 
        array (
          0 => 'assigned_user_name',
        ),
      ),
    ),
  ),
);
?>
