<?php

class store_image_logic_hook {

  /**
   * Сохраняем название файла
   */
  function save_filename ($bean, $event, $arguments) {

		if (isset($_POST['deleteAttachment']) && $_POST['deleteAttachment']=='1') {
			$bean->product_image_filename = '';
		}

    // Если файл был действительно загружен
		if (isset($_FILES['uploadimage']['tmp_name'])&&$_FILES['uploadimage']['tmp_name']!=""){
        $bean->product_image_filename=$_FILES['uploadimage']['name'];
    }
  }

  /**
   * Переименовывает только что загруженный файл по схеме {$bean->id}_product_image
   */
  function store ($bean, $event, $arguments) {
    global $sugar_config;

    // Если файл был действительно загружен
		if (isset($_FILES['uploadimage']['tmp_name'])&&$_FILES['uploadimage']['tmp_name']!=""){

    		require_once('include/upload_file.php');

        // переименовываем только-что загруженный файл
        rename(
          $sugar_config['upload_dir'].$_FILES['uploadimage']['name'],
          $sugar_config['upload_dir'].$bean->id.'_product_image_filename'
        );
    }
  }

}

?>
