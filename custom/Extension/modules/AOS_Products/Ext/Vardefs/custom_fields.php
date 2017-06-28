<?php
 // created: 2017-06-07 08:53:49
$dictionary['AOS_Products']['fields']['product_image']['inline_edit'] = false;
$dictionary['AOS_Products']['fields']['price']['inline_edit']=true;
$dictionary['AOS_Products']['fields']['price']['merge_filter']='disabled';

$dictionary['AOS_Products']['fields']['product_image_filename'] = array(
    'name' => 'product_image_filename',
    'vname' => 'LBL_PRODUCT_IMAGE',
    'type' => 'varchar',
    'len' => '255',
    'reportable' => true,
    'inline_edit' => false,
    'comment' => 'File name associated with the note (attachment)'
);

 ?>
