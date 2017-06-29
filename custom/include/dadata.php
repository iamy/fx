<?php

/**
 * Работа с сервисом dadata.ru
 */
class DaData {

  /** адрес сервиса подсказок */
  const SUGGEST_URL = "https://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/";

  /** публичный ключ */
  private $api_key = null;
  /** секретный ключ */
  private $secret_key = null;

  /** http код последнего запроса к сервису */
  private $last_http_code = null;
  /** код ошибки последнего вызова curl_exec */
  private $last_curl_errno = null;
  /** текст ошибки последнего вызова curl_exec */
  private $last_curl_error = null;

  /**
   * Конструктор класса
   * @param  api_key string публичный ключ
   * @param secret_key string секретный ключ
   **/
  function __construct ($api_key, $secret_key = null) {
    $this->api_key = $api_key;
    $this->secret_key = $secret_key;
  }

  /**
   * Получить подсказку по организации
   * @param query string запрос
   * @return array массив (name, inn, kpp) | false
   *         возвращает сведения о первой найденной организации
   */
  function suggest_party ($query) {
    return $this->suggest ('party', $query);
  }

  /**
   * Получить подсказку по email
   * @param  query string запрос
   * @return array массив (local, domain) | false
   *         возвращает сведения о первой найденной организации
   */
  function suggest_email ($query) {
    return $this->suggest ('email', $query);
  }

  /**
   * Получить подсказку по данной тематике
   * @param  subject string тематика (party или email)
   * @param  query string запрос
   * @return array массив (local, domain) | false
   *         возвращает сведения о первой найденной организации
   */
  function suggest ($subject, $query) {
    $url = self::SUGGEST_URL . $subject;

    $httpheaders = array (
      "Content-Type: application/json",
      "Accept: application/json",
      "Authorization: Token {$this->api_key}",
    );

    $data = array ('query' => $query);
    $json_data = json_encode($data);

    $curl = curl_init();

    curl_setopt($curl, CURLOPT_POST, 1);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER,1);
    curl_setopt($curl, CURLOPT_HTTPHEADER, $httpheaders);
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_POSTFIELDS, $json_data);

    $res = curl_exec ($curl);
    $this->last_curl_errno = curl_errno ($curl);
    $this->last_curl_error = curl_error ($curl);
    $this->last_http_code = curl_getinfo ($curl, CURLINFO_HTTP_CODE);

    if ($this->last_http_code !== 200) $res = false;

    if ($res !== false) {
      $res = json_decode ($res, true);
    }

    if ($res) {
      if (count($res) > 0) {
        $res = $res['suggestions'][0]['data'];
      }
    }

    return $res;
  }

  /*
  function clean($bean) {

    $url = "https://dadata.ru/api/v2/clean";

    $data = array (
     'structure' => array (
//       'NAME',
       'PHONE',
       //'EMAIL',
     ),
     'data' => array (
       array (
//         $bean->account_name,
         $bean->phone_winer_c,
         //$bean->email_win_c,
       )
     )
    );
    $json_data = json_encode($data);


    $httpheaders = array (
      "Content-Type: application/json",
      "Authorization: Token ${this->api_key}",
      "X-Secret: {$this->secret_key}"
    );

    $curl = curl_init();

    curl_setopt($curl, CURLOPT_POST, 1);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER,1);
    curl_setopt($curl, CURLOPT_HTTPHEADER, $httpheaders);
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_POSTFIELDS, $json_data);

    $res = curl_exec ($curl);

    return $res;
  }
  */
}



?>
