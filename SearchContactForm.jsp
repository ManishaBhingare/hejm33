<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Contact Form</title>
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
		<form action="search" method="POST">
				
			<div class="user-details">
			
				<div class="input-box">
					<span class="details">Name</span> <input type="text"
						name="name" placeholder="Enter the name" required>
						<br>
				</div>
	
				<div class="button">
					<input type="submit" value="Search Contact">

				<br></div>
			</div>
		
		
		</form>
	
	</div>
	


</body>
</html>