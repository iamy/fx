<?php

$hook_array['before_save'][] = Array(
    10,
    'Бессрочность',
    'custom/modules/sro_svid_sro/hooks.php',
    'sro_svid_sroLogicHooks',
    'setIndefinitelyBeforeSave'
);
$hook_array['after_retrieve'][] = Array(
    10,
    'Бессрочность',
    'custom/modules/sro_svid_sro/hooks.php',
    'sro_svid_sroLogicHooks',
    'setIndefinitely'
);
$hook_array['process_record'][] = Array(
    10,
    'Бессрочность',
    'custom/modules/sro_svid_sro/hooks.php',
    'sro_svid_sroLogicHooks',
    'setIndefinitely'
);
