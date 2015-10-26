var sessions = new Array();
var months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
var colors = ['1B452A', '225635', '286740', '2F784A', '368A55', '3C9B5F', '43AC6A', '56B479', '69BD88', '7BC597'];
var days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];


var date = new Date();
var firstDay = new Date(date.getFullYear(), date.getMonth(), 1);
var lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 1);

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
				$('#sessionList').append('<li class="listitem list-group-item" onclick="openSession(' + currentDate + ')"><div class="pull-right" style="width:40px; height:40px; background:#' + colors[sessions[currentDate].sessionQuality - 1] + '"></div><h4>' + months[firstDay.getMonth()] + ' ' + currentDate + '</h4></li>');
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
	$('#modalTitle').replaceWith('<h4 id="modalTitle" class="modal-title">' + months[firstDay.getMonth()] + ' ' + id + '</h4>');
	$('#startTime').replaceWith('<h5 id="startTime">' + sessions[id].sessionStartTime + '</h5>');
	$('#endTime').replaceWith('<h5 id="endTime">' + sessions[id].sessionEndTime + '</h5>');
	$('#quality').replaceWith('<h5 id="quality">' + sessions[id].sessionQuality + '</h5>');

	updateGraph();

	var options = { show: true };

  	$('#session-modal').modal(options);
}

function updateGraph(id)
{
	// svg.selectAll("*").remove();

	var data = [{
    "sale": "202",
    "year": "2000"
	}, {
	    "sale": "225",
	    "year": "2002"
	}, {
	    "sale": "179",
	    "year": "2004"
	}, {
	    "sale": "199",
	    "year": "2006"
	}, {
	    "sale": "102",
	    "year": "2008"
	}, {
	    "sale": "176",
	    "year": "2010"
	}];

	var vis = d3.select("#visualization"),
    WIDTH = 1000,
    HEIGHT = 500,
    MARGINS = {
        top: 50,
        right: 20,
        bottom: 50,
        left: 100
    },
    
    lSpace = WIDTH/data.length;

    xScale = d3.scale.linear()
                .range([MARGINS.left, WIDTH - MARGINS.right])
                .domain([d3.min(data, function(d) {return d.year;}), d3.max(data, function(d) {return d.year;})]),
                        
    yScale = d3.scale.linear()
                .range([HEIGHT - MARGINS.top, MARGINS.bottom])
                .domain([0, d3.max(data, function(d) {return d.sale;})]),
                //.domain([d3.min(data, function(d) {return d.sale;}), d3.max(data, function(d) {return d.sale;})]),

    xAxis = d3.svg.axis()
    .scale(xScale),

    yAxis = d3.svg.axis()
    .scale(yScale)
    .orient("left");

	vis.append("svg:g")
	    .attr("class", "x axis")
	    .attr("transform", "translate(0," + (HEIGHT - MARGINS.bottom) + ")")
	    .call(xAxis);

	vis.append("svg:g")
	    .attr("class", "y axis")
	    .attr("transform", "translate(" + (MARGINS.left) + ",0)")
	    .call(yAxis);

	var lineGen = d3.svg.line()
	    .x(function(d) {
	        return xScale(d.year);
	    })
	    .y(function(d) {
	        return yScale(d.sale);
	    })
	    //.interpolate("basis");
	vis.append('svg:path')
	    .attr('d', lineGen(data))
	    .attr('stroke', 'green')
	    .attr('stroke-width', 2)
	    .attr('fill', 'none');

	vis.append("text")
	    .attr("x", WIDTH/2)
	    .attr("y", HEIGHT)
	    .style("fill", "black")
	    .attr("class","legend")
	    .text("hours slept");

	vis.append("text")
	    .attr("x", 0)
	    .attr("y", HEIGHT/2)
	    .style("fill", "black")
	    .attr("class","legend")
	    .text("# days");
}