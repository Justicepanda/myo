$(document).ready(function()
{
	var url = "http://localhost:8000/api/login/" + getCookie('loginId');
	
	$.get(url, function(data, status)
	{
	    //load the information into the view using jquery
	    $('#firstname').text(data.loginFirstName);
	    $('#lastname').text(data.loginLastName);
	    $('#username').text(data.loginUsername);
	    $('#password').text(data.loginPassword);
	    $('#email').text(data.loginEmail);
	    $('#accountcreated').text(data.created_at);
	});
});

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) == 0) return c.substring(name.length,c.length);
    }
    return "";
}