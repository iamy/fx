<?php
require_once('include/MVC/Controller/SugarController.php');

class AOS_ProductsController extends SugarController {

	function action_RenameImages() { 
		global $current_user;
		if(!$current_user->is_admin) die('Error!');

    require ('custom/modules/AOS_Products/rename_products_images.php');
	}

}
?>
