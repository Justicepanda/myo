<link rel="stylesheet" type="text/css" href="../../../assets/css/views/sleepdata.css">

<div class="modal fade" id="session-modal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 id="modalTitle" class="modal-title"></h4>
      </div>
      <div id="modalBody" class="modal-body">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="page-header" style="margin-top:10px;">
	<div class="row">
		<h2 class="col-md-6 title" style="color:#f9f9f9">Sessions</h2>
		<div class="col-md 6">
			<ul class="list-inline pull-right" style="margin-top:20px; margin-right:20px;">
				<li><h4 id="sortLabel" class="hidden" style="color:#f9f9f9">Sort by: </h4></li>
				<li>
					<div id="sortButtons" class="dropdown hidden" style="margin-right:20px;">
					  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
					  	<div id="sortType">Date <span class="glyphicon glyphicon-chevron-down"></span></div>
					  </button>
					  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
					    <li id="dateBtn"><a>Date</a></li>
					    <li id="qualityBtn"><a>Quality</a></li>
					    <li id="lengthBtn"><a>Length</a></li>
					  </ul>
					</div>
				</li>
				<li>
					<div class="btn-group" role="group" aria-label="...">
					  <button id="calendarViewBtn" type="button" class="btn btn-default"><span class="glyphicon glyphicon-th"></span></button>
					  <button id="listViewBtn" type="button" class="btn btn-default"><span class="glyphicon glyphicon-th-list"></span></button>
					  <button id="singleViewBtn" type="button" class="btn btn-default"><span class="glyphicon glyphicon-stop"></span></button>
					</div>
				</li>
			</div>
		</div>
	</div>
</div>
<div id="calendarView">
	<ul class="calendarHeaderRow">
		<li><div class="calendarDayHeader"><h5>Sunday</h5></div></li>
		<li><div class="calendarDayHeader"><h5>Monday</h5></div></li>
		<li><div class="calendarDayHeader"><h5>Tuesday</h5></div></li>
		<li><div class="calendarDayHeader"><h5>Wednesday</h5></div></li>
		<li><div class="calendarDayHeader"><h5>Thursday</h5></div></li>
		<li><div class="calendarDayHeader"><h5>Friday</h5></div></li>
		<li><div class="calendarDayHeader"><h5>Saturday</h5></div></li>
	</ul>
	<ul id="week1" class="calendarRow">
	</ul>
	<ul id="week2" class="calendarRow">
	</ul>
	<ul id="week3" class="calendarRow">
	</ul>
	<ul id="week4" class="calendarRow">
	</ul>
	<ul id="week5" class="calendarRow">
	</ul>
</div>
<div class="hidden" id="listView">
	<h3>List View</h3>
</div>
<div class="hidden" id="singleView">
	<h3>SingleView</h3>
</div>

<script src="../../../assets/js/views/sleepdata.js"></script>