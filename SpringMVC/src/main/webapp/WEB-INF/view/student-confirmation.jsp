<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student COnfirmation Page</title>
</head>
<body>

The student is: ${student.firstName} ${student.lastName}

Country: ${student.country}

favLang: ${student.favLang}

OS: 
<ul>
	<c:forEach var="temp" items="${student.os}">
	<li>---</li>
	</c:forEach>
</ul>

</body>
</html>