<?php

$hook_array['before_save'][] = Array(
    10,
    'Бессрочность',
    'custom/modules/dp_license/hooks.php',
    'dp_licenseLogicHooks',
    'setIndefinitelyBeforeSave'
);
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
