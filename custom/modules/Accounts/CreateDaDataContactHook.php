<?php

class CreateDaDataContactHook {

  /**
   * Сохраняем название файла
   */
  function create ($bean, $event, $arguments) {
          global $db;

	  if ($_REQUEST['contact_create'] == '1') {

            if(strlen($bean->inn) != 12) {
              $exists = $db->getOne ("
                      SELECT 1 
                      FROM accounts_contacts AS ac
                      INNER JOIN contacts AS c ON c.id = ac.contact_id
                      INNER JOIN contacts_cstm cc ON cc.id_c = c.id
                      WHERE ac.account_id = '{$bean->id}' 
                          AND ac.deleted = 0
                          AND CONCAT_WS(' ', c.last_name, c.first_name, cc.patr_c) = '{$_REQUEST['contact_full_name']}'
                          AND c.deleted = 0
              ");

              if (empty($exists)) {
                $bean->load_relationship('contacts');
                $contact = BeanFactory::newBean('Contacts');
		$contact->last_name = $_REQUEST['contact_last_name'];
		$contact->first_name = $_REQUEST['contact_first_name'];
		$contact->patr_c = $_REQUEST['contact_patr_c'];
                $contact->save();

                $bean->contacts->add($contact->id);
              }
            }  
         }  
  }
}

?>
