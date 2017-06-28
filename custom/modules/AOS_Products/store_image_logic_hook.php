<?php

class store_image_logic_hook {

  /**
   * Переименовывает только что загруженный файл по схеме {$bean->id}_product_image
   */
  function store ($bean, $event, $arguments) {
    global $sugar_config;

    // Если файл был действительно загружен
		if (isset($_FILES['uploadimage']['tmp_name'])&&$_FILES['uploadimage']['tmp_name']!=""){

    		require_once('include/upload_file.php');

        // сохраняем название файла, а не путь к нему
        $bean->product_image=$_FILES['uploadimage']['name'];

        // переименовываем только-что загруженный файл
        rename(
          $sugar_config['upload_dir'].$_FILES['uploadimage']['name'],
          $sugar_config['upload_dir'].$bean->id.'_product_image'
        );
    }
  }

}

?>
