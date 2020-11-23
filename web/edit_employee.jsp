<!DOCTYPE html>
<html>
	<head>
		<title>Head of Dipartment</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="css/admin.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
	</head>
	<body>
		<header>
			<div class="header">
				<div>
					<h2>State Bank of India</h2>
				</div>
				<div>
					<ul>
						<li><a href="branch.html">Branch</a></li>
						<li><a href="#">Employee</a></li>
						<li><a href="new_department.html">Department</a></li>
						
					</ul>
				</div>
			</div>	
		</header>
		
		<section id="">
			<div class="dash">
	
			<div class="dash-item1">

				<h2><i class="fas fa-user-tie"></i>Employee Dashboard</h2>
					<nav>
						<a href="new_employee.html"><i class="fas fa-plus-square"></i>Add New Employee</a>
						<a href="#" id="active-button"><i class="fas fa-search"></i>Edit Employee Detail</a>
						<a href="employee_list.html"><i class="fas fa-list"></i> List of Employees</a>
					</nav>
				</div>
				<div class="dash-item2">
					<h2>Edit Employee Detail</h2>
					<div class="search_customer">
							<input type="text" name="" placeholder="Enter Employee ID">
							<button style="padding:9px 30px"><i class="fas fa-sign-in-alt" style="font-size:16px;"></i></button>
				    </div>
					<form action="" method="">


						<label for="fname">Employee Name</label>
						<input type="text" id="fname" name="firstname" placeholder="Employee Name">
						
						<label for="fname">Address</label>
						<input type="text" id="fname" name="firstname" placeholder="Employee Address">
						<label for="lname">Phone</label>
						<input type="text" id="lname" name="lastname" placeholder="+91">
						<label for="lname">Email</label>
						<input type="text" id="lname" name="lastname" placeholder="phone no..">
						<label for="lname">Account no.</label>
						<input type="text" id="lname" name="lastname" placeholder="Account no.." readonly="">
						<label for="lname">Branch ID</label>
						<input type="text" id="lname" name="lastname" placeholder="Branch id..">
						<label for="lname">Department ID</label>
						<input type="text" id="lname" name="lastname" placeholder="Department id..">
						
						<div>
						<input type="submit" value="Update" style="width:20%;">
						<input type="submit" value="Exit" style="width:20%;"></div>
					</form>
				</div>
			</div>
		</section>
	</body>
</html>