<%@page import="edu.jspiders.contactapp.dto.Person" %>
<%@page import="edu.jspiders.contactapp.dao.ContactDataBaseOperations" %>
<%@page import="java.time.LocalDate" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Contact</title>
<link rel="stylesheet" href="./resources/mystyle2.css">

</head>
<body>
	
	
	<%
	String Name=request.getParameter("Name");
	Person p=new Person();
	p.setName(Name);
	ContactDataBaseOperations op=new ContactDataBaseOperations();

	op.deleteContact(p);
	%>
	
	<jsp:include page="/dispalyAll"></jsp:include>
	
	
</body>
</html>