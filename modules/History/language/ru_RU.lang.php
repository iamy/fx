<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.

 * SuiteCRM is an extension to SugarCRM Community Edition developed by Salesagility Ltd.
 * Copyright (C) 2011 - 2014 Salesagility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for  technical reasons, the Appropriate Legal Notices must
 * display the words  "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 ********************************************************************************/

 


$mod_strings = array (
  'LBL_MODULE_NAME' => 'История',
  'LBL_MODULE_TITLE' => 'История: ГЛАВНАЯ',
  'LBL_SEARCH_FORM_TITLE' => 'История - поиск',
  'LBL_LIST_FORM_TITLE' => 'История',
  'LBL_LIST_SUBJECT' => 'Тема',
  'LBL_LIST_CONTACT' => 'Контакт',
  'LBL_LIST_RELATED_TO' => 'Относится к',
  'LBL_LIST_DATE' => 'Дата',
  'LBL_LIST_TIME' => 'Время начала',
  'LBL_LIST_CLOSE' => 'Закрыть',
  'LBL_SUBJECT' => 'Тема:',
  'LBL_STATUS' => 'Статус:',
  'LBL_LOCATION' => 'Место:',
  'LBL_DATE_TIME' => 'Дата и время начала:',
  'LBL_DATE' => 'Дата начала:',
  'LBL_TIME' => 'Время начала:',
  'LBL_DURATION' => 'Продолжительность:',
  'LBL_HOURS_MINS' => '(часов:минут)',
  'LBL_CONTACT_NAME' => 'Контактное лицо: ',
  'LBL_MEETING' => 'Встреча:',
  'LBL_DESCRIPTION_INFORMATION' => 'Описание',
  'LBL_DESCRIPTION' => 'Описание:',
  'LBL_COLON' => ':',
  'LBL_DEFAULT_STATUS' => 'Запланировано',
  'LNK_NEW_CALL' => 'Назначить звонок',
  'LNK_NEW_MEETING' => 'Назначить встречу',
  'LNK_NEW_TASK' => 'Создать задачу',
  'LNK_NEW_NOTE' => 'Создать заметку или вложение',
  'LNK_NEW_EMAIL' => 'Отправить E-mail в архив',
  'LNK_CALL_LIST' => 'Звонки',
  'LNK_MEETING_LIST' => 'Встречи',
  'LNK_TASK_LIST' => 'Задачи',
  'LNK_NOTE_LIST' => 'Заметки',
  'LNK_EMAIL_LIST' => 'E-mail',
  'ERR_DELETE_RECORD' => 'Перед удалением должен быть указан номер записи.',
  'NTC_REMOVE_INVITEE' => 'Вы уверены, что хотите удалить это приглашение из данной встречи?',
  'LBL_INVITEE' => 'Приглашённые',
  'LBL_LIST_DIRECTION' => 'Направление',
  'LBL_DIRECTION' => 'Направление',
  'LNK_NEW_APPOINTMENT' => 'Новое назначение',
  'LNK_VIEW_CALENDAR' => 'Сегодня',
  'LBL_OPEN_ACTIVITIES' => 'Открытие мероприятия',
  'LBL_HISTORY' => 'История',
  'LBL_UPCOMING' => 'Предстоящие встречи/звонки',
  'LBL_TODAY' => 'в течение ',
  'LBL_NEW_TASK_BUTTON_TITLE' => 'Создать задачу',
  'LBL_NEW_TASK_BUTTON_LABEL' => 'Создать задачу',
  'LBL_SCHEDULE_MEETING_BUTTON_TITLE' => 'Запланировать встречу',
  'LBL_SCHEDULE_MEETING_BUTTON_LABEL' => 'Назначить встречу',
  'LBL_SCHEDULE_CALL_BUTTON_TITLE' => 'Запланировать звонок',
  'LBL_SCHEDULE_CALL_BUTTON_LABEL' => 'Назначить звонок',
  'LBL_NEW_NOTE_BUTTON_TITLE' => 'Создать заметку или вложение',
  'LBL_NEW_NOTE_BUTTON_LABEL' => 'Создать заметку или вложение',
  'LBL_TRACK_EMAIL_BUTTON_TITLE' => 'Архив E-mail',
  'LBL_TRACK_EMAIL_BUTTON_LABEL' => 'Архив E-mail',
  'LBL_LIST_STATUS' => 'Статус',
  'LBL_LIST_DUE_DATE' => 'Дата завершения',
  'LBL_LIST_LAST_MODIFIED' => 'Последнее изменение',
  'NTC_NONE_SCHEDULED' => 'Ничего не запланировано.',
  'appointment_filter_dom' => array(
  	 'today' => 'сегодня'
  	,'tomorrow' => 'завтра'
  	,'this Saturday' => 'на этой неделе'
  	,'next Saturday' => 'следующая неделя'
  	,'last this_month' => 'этот месяц'
  	,'last next_month' => 'следующий месяц'
  ),
  'LNK_IMPORT_NOTES'=>'Импортировать заметки',
  'NTC_NONE'=>'Нет',
	'LBL_ACCEPT_THIS'=>'Принято?',
	'LBL_DEFAULT_SUBPANEL_TITLE' => 'История',

	'LBL_CATEGORY' => 'Категория',
	'LBL_LIST_CATEGORY' => 'Категория',

);

?>