var url = "http://localhost:8000/api/dashboardappletbyloginid/" + getCookie('loginId');
var applets = new Array();

$(document).ready(function(){
	$('.panel-heading span.clickable').click( function(){
	alert('hello');
    var $this = $(this);
	if(!$this.hasClass('panel-collapsed')) {
		$this.parents('.panel').find('.panel-body').slideUp();
		$this.addClass('panel-collapsed');
		$this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
	} else {
		$this.parents('.panel').find('.panel-body').slideDown();
		$this.removeClass('panel-collapsed');
		$this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
	}
});
});

$.get(url, function(data, status)
{
	if (data != "")
	{
		var maxRowCount = 0;
		$.each(data, function(i, item)
		{
			if (maxRowCount < item.daRow)
				maxRowCount = item.daRow;
		    //load the information into the view using jquery
		    applets[item.daID] = {id: item.daID, size: item.daSize, row: item.daRow, graphID: item.graphID};
		});

		for(i = 1; i <= maxRowCount; i++)
		{
			$('#dashboard').append('<div class="row" id="row' + i + '">');
		}

		applets.forEach(function (applet)
		{
			var size = 4;
			switch(applet.size)
			{
				case 'S': size = 4; break;
				case 'M': size = 6; break;
				case 'L': size = 12; break;
				default: break;
			}

			var colors = ['danger', 'success', 'info', 'primary', 'default', 'warning'];

			var colorChoice = Math.floor((Math.random() * 5) + 1);

			$('#row' + applet.row).append('<div class="col-md-' + size + '"><div class="panel panel-' + colors[colorChoice] + '"><div class="panel-heading"><h3 class="panel-title">' + applet.id + '</h3><span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span></div><div id="panel-body-' + applet.id + '" class="panel-body"></div></div>');
		});
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