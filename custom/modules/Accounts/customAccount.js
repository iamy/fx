function dadataRequest () {

        ajaxStatus.showStatus('Посылаем запрос...');
    
        var callback = {
             success:function(r) {     
                 ajaxStatus.hideStatus();
		 res = JSON.parse(r.responseText);

		 if (res.status == 'error') {
                   alert(res.errmessage);
                   return;
                 }
                 
		 if (! ('bean' in res)) return;
		     
		 for (f in res.bean) {
                   if (res.bean[f].length > 0) $('#' + f).val(res.bean[f]);
                 }
             } 
        } 

	postData = {inn: $('#inn').val()};
	postData = SUGAR.util.paramsToUrl(postData);
        YAHOO.util.Connect.asyncRequest('POST', 'index.php?module=Accounts&action=daDataRequestAjax', callback, postData);
}
