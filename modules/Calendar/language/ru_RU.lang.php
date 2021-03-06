<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by Salesagility Ltd.
 * Copyright (C) 2011 - 2016 Salesagility Ltd.
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

	'LBL_MODULE_NAME' => 'Календарь',
	'LBL_AGENDADAY' => 'День',
	'LBL_AGENDAWEEK' => 'Неделя',

	'LBL_MODULE_NAME' => 'Календарь',
	'LBL_MODULE_TITLE' => 'Календарь',
	'LNK_NEW_CALL' => 'Назначить звонок',
	'LNK_NEW_MEETING' => 'Назначить встречу',
	'LNK_NEW_TASK' => 'Создать задачу',
	'LNK_CALL_LIST' => 'Звонки',
	'LNK_MEETING_LIST' => 'Встречи',
	'LNK_TASK_LIST' => 'Задачи',
	'LNK_TASK' => 'Задача',
	'LNK_TASK_VIEW' => 'Просмотр задачи',
	'LNK_EVENT' => 'Событие',
	'LNK_EVENT_VIEW' => 'Просмотр события',
	'LNK_VIEW_CALENDAR' => 'Сегодня',
	'LNK_IMPORT_CALLS' => 'Импорт звонков',
	'LNK_IMPORT_MEETINGS' => 'Импорт встреч',
	'LNK_IMPORT_TASKS' => 'Импорт задач',
	'LBL_MONTH' => 'Месяц',
	'LBL_AGENDADAY' => 'День',
	'LBL_YEAR' => 'Год',
	'LBL_AGENDAWEEK' => 'Неделя',
	'LBL_PREVIOUS_MONTH' => 'Предыдущий месяц',
	'LBL_PREVIOUS_DAY' => 'Предыдущий день',
	'LBL_PREVIOUS_YEAR' => 'Предыдущий год',
	'LBL_PREVIOUS_WEEK' => 'Предыдущая неделя',
	'LBL_NEXT_MONTH' => 'Следующий месяц',
	'LBL_NEXT_DAY' => 'Следующий день',
	'LBL_NEXT_YEAR' => 'Следующий год',
	'LBL_NEXT_WEEK' => 'Следующая неделя',
	'LBL_AM' => 'Дня',
	'LBL_PM' => 'Вечера',
	'LBL_SCHEDULED' => 'Запланировано',
	'LBL_BUSY' => 'Занято',
	'LBL_CONFLICT' => 'Конфликт',
	'LBL_USER_CALENDARS' => 'Пользовательские календари',
	'LBL_SHARED' => 'Сводный',
	'LBL_PREVIOUS_SHARED' => 'Пред.',
	'LBL_NEXT_SHARED' => 'След.',
	'LBL_SHARED_CAL_TITLE' => 'Сводный календарь',
	'LBL_USERS' => 'Пользователи',
	'LBL_REFRESH' => 'Обновить',
	'LBL_EDIT_USERLIST' => 'Выбор пользователей',
	'LBL_SELECT_USERS' => 'Просмотр календарей выбранных пользователей',
	'LBL_FILTER_BY_TEAM' => 'Фильтрация списка пользователей по группам:',
	'LBL_ASSIGNED_TO_NAME' => 'Ответственный(ая)',
	'LBL_DATE' => 'Начальные дата и время',
	'LBL_CREATE_MEETING' => 'Назначить встречу',
	'LBL_CREATE_CALL' => 'Назначить звонок',
	'LBL_HOURS_ABBREV' => 'час.',
	'LBL_MINS_ABBREV' => 'мин.',


	'LBL_YES' => 'Да',
	'LBL_NO' => 'Нет',
	'LBL_SETTINGS' => 'Настройка календаря',
	'LBL_CREATE_NEW_RECORD' => 'Назначить мероприятие',
	'LBL_LOADING' => 'Загрузка ......',
	'LBL_SAVING' => 'Сохранение ......',
	'LBL_SENDING_INVITES' => 'Сохранение и отправка приглашений .....',
	'LBL_CONFIRM_REMOVE' => 'Вы действительно хотите удалить эту запись?',
	'LBL_CONFIRM_REMOVE_ALL_RECURRING' => 'Вы действительно хотите удалить все записи о данном мероприятии, включая повторные?',
	'LBL_EDIT_RECORD' => 'Редактирование мероприятия',
	'LBL_ERROR_SAVING' => 'В процессе сохранения произошла ошибка',
	'LBL_ERROR_LOADING' => 'В процессе загрузки произошла ошибка',
	'LBL_GOTO_DATE' => 'Перейти на дату',
	'NOTICE_DURATION_TIME' => 'Время продолжительности должно быть больше нуля',
	'LBL_STYLE_BASIC' => 'Основной', //Can be translated in all caps. This string will be used by SuiteP template menu actions
	'LBL_STYLE_ADVANCED' => 'Расширенный', //Can be translated in all caps. This string will be used by SuiteP template menu actions

	'LBL_NO_USER' => 'Нет совпадений для поля: Ответственный(ая)',
	'LBL_SUBJECT' => 'Тема',
	'LBL_DURATION' => 'Продолжительность',
	'LBL_STATUS' => 'Статус',
	'LBL_PRIORITY' => 'Приоритет',

	'LBL_SETTINGS_TITLE' => 'Настройка календаря',
	'LBL_SETTINGS_DISPLAY_TIMESLOTS' => 'Разделять сутки на временные интервалы:',
	'LBL_SETTINGS_TIME_STARTS'=>'Время начала:',
	'LBL_SETTINGS_TIME_ENDS'=>'Время завершения:',
	'LBL_SETTINGS_CALLS_SHOW' => 'Отображать звонки:',
	'LBL_SETTINGS_TASKS_SHOW' => 'Отображать задачи:',
    'LBL_SETTINGS_COMPLETED_SHOW' => 'Отображать завершённые мероприятия:',
    'LBL_SETTINGS_DISPLAY_SHARED_CALENDAR_SEPARATE' => 'Разделённый сводный календарь:',

	'LBL_SAVE_BUTTON' => 'Сохранить',
	'LBL_DELETE_BUTTON' => 'Удалить',
	'LBL_APPLY_BUTTON' => 'Применить',
	'LBL_SEND_INVITES' => 'Сохранить и отправить приглашения',
	'LBL_CANCEL_BUTTON' => 'Отказаться',
	'LBL_CLOSE_BUTTON' => 'Закрыть',

	'LBL_GENERAL_TAB' => 'Основное',
	'LBL_PARTICIPANTS_TAB' => 'Участники',
	'LBL_REPEAT_TAB' => 'Повторы',
	
	'LBL_REPEAT_TYPE' => 'Повторять',
	'LBL_REPEAT_INTERVAL' => 'Каждые',
	'LBL_REPEAT_END' => 'Прекратить',	
	'LBL_REPEAT_END_AFTER' => 'после',
	'LBL_REPEAT_OCCURRENCES' => 'повторов',
	'LBL_REPEAT_END_BY' => 'By',
	'LBL_REPEAT_DOW' => 'Дни повторов',
	'LBL_REPEAT_UNTIL' => 'Повторять до',
	'LBL_REPEAT_COUNT' => 'Число повторов',
	'LBL_REPEAT_LIMIT_ERROR' => 'Вы пытаетесь создать более $limit встреч.',
	
	'LBL_EDIT_ALL_RECURRENCES' => 'Править, включая повторы',
	'LBL_REMOVE_ALL_RECURRENCES' => 'Удалить, включая повторы',

	'LBL_DATE_END_ERROR' => 'Дата начала не может быть позже даты окончания',
	'ERR_YEAR_BETWEEN' => 'Календарь не может отобразить запрашиваемый год. <br>Значение должно быть в интервале от 1970 до 2037 года.',
	'ERR_NEIGHBOR_DATE' => 'get_neighbor_date_str: not defined for this view',
    'LBL_NO_ITEMS_MOBILE' => 'На эту неделю не назначено ни одного мероприятия.',
    'LBL_GENERAL_SETTINGS' => 'Настройки',
    'LBL_COLOR_SETTINGS' => 'Настройки цветовой схемы',
	'LBL_MODULE' => 'Модуль',
	'LBL_BODY' => 'Фон',
	'LBL_BORDER' => 'Граница',
	'LBL_TEXT' => 'Текст',
);

$mod_list_strings = array(
	'dom_cal_weekdays'=>
		array(
			"Вс",
			"Пн",
			"Вт",
			"Ср",
			"Чт",
			"Пт",
			"Сб",
		),
	'dom_cal_weekdays_long'=>
		array(
			"Воскресенье",
			"Понедельник",
			"Вторник",
			"Среда",
			"Четверг",
			"Пятница",
			"Суббота",
		),
	'dom_cal_month'=>
		array(
			"",
			"Янв",
			"Фев",
			"Мар",
			"Апр",
			"Май",
			"Июн",
			"Июл",
			"Авг",
			"Сен",
			"Окт",
			"Ноя",
			"Дек",
		),
	'dom_cal_month_long'=>
		array(
			"",
			"Январь",
			"Февраль",
			"Март",
			"Апрель",
			"Май",
			"Июнь",
			"Июль",
			"Август",
			"Сентябрь",
			"Октябрь",
			"Ноябрь",
			"Декабрь",
		),
);
?>
