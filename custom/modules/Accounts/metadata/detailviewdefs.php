<?php
$viewdefs ['Accounts'] =
array (
  'DetailView' =>
  array (
    'templateMeta' =>
    array (
      'form' =>
      array (
        'buttons' =>
        array (
          'EDIT',
          'DUPLICATE',
          'DELETE',
          'FIND_DUPLICATES',
          array (
            'customCode' => '<input type="button" class="button" onClick="showPopup();" value="{$APP.LBL_GENERATE_LETTER}">',
          ),
          array (
            'customCode' =>
                '<input id="dadata_request_button" title="{$MOD.LBL_DADATA_REQUEST_BUTTON_TITLE}"  class="button"
                        onclick="this.form.action.value=\'DaDataRequest\';
                                 this.form.return_module.value=\'Accounts\';
                                 this.form.return_action.value=\'DetailView\';
                                 this.form.return_id.value=\'{$fields.id.value}\';"
                        name="button"
                        value="{$MOD.LBL_DADATA_REQUEST_BUTTON_TITLE}"
                        type="submit">',
            'sugar_html' =>
            array (
              'type' => 'submit',
              'value' => '{$MOD.LBL_DADATA_REQUEST_BUTTON_TITLE}',
              'htmlOptions' =>
              array (
                'title' => '{$MOD.LBL_DADATA_REQUEST_BUTTON_TITLE}',
                'class' => 'button',
                'onclick' => 'this.form.action.value=\'DaDataRequest\';
                             this.form.return_module.value=\'Accounts\';
                             this.form.return_action.value=\'DetailView\';
                             this.form.return_id.value=\'{$fields.id.value}\';',
                'name' => 'button',
                'id' => 'dadata_request_button',
              ),
              'template' => '[CONTENT]',
            ),
          ),
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
      'includes' =>
      array (
        0 =>
        array (
          'file' => 'modules/Accounts/Account.js',
        ),
      ),
      'useTabs' => true,
      'tabDefs' =>
      array (
        'LBL_ACCOUNT_INFORMATION' =>
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL1' =>
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL3' =>
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL2' =>
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' =>
    array (
      'lbl_account_information' =>
      array (
        0 =>
        array (
          0 =>
          array (
            'name' => 'name',
            'comment' => 'Name of the Company',
            'label' => 'LBL_NAME',
          ),
        ),
        1 =>
        array (
          0 =>
          array (
            'name' => 'shname',
            'label' => 'LBL_SHNAME',
          ),
        ),
        2 =>
        array (
          0 =>
          array (
            'name' => 'inn_test_c',
            'label' => 'LBL_INN_TEST',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'website',
            'type' => 'link',
            'label' => 'LBL_WEBSITE',
            'displayParams' =>
            array (
              'link_target' => '_blank',
            ),
          ),
          1 =>
          array (
            'name' => 'email1',
            'studio' => 'false',
            'label' => 'LBL_EMAIL',
          ),
        ),
        4 => 
        array (
          0 =>
          array (
            'name' => 'phone_office',
            'comment' => 'The office phone number',
            'label' => 'LBL_PHONE_OFFICE',
          ),
          1 =>
          array (
            'name' => 'phone_fax',
            'comment' => 'The fax phone number of this company',
            'label' => 'LBL_FAX',
          ),
        ),
        5 => 
        array (
          0 =>
          array (
            'name' => 'inn',
            'label' => 'LBL_INN',
          ),
          1 =>
          array (
            'name' => 'kpp',
            'label' => 'LBL_KPP',
          ),
        ),
        6 => 
        array (
          0 =>
          array (
            'name' => 'ogrn',
            'label' => 'LBL_OGRN',
          ),
          1 =>
          array (
            'name' => 'okpo',
            'label' => 'LBL_OKPO',
          ),
        ),
        7 => 
        array (
          0 =>
          array (
            'name' => 'okopf',
            'label' => 'LBL_OKOPF',
          ),
          1 =>
          array (
            'name' => 'okogu',
            'label' => 'LBL_OKOGU',
          ),
        ),
        8 => 
        array (
          0 =>
          array (
            'name' => 'okfs',
            'label' => 'LBL_OKFS',
          ),
          1 =>
          array (
            'name' => 'sic_code',
            'comment' => 'SIC code of the account',
            'label' => 'LBL_SIC_CODE',
          ),
        ),
        9 => 
        array (
          0 =>
          array (
            'name' => 'date_reg_ustav',
            'label' => 'LBL_DATE_REG_USTAV',
          ),
          1 =>
          array (
            'name' => 'resident',
            'label' => 'LBL_RESIDENT',
          ),
        ),
        10 => 
        array (
          0 =>
          array (
            'name' => 'date_ifns',
            'label' => 'LBL_DATE_IFNS',
          ),
          1 =>
          array (
            'name' => 'nm_regorgan',
            'label' => 'LBL_NM_REGORGAN',
          ),
        ),
        11 => 
        array (
          0 =>
          array (
            'name' => 'date_gosreg',
            'label' => 'LBL_DATE_GOSREG',
          ),
          1 =>
          array (
            'name' => 'nm_gosreg',
            'label' => 'LBL_NM_GOSREG',
          ),
        ),
        12 => 
        array (
          0 =>
          array (
            'name' => 'description',
            'comment' => 'Full text of the note',
            'label' => 'LBL_DESCRIPTION',
          ),
          1 =>
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO',
          ),
        ),
      ),
      'lbl_editview_panel1' =>
      array (
        0 =>
        array (
          0 =>
          array (
            'name' => 'billing_address_street',
            'label' => 'LBL_BILLING_ADDRESS',
            'type' => 'address',
            'displayParams' =>
            array (
              'key' => 'billing',
            ),
          ),
          1 =>
          array (
            'name' => 'shipping_address_street',
            'label' => 'LBL_SHIPPING_ADDRESS',
            'type' => 'address',
            'displayParams' =>
            array (
              'key' => 'shipping',
            ),
          ),
        ),
      ),
      'lbl_editview_panel3' =>
      array (
        0 =>
        array (
          0 =>
          array (
            'name' => 'tax_system_c',
            'studio' => 'visible',
            'label' => 'LBL_TAX_SYSTEM',
          ),
        ),
      ),
      'lbl_editview_panel2' =>
      array (
        0 =>
        array (
          0 =>
          array (
            'name' => 'authorized_share_capital',
            'label' => 'LBL_AUTHORIZED_SHARE_CAPITAL',
          ),
          1 =>
          array (
            'name' => 'paid_share_capital',
            'label' => 'LBL_PAID_SHARE_CAPITAL',
          ),
        ),
        1 =>
        array (
          0 =>
          array (
            'name' => 'region_activity',
            'label' => 'LBL_REGION_ACTIVITY',
          ),
          1 =>
          array (
            'name' => 'employees',
            'comment' => 'Number of employees, varchar to accomodate for both number (100) or range (50-100)',
            'label' => 'LBL_EMPLOYEES',
          ),
        ),
      ),
    ),
  ),
);
?>
