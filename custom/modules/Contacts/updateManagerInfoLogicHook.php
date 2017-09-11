<?php

if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

class updateManagerInfoLogicHook
{
    function update($bean, $event, $arguments)
    {

        if($_REQUEST['relate_to'] == 'accounts_contacts' && !empty($_REQUEST['relate_id'])) {
          $account_id = $_REQUEST['relate_id'];
	} else {
	  $account_id = $bean->account_id;
	}
	  
        if ($bean->fetched_row['is_manager'] !== $bean->is_manager 
		&& $bean->is_manager == 1 
		&& !empty($account_id)
	) {
          $acc = BeanFactory::getBean('Accounts', $account_id);
	  if (empty($acc->id)) return;

          $acc->load_relationship('contacts');
	  foreach ($acc->contacts->getBeans() as $other) {
            if ($other->id == $bean->id) continue;
	    if ($other->is_manager == 1) {
              $other->is_manager = 0;
	      if(!empty($other->position)) $other->position .= ', Бывшый, ' . TimeDate::getInstance()->nowDb();
	      $other->save();
	    }
	  }
        }

    }  

    function updateAccountant($bean, $event, $arguments)
    {

        if($_REQUEST['relate_to'] == 'accounts_contacts' && !empty($_REQUEST['relate_id'])) {
          $account_id = $_REQUEST['relate_id'];
	} else {
	  $account_id = $bean->account_id;
	}

        if ($bean->fetched_row['is_general_accountant'] !== $bean->is_general_accountant 
		&& $bean->is_general_accountant == 1 
		&& !empty($bean->account_id)
	) {
          $acc = BeanFactory::getBean('Accounts', $bean->account_id);
	  if (empty($acc->id)) return;

          $acc->load_relationship('contacts');
	  foreach ($acc->contacts->getBeans() as $other) {
            if ($other->id == $bean->id) continue;
	    if ($other->is_general_accountant == 1) {
              $other->is_general_accountant = 0;
	      $other->save();
	    }
	  }
	}

	  return;
    }  
}
