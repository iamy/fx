
function updateContactFullName() {
    var full_name = $('#contact_full_name').val();
    var position =  $('#contact_position').val();
    var id =  $('#contact_id').val();

    var inn = $('#inn').val();
    if (inn.length == 12 || full_name.length == 0) {
      var text = '';
      $('#contact_create').val('0');
    } else {
      var action = id == '' ? 'создан' : 'изменен';
      var text = 'Будет ' + action + ' создан контакт: ' + full_name + (position == '' ? '' : ' (' + position + ')');
      $('#contact_create').val('1');
    }

    document.getElementById ('new_contact').innerHTML = text; 
}

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
                   if (res.bean[f] != null && res.bean[f].length > 0) $('#' + f).val(res.bean[f]);
                 }

                 if (! ('contact' in res)) {
                         $('#contact_full_name').val('');
                         $('#contact_last_name').val('');
                         $('#contact_first_name').val('');
                         $('#contact_part_c').val('');
                         $('#contact_position').val('');
                         $('#contact_id').val('');
                         $('#contact_create').val('0');
			 return;
                 }

		 for (f in res.contact) {
                   if (res.contact[f].length > 0) $('#contact_' + f).val(res.contact[f]);
                 }

		 updateContactFullName();


             } 
        } 

	postData = {
          id: $('input[name="record"]').val(), 
          inn: $('#inn').val(), 
          name: $('#name').val(),
          shname: $('#shname').val(),
          tcustomer_c: $('#tcustomer_c').val(),
          inn_customer_c: $('#inn_customer_c').val()
        };
	postData = SUGAR.util.paramsToUrl(postData);
        YAHOO.util.Connect.asyncRequest('POST', 'index.php?module=Accounts&action=daDataRequestAjax', callback, postData);
}

YAHOO.util.Event.onDOMReady(function() {
  YAHOO.util.Event.addListener('inn', "change", function () { 
	  dadataRequest();
	  updateContactFullName();
  });
});
