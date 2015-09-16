
<script src="../../../assets/js/views/sleepdata.js"></script>

<div id="d3"></div>
<script src="http://d3js.org/d3.v3.min.js"></script>
<div class="page-header">
	<div class="row">
		<h2 class="col-md-6 title" style="color:#f9f9f9">Sessions</h2>
		<div class="col-md 6">
			<ul class="list-inline pull-right" style="margin-top:20px; margin-right:20px;">
				<li><h4 style="color:#f9f9f9">Sort by: </h4></li>
				<li>
					<div class="dropdown" style="margin-right:20px;">
					  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
					  	<div id="sortType">Date <span class="glyphicon glyphicon-chevron-down"></span></div>
					  </button>
					  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
					    <li><a id="dateBtn">Date</a></li>
					    <li><a id="qualityBtn">Quality</a></li>
					    <li><a id="lengthBtn">Length</a></li>
					  </ul>
					</div>
				</li>
				<li>
					<div class="btn-group" role="group" aria-label="...">
					  <button id="sessionViewBtn" type="button" class="btn btn-default"><span class="glyphicon glyphicon-th"></span></button>
					  <button id="weeklyViewBtn" type="button" class="btn btn-default"><span class="glyphicon glyphicon-th-list"></span></button>
					  <button id="monthlyViewBtn" type="button" class="btn btn-default"><span class="glyphicon glyphicon-stop"></span></button>
					</div>
				</li>
			</div>
		</div>
	</div>
</div>