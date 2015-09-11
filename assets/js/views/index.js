$("#dashboardTab").click(function() 
{
	ClearActiveTab();
  	$("#dashboardTab").addClass('active');
});

$("#sleepdataTab").click(function() {
  ClearActiveTab();
  	$("#sleepdataTab").addClass('active');
});

$("#brand").click(function() 
{
	ClearActiveTab();
  	$("#dashboardTab").addClass('active');
});

$("#accountTab").click(function() 
{
	ClearActiveTab();
});

function ClearActiveTab() 
{
	$("#dashboardTab").removeClass('active');
	$("#sleepdataTab").removeClass('active');
}

$('#loginSubmitBtn').click(function()
{
	var url = "http://localhost:8000/api/loginauth"
	var data =
	{
	    "username": $('#userText').val(),
	    "password": $('#passText').val()
	};
	
	var success_func = function(data)
	{
	    //do what you want with the returned data
	    document.cookie="loginId=" + data;
	    $('#login-modal').modal('hide');
	};
	
	$.post(url, data, success_func);
});