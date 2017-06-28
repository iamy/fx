<?php

global $sugar_config, $db;


$dir = $sugar_config['upload_dir'];
$files = array_diff(scandir($dir), array('..', '.'));

foreach ($files as $f) {
  echo "Обрабатываем файл '$f'<br>";
  $id = $db->getOne ("
    SELECT id
    FROM aos_products
    WHERE deleted = 0
      AND IFNULL(product_image_filename, '') = ''
      AND INSTR(product_image, '{$dir}{$f}') > 0
  ");
  if ($id) {
    echo "  найден продукт, ид = $id<br>";
    rename ("{$dir}{$f}", "{$dir}{$id}_product_image_filename");
    $db->query("UPDATE aos_products SET product_image_filename = '$f' WHERE id = '$id'");
  }
}

exit;
?>
