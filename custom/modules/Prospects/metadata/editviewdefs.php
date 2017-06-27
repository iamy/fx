<?php
$viewdefs ['Prospects'] = 
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
        'LBL_PROSPECT_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_MORE_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_PANEL_ASSIGNMENT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'lbl_prospect_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'numizv_c',
            'label' => 'LBL_NUMIZV',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'date_protokol_c',
            'label' => 'LBL_DATE_PROTOKOL',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'subj_tender_c',
            'label' => 'LBL_SUBJ_TENDER',
          ),
        ),
        3 => 
        array (
          0 => 'account_name',
        ),
        4 => 
        array (
          0 => 'email1',
        ),
        5 => 
        array (
          0 => 'phone_work',
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'nmc_kontrakt_c',
            'label' => 'LBL_NMC_KONTRAKT',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'obesp_c',
            'label' => 'LBL_OBESP',
          ),
        ),
      ),
      'LBL_MORE_INFORMATION' => 
      array (
        0 => 
        array (
          0 => 'do_not_call',
        ),
      ),
      'LBL_PANEL_ASSIGNMENT' => 
      array (
        0 => 
        array (
          0 => 'assigned_user_name',
        ),
      ),
    ),
  ),
);
?>
