$(document).ready(function(){

    // Переносим "Бессрочно" рядом с "Срок выдачи лицензии"
    $('#srok_work_sro_c').closest('td').append('<label id="indefinitely_srok_work_sro_label" for="indefinitely_srok_work_sro_c">' + $('#indefinitely_srok_work_sro_c_label').html() + '</label>');
    $('#srok_work_sro_c').closest('td').append($('#indefinitely_srok_work_sro_c').closest('td').html());

    // Удаляем исходную строку
    $('#indefinitely_srok_work_sro_c_label').closest('tr').remove();

    // Определение отображения даты или бессрочности
    showIndefinitely();

    // Определение отображения даты или бессрочности при каждой смене даты или чекбокса
    $('#indefinitely_srok_work_sro_c').change(function(){
        // Изменения в чекбоксе
        clickIndefinitely();
    });
    $('#srok_work_sro_c').change(function(){
        // Изменения в поле с датой
        showIndefinitely();
    });

    // Изменение поле с датой через нативный JS  (а то после календаря не отрабатывает)
    var srok_work_sro_c_input = Calendar.getDateField('srok_work_sro_c', 'EditView');
    srok_work_sro_c_input.onchange = function () {
        showIndefinitely();
    }





});

/**
 * Определение отображения даты или бессрочности
 */
function showIndefinitely() {

    if($('#srok_work_sro_c').val() != '') {
        // Если указано значение в поле с датой
        // То делаем не активным чекбокс с бессрочностью
        $('#indefinitely_srok_work_sro_c').attr('disabled', true);
        // И снимаем с него галку, если была
        $('#indefinitely_srok_work_sro_c').removeAttr('checked');
        // Делаем серой надпись
        $('#indefinitely_srok_work_sro_label').css('color', 'grey');
    } else {
        // Если поле с датой - пустое
        // Делаем активным чекбокс с бессрочностью
        $('#indefinitely_srok_work_sro_c').removeAttr('disabled');
        // Делаем надпись черной
        $('#indefinitely_srok_work_sro_label').css('color', 'black');

    }

    // Проверка на чекнутость бессрочности
    if($('#indefinitely_srok_work_sro_c').is(":checked")) {
        // Включена бессрочность

        // Делаем неактивным поле с датой
        $('#srok_work_sro_c').attr('disabled', true);
        $('#srok_work_sro_c_trigger').attr('disabled', true);

        // Скрываем триггерную кнопку
        $('#srok_work_sro_c_trigger').hide();

    } else {
        // Отключена бессрочность

        // Делаем активным поле с вводом даты
        $('#srok_work_sro_c').removeAttr('disabled');

        // Делаем видимой триггерную кнопку
        $('#srok_work_sro_c_trigger').show();

    }
}

/**
 * Кликнули по Бессрочности
 */
function clickIndefinitely() {
    if($('#indefinitely_srok_work_sro_c').is(":checked")) {
        // Если только что включили чекбокс с Бессрочностью

        // Очищаем поле с датой
        $('#srok_work_sro_c').val('');

    }
    // Отправляемся в функцию отображения даты и бессрочности
    showIndefinitely();
}