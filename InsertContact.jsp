<%@page import="edu.jspiders.contactapp.dto.Person" %>
<%@page import="edu.jspiders.contactapp.dao.ContactDataBaseOperations" %>
<%@page import="java.time.LocalDate" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Contact</title>
<link rel="stylesheet" href="./resources/mystyle2.css">
</head>
<body>

	<%
	String name=request.getParameter("name");
	String num=request.getParameter("number");
	long number=Long.parseLong(num);
	String emailId=request.getParameter("Email");
	LocalDate dob1=LocalDate.parse(request.getParameter("dob"));
	String dob=dob1.toString();
	
	Person p=new Person();
	p.setName(name);
	p.setNumber(number);
	p.setEmailId(emailId);
	p.setDate_Of_Birth(dob);
	
	ContactDataBaseOperations op=new ContactDataBaseOperations();
	boolean isInserted=op.insertContact(p);
	if(isInserted)
	{
	%>
		<h1 style="background: green;">New Contact Inserted</h1>
		<jsp:include page="/dispalyAll"></jsp:include>
	<%
	}
	else
	{
	%>
	
	<h1 style="background: red;">New Contact Not Inserted</h1>
		<jsp:include page="/insertContactsForm"></jsp:include>
	
	<%
	}
	%>

</body>
</html>