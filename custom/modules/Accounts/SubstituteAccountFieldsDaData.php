<?php

require_once ('custom/include/dadata.php');

function substituteAccountsFieldsDaData (Account &$bean) {
    global $sugar_config, $db;

    $dadata = new DaData ($sugar_config['dadata_api_key']);

    $q = "";
    if (!empty($bean->shname)) $q = $bean->shname;
    if (!empty($bean->name)) $q = $bean->name;
    if (!empty($bean->inn)) $q = $bean->inn;
    if (!empty($q)) {
        $q = html_entity_decode($q);
        $res = $dadata->suggest_party ($q);
        
        if ($res !== false) {
            if(!empty($res['name']['full_with_opf'])) $bean->name = $res['name']['full_with_opf'];
            if(!empty($res['name']['short_with_opf'])) $bean->shname = $res['name']['short_with_opf'];
            if(!empty($res['inn'])) $bean->inn = $res['inn'];
            if(!empty($res['kpp'])) $bean->kpp = $res['kpp'];
            if(!empty($res['ogrn'])) $bean->ogrn = $res['ogrn'];
            if(!empty($res['okved'])) $bean->sic_code = $res['okved'];
            if(!empty($res['opf']['code'])) $bean->okopf = $res['opf']['code'];
            if(!empty($res['state']['registration_date'])) {
                $bean->date_gosreg = date('Y-m-d', $res['state']['registration_date'] / 1000);
            }

            if (is_array ($res['address']['data'])) {
                $bean->billing_address_postalcode = $res['address']['data']['postal_code'];
                $bean->billing_address_country = $res['address']['data']['country'];
                $bean->billing_address_state = $res['address']['data']['region_with_type'];
                $bean->billing_address_area = $res['address']['data']['area_with_type'];
                $bean->billing_address_city = $res['address']['data']['city_with_type'];
                $bean->billing_address_street = $res['address']['data']['street_with_type'];
                $bean->billing_address_house = "{$res['address']['data']['house_type']} {$res['address']['data']['house']}";
                $bean->billing_address_structure = "{$res['address']['data']['block_type']} {$res['address']['data']['block']}";
                $bean->billing_address_apartment = "{$res['address']['data']['flat_type']} {$res['address']['data']['flat']}";
                $bean->billing_address_oktmo = $res['address']['data']['oktmo'];
            }

            if (strlen($bean->inn) != 12 && isset($res['management']['name'])) {
                list ($last_name, $first_name, $middle_name) = explode (' ', $res['management']['name']);
 
                $exists = $db->getOne ("
                      SELECT 1 
                      FROM accounts_contacts AS ac
                      INNER JOIN contacts AS c ON c.id = ac.contact_id
                      INNER JOIN contacts_cstm cc ON cc.id_c = c.id
                      WHERE ac.account_id = '{$bean->id}' 
                          AND ac.deleted = 0
                          AND CONCAT_WS(' ', c.last_name, c.first_name, cc.patr_c) = '{$res['management']['name']}'
                          AND c.deleted = 0
                ");

                if (empty($exists)) {
                    $bean->load_relationship('contacts');
                    $contact = BeanFactory::newBean('Contacts');
                    $contact->last_name = $last_name;
                    $contact->first_name = $first_name;
                    $contact->patr_c = $middle_name;
                    $contact->save();
                    $bean->contacts->add($contact->id);
                }
            }
        }
    }

  /*
	if (!empty($bean->email_win_c)) {
    $res = $dadata->suggest_email ($bean->email_win_c);
		if ($res !== false) {
			if(!empty($res['local'])) $bean->email_win_c = "{$res['local']}@{$res['domain']}";
		}
	}
  */

    $q = "";
    if (!empty($bean->tcustomer_c)) $q = $bean->tcustomer_c;
    if (!empty($bean->inn_customer_c)) $q = $bean->inn_customer_c;
    if (!empty($q)) {
        $res = $dadata->suggest_party ($q);
        if ($res !== false) {
            if(!empty($res['name'])) $bean->tcustomer_c = $res['name'];
            if (!empty($res['inn'])) $bean->inn_customer_c = $res['inn'];
        }
    }

	/* Сверку телефона сделаем потом
  $data = array (
   'structure' => array (
     'PHONE',
     'EMAIL',
   ),
   'data' => array (
     array (
       $bean->phone_winer_c,
       $bean->email_win_c,
       )
   )
  );
	$res = $dadata->clean($bean);
	if (is_array($res)) {
		if(!empty($res['phone'])) $bean->phone_winer_c = $res['phone'];
		if(!empty($res['email'])) $bean->email_win_c = $res['email'];
	}
	*/

}
