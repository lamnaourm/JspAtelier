<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exercice 2 - JSP</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<div class="container">
		<form class="form-inline" action="">
			<div class="form-group mx-sm-3 mb-2">
				<label for="ch" class="sr-only">Donner une chaine :</label> 
				<input type="text" class="form-control" name="ch" id="ch" placeholder="Donner une chaine">
			</div>
			<button type="submit" class="btn btn-primary mb-2">Nombre de mots</button>
		</form>
		
		<%
			String nb = request.getParameter("ch");
		    if(nb != null){
		    	
		    	String[] mots = nb.split(" ");
		    	
		    	out.println("<div class=\"alert alert-primary\" role=\"alert\"> Le nombre de mots est : " +  mots.length + "</div>");
		    }
		%>
	</div>

	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" />
</body>
</html>