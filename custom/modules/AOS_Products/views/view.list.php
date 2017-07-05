<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


require_once('include/MVC/View/views/view.list.php');

class AOS_ProductsViewList extends ViewList
{
 	public function display()
 	{
    echo '<link rel="stylesheet" href="custom/include/lightbox2/css/lightbox.min.css">';
    parent::display();
    echo '<script src="custom/include/lightbox2/js/lightbox.min.js"></script>';
 	}
}
