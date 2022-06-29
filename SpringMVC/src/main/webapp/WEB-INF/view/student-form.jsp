<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
		
		FirstName: <form:input path="first" />
		<br><br>
		LastName: <form:input path="last" />
		<br><br>
		
		Country: 
		<form:select path="country">
		<form:option value="India" label="IND" />
		<form:option value="Brazil" label="BRZ" />
		<form:option value="Australia" label="AUS" />
		<form:option value="USA" label="US" />
		
		</form:select>
		<br><br>
		
		<form:options items="${student.country}"/>
		
		<br><br>
		
		FAV Lang:
		Java <form:radiobutton path="favlang" value="Java" />
		C++ <form:radiobutton path="favlang" value="C++" />
		Python <form:radiobutton path="favlang" value="Python" />
		Go <form:radiobutton path="favlang" value="Go" />
		
		<br><br>
		
		Operating Systems:
		Linux <form:checkbox path="OS" value="Linux" />
		MacOS <form:checkbox path="OS" value="MacOS" />
		Windows <form:checkbox path="OS" value="Windows" />
		
		
		<input type="submit" value="Submit" />
		
	
	</form:form>
</body>
</html>