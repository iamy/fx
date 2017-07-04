<?php

require_once ('custom/modules/Accounts/SubstituteAccountFieldsDaData.php');

class Create_Account_logic_hook {

    function create_account (&$bean, $event, $arguments) {

      if (isset($GLOBAL['import_opps_inn_fixing']) && $GLOBAL['import_opps_inn_fixing'] === true) return;


      if (!($_REQUEST['module'] == 'Import' && $_REQUEST['action'] == 'Step4')) return;

      $acc = BeanFactory::getBean('Accounts', $bean->account_id);

      if (!empty($acc->id)) {
        /*
  		  if(empty($acc->name))$acc->name = $bean->account_name;
        if(empty($acc->shname))$acc->shname = $bean->account_name;
        if(empty($acc->shname))$acc->kpp = $bean->kpp_winer_c;
        if(empty($acc->shname))$acc->email1 = $bean->email_win_c;
        if(empty($acc->shname))$acc->phone_office = $bean->phone_winer_c;
        $acc->opportunity_id = $bean->id;


        substituteAccountsFieldsDaData ($acc);

         */
        $acc_changed = false;
        if(empty($acc->name)) {
          $acc->name = $bean->account_name;
          $acc_changed = true;
        }
        if(empty($acc->shname)){
          $acc->shname = $bean->account_name;
          $acc_changed = true;
        }
  			if ($acc_changed) $acc->save();

        if(empty($bean->inn_winer_c) && !empty($acc->inn)) {
          $bean2 = clone $bean;
          $bean2->inn_winer_c = $acc->inn;
          $GLOBAL['import_opps_inn_fixing'] = true;
          $bean2->save();
          unset($GLOBAL['import_opps_inn_fixing']);
        }
      }
    }

}
