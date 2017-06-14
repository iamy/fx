<?php
/**
 * Created by PhpStorm.
 * User: evgen
 * Date: 14.06.17$
 * Time: 8:46
 */

class sro_svid_sroLogicHooks {

    /**
     * Обнуление срока перед сохранением для Бессрочности
     * @param $bean
     * @param $event
     * @param $arguments
     */
    public function setIndefinitelyBeforeSave($bean, $event, $arguments) {
        if($bean->indefinitely_srok_work_sro_c) $bean->srok_work_sro_c = '';
    }

    /**
     * Установить признак Бессрочности
     * @param $bean
     * @param $event
     * @param $arguments
     */
    public function setIndefinitely($bean, $event, $arguments) {
        if(isset($_REQUEST['action']) AND !in_array($_REQUEST['action'], array('EditView'))) {
            // В режимах кроме редактирования

            if($bean->indefinitely_srok_work_sro_c) {
                // Если включен чекбокс Бессрочности
                // Вместо даты указываем слово "Бессрочно"
                $bean->srok_work_sro_c = 'Бессрочно';
            }
        }
    }

}