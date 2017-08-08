<?php 
if (!defined('sugarEntry')) {
    define('sugarEntry', true);
}
include 'include/MVC/preDispatch.php';
$startTime = microtime(true);
require_once 'include/entryPoint.php';
ob_start();
require_once 'include/MVC/SugarApplication.php';
$app = new SugarApplication();
$app->startSession();
$app->execute();

$realty = $bean->get_linked_beans('dp_realty_accounts'); //получаем сведения о недвижимости

if (isset($realty[1]) && !empty($realty[1])) {
    $result = $realty[1]->status_nedv;
} else {
    $result = '';
}

echo($result);