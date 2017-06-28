<?php
$hook_array['before_save'][] = Array(
    10,
    'Сохранение изображения продукта a la заметки (сохраняем название файла)',
    'custom/modules/AOS_Products/store_image_logic_hook.php',
    'store_image_logic_hook',
    'save_filename',
);

$hook_array['after_save'][] = Array(
    10,
    'Сохранение изображения продукта a la заметки',
    'custom/modules/AOS_Products/store_image_logic_hook.php',
    'store_image_logic_hook',
    'store',
);

$hook_array['process_record'][] = Array(
    10,
    'Формирование ссылки на загрузку изображения',
    'custom/modules/AOS_Products/process_record_logic_hook.php',
    'process_record_logic_hook',
    'process',
);

?>
