function setSortType(type)
{
	alert(type);
	$('#sortType').innerhtml = type + "<span class="glyphicon glyphicon-chevron-down"></span>";
}

$(document).ready(
	function() 
	{
		$('#dateBtn').click(function() {
			alert('Date');
			setSortType('Date');
		});

		$('#qualityBtn').click(function() {
			setSortType('Quality');
		});

		$('#lengthBtn').click(function() {
			setSortType('Length');
		});
	});