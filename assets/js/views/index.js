$("#dashboardTab").click(function() 
{
	ClearActiveTab();
  	$("#dashboardTab").addClass('active');
});

$("#accountTab").click(function() {
  ClearActiveTab();
  	$("#accountTab").addClass('active');
});

$("#brand").click(function() 
{
	ClearActiveTab();
  	$("#dashboardTab").addClass('active');
});

function ClearActiveTab() 
{
	$("#dashboardTab").removeClass('active');
	$("#accountTab").removeClass('active');
}