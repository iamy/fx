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
      'fields' => array ('inn_winer_c')
);
 ?>
