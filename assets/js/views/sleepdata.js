var sessions = new Array();

$('#dateBtn').click(function() 
{
	$('#sortType').replaceWith("<div id='sortType'>Date <span class='glyphicon glyphicon-chevron-down'></span></div>");
});

$('#qualityBtn').click(function() 
{
	$('#sortType').replaceWith("<div id='sortType'>Quality <span class='glyphicon glyphicon-chevron-down'></span></div>");
});

$('#lengthBtn').click(function() 
{
	$('#sortType').replaceWith("<div id='sortType'>Length <span class='glyphicon glyphicon-chevron-down'></span></div>");
});

$('#singleViewBtn').click(function()
{
	$('#listView').addClass('hidden');
	if($('#singleView').hasClass('hidden'))
		$('#singleView').removeClass('hidden');
	$('#calendarView').addClass('hidden');
	$('#sortButtons').addClass('hidden');
	$('#sortLabel').addClass('hidden');
});

$('#listViewBtn').click(function()
{
	if($('#listView').hasClass('hidden'))
		$('#listView').removeClass('hidden');
	$('#singleView').addClass('hidden');
	$('#calendarView').addClass('hidden');
	$('#sortButtons').removeClass('hidden');
	$('#sortLabel').removeClass('hidden');
});

$('#calendarViewBtn').click(function()
{
	$('#listView').addClass('hidden');
	$('#singleView').addClass('hidden');
	if($('#calendarView').hasClass('hidden'))
		$('#calendarView').removeClass('hidden');
	$('#sortButtons').addClass('hidden');
	$('#sortLabel').addClass('hidden');
});

var date = new Date();
var firstDay = new Date(date.getFullYear(), date.getMonth(), 1);
var lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 1);
var url = "http://localhost:8000/api/sessionsbyloginid/"+ getCookie('loginId') + "?sessionStartTime=" + firstDay.toISOString().slice(0, 19).replace('T', ' ') + "&sessionEndTime=" + lastDay.toISOString().slice(0, 19).replace('T', ' ');

$.get(url, function(data, status)
{
	//Populate the sessions into the sessions array
	$.each(data, function(i, item) 
	{
		var t = item.sessionStartTime.split(/[- :]/);
		var startDateTime = new Date(t[0], t[1]-1, t[2], t[3], t[4], t[5]);

	    t = item.sessionEndTime.split(/[- :]/);
		var endDateTime = new Date(t[0], t[1]-1, t[2], t[3], t[4], t[5]);

		var sessionDuration = Math.round((endDateTime - startDateTime)/1000);

		var sessionData = {sessionID: item.sessionID, sessionStartTime: item.sessionStartTime, sessionEndTime: item.sessionEndTime, sessionQuality: item.sessionQuality, sessionDuration: sessionDuration};
		sessions[startDateTime.getDate()] = sessionData;
	});


	var colors = ['1B452A', '225635', '286740', '2F784A', '368A55', '3C9B5F', '43AC6A', '56B479', '69BD88', '7BC597'];
	var days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
	var currentDate = 1;
	var week = 1;
	var lastDayOfMonth = new Date(date.getFullYear(), date.getMonth() + 2, 0);
	for(i = 1; i < 36; i++)
	{

		if(i > firstDay.getDay() && currentDate <= lastDayOfMonth.getDate() + 1)
		{
			if(sessions[currentDate] != undefined)
			{
				$('#week' + week).append('<li onclick="openSession(' + currentDate + ')"><div class="calendarDay" style="background:#' + colors[sessions[currentDate].sessionQuality - 1] + ';"><h4 style="position:relative; top:20px; color:#ffffff;">' + currentDate + '</h4></div></li>');
			}
			else
			{
				$('#week' + week).append('<li><div class="emptyDay"><h4 style="position:relative; top:20px; color:#ffffff;">' + currentDate + '</h4></div></li>');
			}
			currentDate++;
		}
		else
		{
			$('#week' + week).append('<li><div class="emptyDay"></div></li>');
		}

		if(i % 7 == 0 && i > 0)
			week++;
	}
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

function openSession(id)
{
	$('#modalTitle').replaceWith(sessions[id].sessionStartTime);
	var options = { backdrop:'static', keyboard: false, show: true };

  	$('#session-modal').modal(options);
}