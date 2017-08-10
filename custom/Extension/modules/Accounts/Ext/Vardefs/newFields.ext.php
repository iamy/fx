<?php
//$dictionary['Account']['fields']['account_id']['required'] = false;
//$dictionary['Account']['fields']['account_name']['required'] = false;
$dictionary['Account']['fields']['shname'] = array(
 'required' => false,
      'name' => 'shname',
      'vname' => 'LBL_SHNAME',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
	);
$dictionary['Account']['fields']['inn'] = array(
      'required' => true,
      'name' => 'inn',
      'vname' => 'LBL_INN',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
 //     'merge_filter' => 'disabled',
      'duplicate_merge' => 'enabled',
      'duplicate_merge_dom_value' => '1',
      'audited' => true,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      //'merge_filter' => 'enabled',
      'len' => '12',
      'size' => '20',
    );
$dictionary['Account']['fields']['kpp'] = array(
      'required' => false,
      'name' => 'kpp',
      'vname' => 'LBL_KPP',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'enabled',
      'duplicate_merge_dom_value' => '1',
      'audited' => true,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '9',
      'size' => '20',
    );
$dictionary['Account']['fields']['resident'] = array(
      'required' => false,
      'name' => 'resident',
      'vname' => 'LBL_RESIDENT',
      'type' => 'varchar',
      'massupdate' => 0,
      'default' => 'Да',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
    );
$dictionary['Account']['fields']['shname'] = array(
      'required' => false,
      'name' => 'shname',
      'vname' => 'LBL_SHNAME',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
    );

$dictionary['Account']['fields']['okpo'] = array(
      'required' => false,
      'name' => 'okpo',
      'vname' => 'LBL_OKPO',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '8',
      'size' => '20',
    );
$dictionary['Account']['fields']['ogrn'] = array(
      'required' => false,
      'name' => 'ogrn',
      'vname' => 'LBL_OGRN',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '15',
      'size' => '20',
    );

$dictionary['Account']['fields']['okopf'] = array(
      'required' => false,
      'name' => 'okopf',
      'vname' => 'LBL_OKOPF',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '10',
      'size' => '20',
    );
$dictionary['Account']['fields']['okogu'] = array(
      'required' => false,
      'name' => 'okogu',
      'vname' => 'LBL_OKOGU',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '7',
      'size' => '20',
    );
$dictionary['Account']['fields']['okfs'] = array(
      'required' => false,
      'name' => 'okfs',
      'vname' => 'LBL_OKFS',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '20',
      'size' => '20',
    );
$dictionary['Account']['fields']['date_ifns'] = array(
      'required' => false,
      'name' => 'date_ifns',
      'vname' => 'LBL_DATE_IFNS',
      'type' => 'date',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'enable_range_search' => false,
    );
$dictionary['Account']['fields']['nm_regorgan'] = array(
      'required' => false,
      'name' => 'nm_regorgan',
      'vname' => 'LBL_NM_REGORGAN',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '150',
      'size' => '20',
    );
$dictionary['Account']['fields']['date_gosreg'] = array(
      'required' => false,
      'name' => 'date_gosreg',
      'vname' => 'LBL_DATE_GOSREG',
      'type' => 'date',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'enable_range_search' => false,
    );
$dictionary['Account']['fields']['nm_gosreg'] = array(
      'required' => false,
      'name' => 'nm_gosreg',
      'vname' => 'LBL_NM_GOSREG',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '150',
      'size' => '20',
    );
$dictionary['Account']['fields']['ur_locality'] = array (
      'required' => false,
      'name' => 'ur_locality',
      'vname' => 'LBL_UR_LOCALITY',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '150',
      'size' => '20',
    );
    $dictionary['Account']['fields']['ur_area'] = array (
      'required' => false,
      'name' => 'ur_area',
      'vname' => 'LBL_UR_AREA',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '150',
      'size' => '20',
    );
$dictionary['Account']['fields']['ur_house'] = array (
      'required' => false,
      'name' => 'ur_house',
      'vname' => 'LBL_UR_HOUSE',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '10',
      'size' => '20',
    );
    $dictionary['Account']['fields']['ur_structure'] = array (
      'required' => false,
      'name' => 'ur_structure',
      'vname' => 'LBL_UR_STRUCTURE',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '10',
      'size' => '20',
    );

    $dictionary['Account']['fields']['ur_apartment'] = array (
      'required' => false,
      'name' => 'ur_apartment',
      'vname' => 'LBL_UR_APARTMENT',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '10',
      'size' => '20',
    );
$dictionary['Account']['fields']['ur_area_fact'] = array (
      'required' => false,
      'name' => 'ur_area_fact',
      'vname' => 'LBL_UR_AREA_FACT',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '150',
      'size' => '20',
    );
$dictionary['Account']['fields']['ur_locality_fact'] = array (
      'required' => false,
      'name' => 'ur_locality_fact',
      'vname' => 'LBL_UR_LOCALITY_FACT',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '150',
      'size' => '20',
    );
$dictionary['Account']['fields']['ur_house_fact'] =  array (
      'required' => false,
      'name' => 'ur_house_fact',
      'vname' => 'LBL_UR_HOUSE_FACT',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '10',
      'size' => '20',
    );
    $dictionary['Account']['fields']['ur_structure_fact'] =  array (
      'required' => false,
      'name' => 'ur_structure_fact',
      'vname' => 'LBL_UR_STRUCTURE_FACT',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '10',
      'size' => '20',
    );

    $dictionary['Account']['fields']['ur_apartment_fact'] = array (
      'required' => false,
      'name' => 'ur_apartment_fact',
      'vname' => 'LBL_UR_APARTMENT_FACT',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '10',
      'size' => '20',
    );
