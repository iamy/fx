<?php
$viewdefs ['Accounts'] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'SAVE',
          1 => 'CANCEL',
	  2 => array (
		  'customCode' => '<input id="dadata_request_button" title="{$MOD.LBL_DADATA_REQUEST_BUTTON_TITLE}"  class="button"
			      onclick="dadataRequest(); return false;"
			      name="button"
			      value="{$MOD.LBL_DADATA_REQUEST_BUTTON_TITLE}"
			      type="submit">'
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
      ),
      'includes' => 
      array (
	      /*
        array (
          'file' => 'modules/Accounts/Account.js',
	),
	       */
        array (
          'file' => 'custom/modules/Accounts/customAccount.js',
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
            'label' => 'LBL_NAME',
            'displayParams' => 
            array (
              'required' => true,
            ),
          ),
          1 => 
          array (
            'name' => 'type_kontr_c',
            'studio' => 'visible',
            'label' => 'LBL_TYPE_KONTR',
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
            'name' => 'website',
            'type' => 'link',
            'label' => 'LBL_WEBSITE',
          ),
          1 => 
          array (
            'name' => 'email1',
            'studio' => 'false',
            'label' => 'LBL_EMAIL',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'phone_office',
            'label' => 'LBL_PHONE_OFFICE',
          ),
          1 => 
          array (
            'name' => 'phone_fax',
            'label' => 'LBL_FAX',
          ),
        ),
        4 => 
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
        5 => 
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
        6 => 
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
        7 => 
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
        8 => 
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
        9 => 
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
        10 => 
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
        11 => 
        array (
          0 => 
          array (
            'name' => 'description',
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
            'hideLabel' => true,
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'billing',
              'rows' => 2,
              'cols' => 30,
              'maxlength' => 150,
            ),
          ),
          1 => 
          array (
            'name' => 'shipping_address_street',
            'hideLabel' => true,
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'shipping',
              'copy' => 'billing',
              'rows' => 2,
              'cols' => 30,
              'maxlength' => 150,
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
          1 => 'employees',
        ),
      ),
    ),
  ),
);
?>
