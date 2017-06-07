<?php
$viewdefs ['Opportunities'] = 
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
      'javascript' => '{$PROBABILITY_SCRIPT}',
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
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
      'default' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'name',
          ),
        ),
        1 => 
        array (
          0 => 'account_name',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'email_win_c',
            'label' => 'LBL_EMAIL_WIN',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'inn_winer_c',
            'label' => 'LBL_INN_WINER',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'tcustomer_c',
            'label' => 'LBL_TCUSTOMER',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'kpp_winer_c',
            'label' => 'LBL_KPP_WINER',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'phone_winer_c',
            'label' => 'LBL_PHONE_WINER',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'subj_tender_c',
            'label' => 'LBL_SUBJ_TENDER',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'date_pub_protokol_c',
            'label' => 'LBL_DATE_PUB_PROTOKOL',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'link_protokol_c',
            'label' => 'LBL_LINK_PROTOKOL',
          ),
        ),
        10 => 
        array (
          0 => 
          array (
            'name' => 'circs_c',
            'label' => 'LBL_CIRCS',
          ),
        ),
        11 => 
        array (
          0 => 
          array (
            'name' => 'nmc_c',
            'label' => 'LBL_NMC',
          ),
        ),
        12 => 
        array (
          0 => 
          array (
            'name' => 'currency_id',
            'label' => 'LBL_CURRENCY',
          ),
        ),
        13 => 
        array (
          0 => 
          array (
            'name' => 'date_closed',
          ),
        ),
        14 => 
        array (
          0 => 
          array (
            'name' => 'amount',
          ),
        ),
        15 => 
        array (
          0 => 
          array (
            'name' => 'ts_c',
            'studio' => 'visible',
            'label' => 'LBL_TS',
          ),
        ),
        16 => 
        array (
          0 => 'sales_stage',
          1 => 'lead_source',
        ),
        17 => 
        array (
          0 => 'probability',
          1 => 'campaign_name',
        ),
        18 => 
        array (
          0 => 'next_step',
        ),
        19 => 
        array (
          0 => 'description',
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
