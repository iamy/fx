<?php
$viewdefs ['Opportunities'] = 
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
          0 => 'name',
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
            'name' => 'inn_customer_c',
            'label' => 'LBL_INN_CUSTOMER',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'kpp_winer_c',
            'label' => 'LBL_KPP_WINER',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'phone_winer_c',
            'label' => 'LBL_PHONE_WINER',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'subj_tender_c',
            'label' => 'LBL_SUBJ_TENDER',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'date_pub_protokol_c',
            'label' => 'LBL_DATE_PUB_PROTOKOL',
          ),
        ),
        10 => 
        array (
          0 => 
          array (
            'name' => 'link_protokol_c',
            'label' => 'LBL_LINK_PROTOKOL',
          ),
        ),
        11 => 
        array (
          0 => 
          array (
            'name' => 'circs_c',
            'label' => 'LBL_CIRCS',
          ),
        ),
        12 => 
        array (
          0 => 
          array (
            'name' => 'nmc_c',
            'label' => 'LBL_NMC',
          ),
        ),
        13 => 
        array (
          0 => 
          array (
            'name' => 'currency_id',
            'comment' => 'Currency used for display purposes',
            'label' => 'LBL_CURRENCY',
          ),
        ),
        14 => 
        array (
          0 => 'date_closed',
        ),
        15 => 
        array (
          0 => 
          array (
            'name' => 'amount',
            'label' => '{$MOD.LBL_AMOUNT} ({$CURRENCY})',
          ),
        ),
        16 => 
        array (
          0 => 
          array (
            'name' => 'ts_c',
            'studio' => 'visible',
            'label' => 'LBL_TS',
          ),
        ),
        17 => 
        array (
          0 => 'sales_stage',
          1 => 'lead_source',
        ),
        18 => 
        array (
          0 => 'probability',
          1 => 'campaign_name',
        ),
        19 => 
        array (
          0 => 'next_step',
        ),
        20 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'nl2br' => true,
          ),
        ),
      ),
      'LBL_PANEL_ASSIGNMENT' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO',
          ),
        ),
      ),
    ),
  ),
);
?>
