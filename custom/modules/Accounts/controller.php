<?php

require_once ('custom/include/dadata.php');

class AccountsController extends SugarController
{

    protected function action_DaDataRequest()
    {
			global $sugar_config, $current_user;

			if (!isset($_REQUEST['record']) || empty($_REQUEST['record'])) {
				echo "Не передан ид контрагента";
				die;
			}

			$bean = BeanFactory::getBean ('Accounts', $_REQUEST['record']);
			if($bean == false || empty($bean->id)) {
				echo "Не найден контрагент";
				die;
			};

      $is_owner = $current_user->id == $bean->assigned_user_id;
      require_once("modules/SecurityGroups/SecurityGroup.php");
      $in_group = SecurityGroup::groupHasAccess('Accounts', $bean->id, 'edit');
			if (!ACLController::checkAccess('Accounts', 'edit', $is_owner, 'module', $in_group)) {
				echo "Нет прав";
			}

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

			$bean->save();

			header("Location: index.php?action={$_REQUEST['return_action']}&module={$_REQUEST['return_module']}&record={$_REQUEST['return_id']}");
    }

}
