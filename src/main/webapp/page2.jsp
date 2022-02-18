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
				<label for="nbfact" class="sr-only">Donner un entier :</label> 
				<input type="number" class="form-control" name="nbfact" id="nbfact" placeholder="Donner un nombre">
			</div>
			<button type="submit" class="btn btn-primary mb-2">Factoriel</button>
		</form>
		
		<%
			String nb = request.getParameter("nbfact");
		    if(nb != null){
		    	int n = Integer.valueOf(nb);
		    	int fact = 1;
		    	for(int i=1;i<=n;i++){
		    		fact *= i;
		    	}
		    	out.println("<div class=\"alert alert-primary\" role=\"alert\"> Le factoriel de " + n +" est : " +  fact + "</div>");
		    }
		%>
	</div>

	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" />
</body>
</html>