$dictionary['Account']['fields']['oktmo_fact'] = array (
	'required' => false,
      'name' => 'oktmo_fact',
      'vname' => 'LBL_OKTMO_FACT',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '11',
      'size' => '20',
	);
$dictionary['Account']['fields']['oktmo_ur'] = array (
		'required' => false,
      'name' => 'oktmo_ur',
      'vname' => 'LBL_OKTMO_UR',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '11',
      'size' => '20',
);
$dictionary['Account']['fields']['date_reg_ustav'] = array (
'required' => false,
      'name' => 'date_reg_ustav',
      'vname' => 'LBL_DATE_REG_USTAV',
      'type' => 'date',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'enable_range_search' => false,
);

$dictionary['Account']['fields']['authorized_share_capital'] = array (
      'required' => false,
      'name' => 'authorized_share_capital',
      'vname' => 'LBL_AUTHORIZED_SHARE_CAPITAL',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '10',
      'size' => '20',
    );

$dictionary['Account']['fields']['paid_share_capital'] = array (
      'required' => false,
      'name' => 'paid_share_capital',
      'vname' => 'LBL_PAID_SHARE_CAPITAL',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '10',
      'size' => '20',
    );
$dictionary['Account']['fields']['region_activity'] = array (
      'required' => false,
      'name' => 'region_activity',
      'vname' => 'LBL_REGION_ACTIVITY',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
    );
$dictionary['Account']['fields']['billing_address_area'] = array (
    'name' => 'billing_address_area',
    'vname' => 'LBL_BILLING_ADDRESS_AREA',
    'type' => 'varchar',
    'len' => '100',
    'group' => 'billing_address',
    'merge_filter' => 'enabled',
    );
$dictionary['Account']['fields']['shipping_address_area'] = array (
    'name' => 'shipping_address_area',
    'vname' => 'LBL_SHIPPING_ADDRESS_AREA',
    'type' => 'varchar',
    'len' => 100,
    'group' => 'shipping_address',
    'merge_filter' => 'enabled',
    );
$dictionary['Account']['fields']['billing_address_house'] = array (
    'name' => 'billing_address_house',
    'vname' => 'LBL_BILLING_ADDRESS_HOUSE',
    'type' => 'varchar',
    'len' => '100',
    'group' => 'billing_address',
    'merge_filter' => 'enabled',
    );
$dictionary['Account']['fields']['shipping_address_house'] = array (
    'name' => 'shipping_address_house',
    'vname' => 'LBL_SHIPPING_ADDRESS_HOUSE',
    'type' => 'varchar',
    'len' => 100,
    'group' => 'shipping_address',
    'merge_filter' => 'enabled',
    );
$dictionary['Account']['fields']['billing_address_structure'] = array (
    'name' => 'billing_address_structure',
    'vname' => 'LBL_BILLING_ADDRESS_STRUCTURE',
    'type' => 'varchar',
    'len' => '100',
    'group' => 'billing_address',
    'merge_filter' => 'enabled',
    );
$dictionary['Account']['fields']['shipping_address_structure'] = array (
    'name' => 'shipping_address_structure',
    'vname' => 'LBL_SHIPPING_ADDRESS_STRUCTURE',
    'type' => 'varchar',
    'len' => 100,
    'group' => 'shipping_address',
    'merge_filter' => 'enabled',
    );
$dictionary['Account']['fields']['billing_address_apartment'] = array (
    'name' => 'billing_address_apartment',
    'vname' => 'LBL_BILLING_ADDRESS_APARTMENT',
    'type' => 'varchar',
    'len' => '100',
    'group' => 'billing_address',
    'merge_filter' => 'enabled',
    );
$dictionary['Account']['fields']['shipping_address_apartment'] = array (
    'name' => 'shipping_address_apartment',
    'vname' => 'LBL_SHIPPING_ADDRESS_APARTMENT',
    'type' => 'varchar',
    'len' => 100,
    'group' => 'shipping_address',
    'merge_filter' => 'enabled',
    );
$dictionary['Account']['fields']['billing_address_oktmo'] = array (
    'name' => 'billing_address_oktmo',
    'vname' => 'LBL_BILLING_ADDRESS_OKTMO',
    'type' => 'varchar',
    'len' => '100',
    'group' => 'billing_address',
    'merge_filter' => 'enabled',
    );
$dictionary['Account']['fields']['shipping_address_oktmo'] = array (
    'name' => 'shipping_address_oktmo',
    'vname' => 'LBL_SHIPPING_ADDRESS_OKTMO',
    'type' => 'varchar',
    'len' => 100,
    'group' => 'shipping_address',
    'merge_filter' => 'enabled',
    );

$dictionary['Account']['indices']['idx_accnt_inn_del'] = array (
      'name' => 'idx_accnt_inn_del',
      'type' => 'index',
      'fields' => array ('inn', 'deleted'),
//      'source' => 'non-db'
);

$dictionary['Account']['fields']['dadata_checked'] = array (
            'name' => 'dadata_checked',
            'vname' => 'LBL_DADATA_CHECKED',
            'type' => 'bool',
            'default' => '0',
            'reportable' => false,
            'inline_edit' => false,
);
