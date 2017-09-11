<?php
$viewdefs ['Contacts'] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'hidden' => 
        array (
          0 => '<input type="hidden" name="opportunity_id" value="{$smarty.request.opportunity_id}">',
          1 => '<input type="hidden" name="case_id" value="{$smarty.request.case_id}">',
          2 => '<input type="hidden" name="bug_id" value="{$smarty.request.bug_id}">',
          3 => '<input type="hidden" name="email_id" value="{$smarty.request.email_id}">',
          4 => '<input type="hidden" name="inbound_email_id" value="{$smarty.request.inbound_email_id}">',
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
      'useTabs' => true,
      'tabDefs' => 
      array (
        'LBL_CONTACT_INFORMATION' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL2' => 
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
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'lbl_contact_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'last_name',
          ),
	  1 => 'is_manager'
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'first_name',
            'customCode' => '{html_options name="salutation" id="salutation" options=$fields.salutation.options selected=$fields.salutation.value}&nbsp;<input name="first_name"  id="first_name" size="25" maxlength="25" type="text" value="{$fields.first_name.value}">',
          ),
	  1 => 'is_general_accountant'
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'patr_c',
            'label' => 'LBL_PATR',
          ),
	  1 => 'position'
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'citizenship_fl_c',
            'label' => 'LBL_CITIZENSHIP_FL',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'resident_fl_c',
            'label' => 'LBL_RESIDENT_FL',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'birthdate',
            'comment' => 'The birthdate of the contact',
            'label' => 'LBL_BIRTHDATE',
          ),
          1 => 
          array (
            'name' => 'bithplace_fl_c',
            'label' => 'LBL_BITHPLACE_FL',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'phone_work',
            'comment' => 'Work phone number of the contact',
            'label' => 'LBL_OFFICE_PHONE',
          ),
          1 => 
          array (
            'name' => 'phone_mobile',
            'comment' => 'Mobile phone number of the contact',
            'label' => 'LBL_MOBILE_PHONE',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'title',
            'comment' => 'The title of the contact',
            'label' => 'LBL_TITLE',
          ),
          1 => 
          array (
            'name' => 'email1',
            'studio' => 'false',
            'label' => 'LBL_EMAIL_ADDRESS',
          ),
        ),
        8 => 
        array (
          0 => 'department',
          1 => 
          array (
            'name' => 'snils_c',
            'label' => 'LBL_SNILS',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'label' => 'LBL_DESCRIPTION',
          ),
        ),
        10 => 
        array (
          0 => 
          array (
            'name' => 'primary_address_street',
            'hideLabel' => true,
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'primary',
              'rows' => 2,
              'cols' => 30,
              'maxlength' => 150,
            ),
          ),
          1 => 
          array (
            'name' => 'alt_address_street',
            'hideLabel' => true,
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'alt',
              'copy' => 'primary',
              'rows' => 2,
              'cols' => 30,
              'maxlength' => 150,
            ),
          ),
        ),
      ),
      'lbl_editview_panel2' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'edu_fl_c',
            'label' => 'LBL_EDU_FL',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'edu_institution_fl_c',
            'label' => 'LBL_EDU_INSTITUTION_FL',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'specialty_fl_c',
            'label' => 'LBL_SPECIALTY_FL',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'edu_institution_exp_date_fl_c',
            'label' => 'LBL_EDU_INSTITUTION_EXP_DATE_FL',
          ),
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'doc_title_fl_c',
            'label' => 'LBL_DOC_TITLE_FL',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'doc_series_fl_c',
            'label' => 'LBL_DOC_SERIES_FL',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'doc_number_fl_c',
            'label' => 'LBL_DOC_NUMBER_FL',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'doc_issued_by_fl_c',
            'label' => 'LBL_DOC_ISSUED_BY_FL',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'doc_issue_date_fl_c',
            'label' => 'LBL_DOC_ISSUE_DATE_FL',
          ),
        ),
      ),
      'lbl_editview_panel3' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'for_kontragent_c',
            'studio' => 'visible',
            'label' => 'LBL_FOR_KONTRAGENT',
          ),
        ),
      ),
    ),
  ),
);
?>
