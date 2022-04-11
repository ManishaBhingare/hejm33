<%@page import="edu.jspiders.contactapp.dao.ContactDataBaseOperations" %>
<%@page import="java.util.ArrayList" %>
<%@page import="edu.jspiders.contactapp.dto.Person" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Contacts</title>
<link rel="stylesheet" href="./resources/mystyle2.css">

</head>
<body>

	<header>
		<h1 class="title">Contact App</h1>
	</header>
	
	<nav>
		<a href="./search">Search Contact</a>
		<a href="./insertContactsForm">Insert Contact</a>
		<a href="./displayAll">Show All Contacts</a>
	</nav>
	<div class="container">
	<%
	String Name=request.getParameter("Name");
	ContactDataBaseOperations op=new ContactDataBaseOperations();
	Person p=op.searchContact(Name);
	%>
	<form action="update" method="POST">
		<div class="user-details">
		
	<div class="input-box">
		<span class="details">Name</span> <input type="text"
			name="name" placeholder="Enter the Contact Name" required value="<%= p.getName() %>">
				</div>
				
		<div class="input-box">
		<span class="details">Number</span> <input type="number"
		name="number" placeholder="Enter the Contact Number" required value="<%= p.getNumber() %>">
		</div>
				
		<div class="input-box">
		<span class="details">emailId</span> <input type="email"
		name="emailId" placeholder="Enter the emailId" required value="<%= p.getEmailId()%>">
		</div>
		<div class="input-box">
		<span class="details">Date_Of_Birth</span> <input type="date"
		name="dob" placeholder="Enter the dob" required value="<%= p.getDate_Of_Birth() %>">
		</div>	
		<div class="button">
		<input type="submit" value="Update Contact">

		</div>
		</div>
	</form>
	
	
</body>
</html>