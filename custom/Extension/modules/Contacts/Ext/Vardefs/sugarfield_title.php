<?php
 // created: 2017-06-01 09:32:59
$dictionary['Contact']['fields']['title']['len']='12';
$dictionary['Contact']['fields']['title']['required']=true;
$dictionary['Contact']['fields']['title']['inline_edit']=true;
$dictionary['Contact']['fields']['title']['merge_filter']='disabled';
$dictionary['Contact']['fields']['title']['comments']='';
$dictionary['Contact']['fields']['title']['duplicate_merge']='enabled';
$dictionary['Contact']['fields']['title']['duplicate_merge_dom_value']='1';

$dictionary['Contact']['fields']['is_manager'] = array (
            'name' => 'is_manager',
            'vname' => 'LBL_IS_MANAGER',
            'type' => 'bool',
            'default' => '0',
            'audited' => true,
	    'comment' => 'Является руководителем'
);

$dictionary['Contact']['fields']['is_general_accountant'] = array (
            'name' => 'is_general_accountant',
            'vname' => 'LBL_IS_GENERAL_ACCOUNTANT',
            'type' => 'bool',
            'default' => '0',
            'audited' => true,
	    'comment' => 'Является главным бухгалтером'
);

$dictionary['Contact']['fields']['position'] = array (
            'name' => 'position',
            'vname' => 'LBL_POSITION',
            'type' => 'varchar',
            'len' => '255',
            'audited' => true,
);
 ?>
