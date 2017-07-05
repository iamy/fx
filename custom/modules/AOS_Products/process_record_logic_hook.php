<?php

class process_record_logic_hook {

  /**
   * Формирование ссылки на загрузку изображения
   */
  function process ($bean, $event, $arguments) {

    if (!empty($bean->product_image_filename)) {
      $url = "index.php?entryPoint=download&id={$bean->id}_product_image_filename&type=AOS_Products";
      $bean->product_image_filename = "
        <a data-lightbox='product-image' href='$url' data-title='{$bean->name}'>
           <img height='100px' src='$url'/>
        </a>";
		}
  }

}

?>
