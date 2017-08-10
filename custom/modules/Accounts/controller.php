<?php

require_once ('custom/modules/Accounts/SubstituteAccountFieldsDaData.php');

class AccountsController extends SugarController
{

    protected function action_DaDataRequest()
    {
			global $current_user;

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

      substituteAccountsFieldsDaData ($bean);
                        $bean->dadata_checked = true;

			$bean->save();

			header("Location: index.php?action={$_REQUEST['return_action']}&module={$_REQUEST['return_module']}&record={$_REQUEST['return_id']}");
    }

}
