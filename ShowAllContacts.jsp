<%@page import="edu.jspiders.contactapp.dao.ContactDataBaseOperations" %>
<%@page import="java.util.ArrayList" %>
<%@page import="edu.jspiders.contactapp.dto.Person" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show all contacts</title>
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
		<table border="1" align="center">
			<tr>
			<th>Name</th>
			<th>Number</th>
			<th>emailId</th>
			<th>Date_Of_Birth</th>
			</tr>
		
		<%
		ContactDataBaseOperations op=new ContactDataBaseOperations();
		ArrayList<Person> allContacts=op.showAllContacts();
		for(int i=0;i<allContacts.size();i++)
		{
			Person p=allContacts.get(i);
		%>
		<tr>
		<td><%=p.getName() %></td>
		<td><%= p.getNumber() %></td>
		<td><%= p.getEmailId() %></td>
		<td><%=p.getDate_Of_Birth() %></td>
		<td><a href="./edit?Name=<%= p.getName() %>">Edit</a></td>
		<td><a href="./delete?Name=<%= p.getName() %>">Delete</a></td>
		<td><a href="./email?Name=<%=p.getName() %>">Email</a></td>
		<td><a href="./message?Name=<%=p.getName() %>">Message</a></td>
		
		</tr>
		<%
		}
		%>
		
		</table>
	</div>

</body>
</html>