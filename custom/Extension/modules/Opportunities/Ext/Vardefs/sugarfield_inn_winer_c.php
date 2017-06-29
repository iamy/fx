<?php
 // created: 2017-06-05 13:30:24
$dictionary['Opportunity']['fields']['inn_winer_c']['inline_edit']='1';
$dictionary['Opportunity']['fields']['inn_winer_c']['labelValue']='ИНН победителя';
$dictionary['Opportunity']['fields']['inn_winer_c']['importable']='true';
$dictionary['Opportunity']['fields']['inn_winer_c']['duplicate_merge']='enabled';
$dictionary['Opportunity']['fields']['inn_winer_c']['duplicate_merge_dom_value']='1';

$dictionary['Opportunity']['indices']['idx_opp_inn_winer_c'] = array (
      'name' => 'idx_opp_inn_winer_c',
      'type' => 'index',
      'fields' => array ('inn_winer_c'),
      'source' => 'non-db'
);

/*

$dictionary["Opportunity_cstm"] = array(
    'table' => 'opportunities_cstm',
    'fields' => //We can added fields here, we must at least have the id_c field
    array(
        0 =>
        array(
            'name' => 'id_c',
            'type' => 'id',
        ),
        1 =>
        array(
            'name' => 'inn_winer_c',
            'type' => 'varchar',
        ),
    ),
    'indices' => // our custom indexes go here
    array(
        0 =>
        array(
            'name' => 'idx_opp_inn_winer_c',
            'type' => 'index',
            'fields' =>
            array(
                0 => 'inn_winer_c',
            ),
        ),
    ),
);
*/
 ?>
