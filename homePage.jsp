<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Include meta tag to ensure proper rendering and touch zooming -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Include jQuery Mobile stylesheets -->
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<!-- Include the jQuery library -->
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- Include the jQuery Mobile library -->
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<link rel="stylesheet" href="css/themes/style.css" />
<link rel="stylesheet" href="css/themes/jquery.mobile.icons.min.css" />
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile.structure-1.4.5.min.css" />

<title>home</title>
</head>
<body>

	<!-- login -->
	<div data-role="page" id="login">
		<h3>Financial Reporting Tool</h3> <p><a href="logout.jsp">Logout</a>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			<h1>Welcome Home,<%=session.getAttribute("name")%>!</h1>
			
		</div>

		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Import -->
	<div data-role="page" id="import">
		<h3>Financial Reporting tool</h3>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			Import Data </br> <br> Search Timesheet Data:
			<form class="ui-filterable">
				<input id="myFilter" data-type="search" value="Search...">
			</form>

			Select a file to upload: <br />
			<form action="UploadFile.jsp" method="post"
				enctype="multipart/form-data">
				<input type="file" name="file" size="50" /> <br /> <input
					type="submit" value="Upload File" />
			</form>
		</div>

		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- People Page-->
	<div data-role="page" id="people">
		<h1
			style="text-align: center; font-family: Verdana, Geneva, sans-serif;">Financial
			Reporting Tool</h1>
		<div data-role="header">
			<div data-role="navbar" data-theme="b">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
			<br>
			<div data-role="navbar" style="color: orange;">
				<ul>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">People</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow ">Clients</a></li>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">Tasks</a></li>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">Expense Categories</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			<a href="#addPerson" data-role="button" data-icon="plus"
				data-iconpos="left" style="width: 100px;">Add Person</a>
			<h2>Employees (14)</h2>
			<ul data-role="listview" data-autodividers="true" data-inset="true">
				<li><a href="#">Adele</a></li>
				<li><a href="#">Agnes</a></li>
				<li><a href="#">Albert</a></li>
				<li><a href="#">Billy</a></li>
				<li><a href="#">Bob</a></li>
				<li><a href="#">Calvin</a></li>
				<li><a href="#">Cameron</a></li>
				<li><a href="#">Chloe</a></li>
				<li><a href="#">Christina</a></li>
				<li><a href="#">Diana</a></li>
				<li><a href="#">Gabriel</a></li>
				<li><a href="#">Glen</a></li>
				<li><a href="#">Ralph</a></li>
				<li><a href="#">Valarie</a></li>
			</ul>
		</div>
	</div>
	<!-- Add Person -->
	<div data-role="page" id="addPerson">
		<h1
			style="text-align: center; font-family: Verdana, Geneva, sans-serif;">Financial
			Reporting Tool</h1>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
			<br>
			<div data-role="navbar" class="nav2">
				<ul>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">People</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow ">Clients</a></li>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">Tasks</a></li>
					<li><a href="#ListResource"
						class="ui-btn ui-corner-all ui-shadow ">Expense Categories</a></li>
				</ul>
			</div>
		</div>
		<div data-role="main" class="ui-content">
			<form method="post"
				style="width: 50%; margin: 0 auto; width: 75%; text-align: left">
				<div class="ui-field-contain">
					<div>
						<label for="fname">First name:</label> <input type="text"
							name="fname" id="fname">
					</div>
					<div>
						<label for="lname">Last name:</label> <input type="text"
							name="lname" id="lname">
					</div>
					<div>
						<label for="date">Email:</label> <input type="email" name="email"
							id="email">
					</div>
				</div>
				<div class="ui-field-contain">
					<label for="select-native-1">Department:</label> <select
						name="select-native-1" id="select-native-1">
						<option value="1">Professional Services</option>
						<option value="2">Product Development</option>
						<option value="3">Product Management</option>
						<option value="4">Consulting</option>
					</select>
				</div>
				<div>
					<label for="rate">Billable Rate:</label> <input type="number"
						name="brate" id="brate">
				</div>
				<div>
					<label for="rate">Cost Rate:</label> <input type="number"
						name="crate" id="crate">
				</div>
				<div class="ui-field-contain">
					<label for="select-native-1">Permissions:</label> <select
						name="select-native-1" id="select-native-1">
						<option value="1">Regular User</option>
						<option value="2">Project Manager</option>
						<option value="3">Admin</option>
					</select>
					<br>
				</div>
				<button type="submit" value="Submit">Add</button>
			</form>
		</div>
		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Project -->
	<div data-role="page" id="project">
		<h3>Financial Reporting tool</h3>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			Manage Projects
			<div data-role="navbar">
				<ul>
					<li><a href="#ListProject"
						class="ui-btn ui-corner-all ui-shadow ">List All Projects</a></li>
					<li><a href="#addProject"
						class="ui-btn ui-corner-all ui-shadow ">Add Projects</a></li>
					<li><a href="#ListProject"
						class="ui-btn ui-corner-all ui-shadow ">Put whatever</a></li>
				</ul>
			</div>

		</div>

		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Add/Edit Project -->
	<div data-role="page" id="addProject">
		<h3>Financial Reporting tool</h3>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			Add Projects
			<form method="post">
				<div class="ui-field-contain">
					<div>
						<label for="resourceid">Project id:</label> <input type="text"
							name="resourceid" id="resourceid">
					</div>
					<div>
						<label for="fname">Project name:</label> <input type="text"
							name="fname" id="fname">
					</div>
					<div>
						<label for="lname">Start date:</label> <input type="date"
							name="lname" id="lname">
					</div>
					<div>
						<label for="date">End date:</label> <input type="date" name="date"
							id="date">
					</div>
					<div>
						<label for="email">Project Manager:</label> <input type="email"
							name="email" id="email">
					</div>
					<a href="#project" class="ui-btn ui-corner-all ui-shadow ">Add</a>
				</div>

			</form>
		</div>

		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!--Reports-->
	<div data-role="page" id="report">
		<h3>Financial Reporting tool</h3>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			Reports
			<form method="post">
				<div class="ui-field-contain">
					<div>
						<label for="userid">Project Name:</label> <input type="text"
							name="user id" id="userid">
					</div>
					<div>
						<label for="dateFrom">Date From:</label> <input type="date"
							name="dateFrom" id="dateFrom">
					</div>
					<div>
						<label for="dateTo">Date To:</label> <input type="date"
							name="dateTo" id="dateTo">
					</div>
					<div>
						<label for="userid">Resource Name:</label> <input type="text"
							name="user id" id="userid">
					</div>
				</div>
				<a href="#viewReports" class="ui-btn ui-corner-all ui-shadow ">View
					Report</a>
			</form>
		</div>

		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- View Reports -->
	<div data-role="page" id="viewReports">
		<h3>Financial Reporting tool</h3>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#login" class="ui-btn ui-corner-all ui-shadow ">Home</a></li>
					<li><a href="#import" class="ui-btn ui-corner-all ui-shadow ">Timesheets</a></li>
					<li><a href="#project" class="ui-btn ui-corner-all ui-shadow ">Projects</a></li>
					<li><a href="#report" class="ui-btn ui-corner-all ui-shadow ">Reports</a></li>
					<li><a href="#people" class="ui-btn ui-corner-all ui-shadow">Manage</a></li>
				</ul>
			</div>
		</div>

		<div data-role="main" class="ui-content">
			<div id="chart_div"></div>

		</div>

		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#help" class="ui-btn ui-corner-all ui-shadow ">Help</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	google.charts.load('current', {
		packages : [ 'corechart', 'bar' ]
	});
	google.charts.setOnLoadCallback(drawMultSeries);

	function drawMultSeries() {

		var data = google.visualization.arrayToDataTable([
				[ 'Project', 'Project estimated', 'Resource expense' ],
				[ 'ABC Project', 8175000, 800800 ],
				[ 'XYZ Upgrade', 3792000, 369400 ],
				[ 'AAA Application', 2695000, 289600 ] ]);

		var options = {
			title : 'Project estimation vs Resource expense',
			hAxis : {
				title : 'expense',
				minValue : 0
			},
			vAxis : {
				title : 'Project'
			}
		};

		var chart = new google.visualization.BarChart(document
				.getElementById('chart_div'));
		chart.draw(data, options);
	}
</script>
</html>