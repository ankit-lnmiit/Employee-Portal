<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/addEmployee_style.css">
<title>Add Employee</title>
</head>
<body>
<div class="modal-content">
	<form action="AddMember" method="post">
		<div class="container2">
		<label>Employee ID</label>
		<input type="text" name="emp_id" placeholder="emp_id" required>
		<label>First Name</label>
		<input type="text" name="first_name" placeholder="First Name" required>
		<label>Last Name</label>
		<input type="text" name="last_name" placeholder="Last Name" required>
		<label>Date Of Birth (YYYY-MM-DD)</label>
		<input type="text" name="dob" placeholder="Date of Birth" required>
		<label>Gender</label>
		<input type="text" name="gender" placeholder="Gender" required>
		<label>Hire Date (YYYY-MM-DD)</label>
		<input type="text" name="hire_date" placeholder="Hire Date" required>
		<label>Blood Group</label>	
			<!--input type="radio" name="blood_group" value="A+"-->
			<!--input type="radio" name="blood_group" value="B+"-->
			<!--input type="radio" name="blood_group" value="A-"-->
			<!--input type="radio" name="blood_group" value="B-"-->
			<!--input type="radio" name="blood_group" value="O+"-->
			<!--input type="radio" name="blood_group" value="O-"-->
		<select name="blood_group" class="drop_down">
		<option value="">Blood Group</option>
		<option value="A+">A+</option>
		<option value="B+">B+</option>
		<option value="A-">A-</option>
		<option value="B-">B-</option>
		<option value="O-">O-</option>
		<option value="O+">O+</option>
		</select>
		
		<label>Contact</label>
		<input type="text" name="contact" placeholder="Contact" required>
		<label>Department</label>
		<input type="text" name="department" placeholder="Deparment" required>
		<label>Position</label>
		<input type="text" name="position" placeholder="Position" required>
		<label>Office No. / Desk No.</label>
		<input type="text" name="office_no" placeholder="office_no/desk_no" required>
		<label>Password</label>
		<input type="text" name="password" placeholder="password" required>
		<label>Type</label>
			<!--input type="radio" name="category" value="Admin"--> 
			<!--input type="radio" name="category" value="Employee"--> 
		
		<select name="category" class="drop_down">
		<option value="Admin">Admin</option>
		<option value="Employee">Employee</option>
		</select>
		<button type="Submit">Submit</button>
		</div>
	</form>
</div>
</body>
</html>