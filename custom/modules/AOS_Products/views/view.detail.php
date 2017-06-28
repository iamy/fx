<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


require_once('include/MVC/View/views/view.detail.php');

class AOS_ProductsViewDetail extends ViewDetail
{
 	public function display()
 	{
    $this->ss->assign('IMAGE_URL', "index.php?entryPoint=download&id={$this->bean->id}_product_image_filename&type=AOS_Products");
    echo '<link rel="stylesheet" href="custom/include/lightbox2/css/lightbox.min.css">';
    parent::display();
    echo '<script src="custom/include/lightbox2/js/lightbox.min.js"></script>';
 	}
}
