<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atelier 02 - Exercice 1</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
</head>
<body>

	<div class="container">
	<%
		int fact = 0;
	    for(int i=0;i<10;i++){
	    	fact = 1;
	    	for(int j=1;j<=i;j++)
	    		fact *= j;
	    	out.println("<div class=\"alert alert-primary\" role=\"alert\"> Le factoriel de " + i +" est : " +  fact + "</div>");
	    }
	%>
	</div>

	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" />
</body>
</html>