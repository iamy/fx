<?php
$module_name = 'dp_founder_ul';
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
            'name' => 'ul_size_perc_c',
            'label' => 'LBL_UL_SIZE_PERC',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'ul_share_size_c',
            'label' => 'LBL_UL_SHARE_SIZE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'link_kontr_c',
            'studio' => 'visible',
            'label' => 'LBL_LINK_KONTR',
          ),
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
