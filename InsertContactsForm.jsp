<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Contacts Form</title>
<link rel="stylesheet" href="./resources/mystyle2.css">

</head>
<body>
	
	<header>
		<h1 class="title">Contact App</h1>
	</header>
	
	<nav>
		<a href="./searchContact">Search Contact</a>
		<a href="./insertContactsForm">Insert Contact</a>
		<a href="./dispalyAll">Show All Contacts</a>
	</nav>
	<div class="container">
		<form action="insertContact" method="POST">
				
			<div class="user-details">
			
				<div class="input-box">
					<span class="details">Name</span> <input type="text"
						name="name" placeholder="Enter the name" required>
						<br>
				</div>
				
				<div class="input-box">
					<span class="details">Number</span> <input type="number"
						name="number" placeholder="Enter the Number" required>
				<br>				
				</div>
				<div class="input-box">
					<span class="details">Mail ID</span> <input type="email"
						name="Email" placeholder="Enter the Mail id" required>
				<br></div>
				<div class="input-box">
					<span class="details">Date_Of_Birth</span> <input type="date"
						name="dob" placeholder="Enter the Date_Of_Birth" required>
				<br></div>
				<div class="button">
					<input type="submit" value="Add Contact">

				<br></div>
			</div>
		
		
		</form>
	
	</div>
	

</body>
</html>