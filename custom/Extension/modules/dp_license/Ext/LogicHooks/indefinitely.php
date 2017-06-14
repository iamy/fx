<?php

$hook_array['after_retrieve'][] = Array(
    10,
    'Бессрочность',
    'custom/modules/dp_license/hooks.php',
    'dp_licenseLogicHooks',
    'setIndefinitely'
);
$hook_array['process_record'][] = Array(
    10,
    'Бессрочность',
    'custom/modules/dp_license/hooks.php',
    'dp_licenseLogicHooks',
    'setIndefinitely'
);
