<?php
$hook_array['after_save'][] = Array(
    10,
    'Сохранение изображения продукта a la заметки',
    'custom/modules/AOS_Products/store_image_logic_hook.php',
    'store_image_logic_hook',
    'store',
);

?>
