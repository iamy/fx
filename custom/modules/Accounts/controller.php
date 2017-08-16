<?php

require_once ('custom/modules/Accounts/SubstituteAccountFieldsDaData.php');

class AccountsController extends SugarController
{

    protected function action_DaDataRequest() {
      global $current_user, $db;

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

      $qacc = "";
      if (!empty($bean->shname)) $qacc = $bean->shname;
      if (!empty($bean->name)) $qacc = $bean->name;
      if (!empty($bean->inn)) $qacc = $bean->inn;

      if (!empty($bean->tcustomer_c)) $qcustomer = $bean->tcustomer_c;
      if (!empty($bean->inn_customer_c)) $qustomer = $bean->inn_customer_c;
   

      $res = getAccountsFieldsDaData ($qacc, $qcustomer);

      if(is_array($res) && isset($res['bean'])) {
        foreach ($res['bean'] as $k => $v) $bean->$k = $v;
        $bean->dadata_checked = true;

	if(strlen($bean->inn) != 12 && isset($res['contact'])) {
          $exists = $db->getOne ("
                      SELECT 1 
                      FROM accounts_contacts AS ac
                      INNER JOIN contacts AS c ON c.id = ac.contact_id
                      INNER JOIN contacts_cstm cc ON cc.id_c = c.id
                      WHERE ac.account_id = '{$bean->id}' 
                          AND ac.deleted = 0
                          AND CONCAT_WS(' ', c.last_name, c.first_name, cc.patr_c) = '{$res['contact']['full_name']}'
                          AND c.deleted = 0
         ");

          if (empty($exists)) {
            $bean->load_relationship('contacts');
            $contact = BeanFactory::newBean('Contacts');
            foreach ($res['contact'] as $k => $v) $contact->$k = $v;
            $contact->save();
            $bean->contacts->add($contact->id);
          }
	}  

	$bean->save();
      }

      header("Location: index.php?action={$_REQUEST['return_action']}&module={$_REQUEST['return_module']}&record={$_REQUEST['return_id']}");
    }

    protected function action_DaDataRequestAjax() {
      global $current_user, $db, $timedate;
      $acc = BeanFactory::newBean('Accounts');
      $fields_defs = $acc->getFieldDefinitions();

      $json = getJSONObj();

      $qacc = "";
      if (!empty($_REQUEST['shname'])) $qacc = $_REQUEST['shname'];
      if (!empty($_REQUEST['name'])) $qacc = $_REQUEST['name'];
      if (!empty($_REQUEST['inn'])) $qacc = $_REQUEST['inn'];

      if (!empty($_REQUEST['tcustomer_c'])) $qcustomer = $_REQUEST['tcustomer_c'];
      if (!empty($_REQUEST['inn_customer_c'])) $qustomer = $_REQUEST['inn_customer_c'];

   
      $res = getAccountsFieldsDaData ($qacc, $qcustomer);

      if(is_array($res) && isset($res['bean'])) {
        
	$res['bean'] = $acc->convertRow($res['bean']);
        
        foreach ($res['bean'] as $f => $v) {
          if (isset($fields_defs[$f]) && in_array($fields_defs[$f]['type'], array ('date', 'datecombo'))) {
		  $res['bean'][$f] = $timedate->to_display_date($v, false);
          }
        }

        $create_account = false;
        if(strlen($res['bean']['inn']) != 12) {
          if(isset($res['contact'])) {
            if(!empty($_REQUEST['id'])) {
              $exists = $db->getOne ("
                          SELECT 1 
                          FROM accounts_contacts AS ac
                          INNER JOIN contacts AS c ON c.id = ac.contact_id
                          INNER JOIN contacts_cstm cc ON cc.id_c = c.id
                          WHERE ac.account_id = '{$_REQUEST['id']}' 
                              AND ac.deleted = 0
                              AND CONCAT_WS(' ', c.last_name, c.first_name, cc.patr_c) = '{$res['contact']['full_name']}'
                              AND c.deleted = 0
              ");
  
              if (empty($exists)) {
                $create_account = true;
              }
            } else {
              $create_account = true;
            }
          } 
        }

        ob_clean();
	header('Content-Type: application/json; charset=UTF-8');
	echo $json->encode (array ('status' => 'ok', 'bean' => $res['bean'], 'contact' => $create_account ? $res['contact'] : array ()));
	die;
      }

      ob_clean();
      header('Content-Type: application/json; charset=UTF-8');
      echo $json->encode (array ('status' => 'ok', 'bean' => array (), 'contact' => array ()));
      die;

    }

}
