<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exercice 4 - Atelier 02</title>
<style>
	table {
	 border-collapse: collapse;
	 width: 60%;
	 margin: auto;
	}
	table td{
		border: 2px solid #000;
		font-size: 20px;
		text-align: center;
	}
	.premier {
		background-color: yellow;
	}
	.entete{
		background-color: blue;
	}
	.diagonale1 {
		background-color: green;
	}
	.diagonale2 {
		background-color: red;
	}
</style>
</head>
<body>

	<table>
		<% for (int i = 0; i <= 10; i++) { %>
		<tr>
			<% 
			for (int j = 0; j <= 10; j++) { %>
			
				<%
				if(i==0 && j==0)
					out.print("<td class=\"premier\"></td>");
				else if(i==0)
					out.print("<td class=\"entete\">" + j + "</td>");
				else if(j==0)
					out.print("<td class=\"entete\">" + i + "</td>");
				else if(j==i)
					out.print("<td class=\"diagonale1\">" + i + "</td>");
				else if(i==11-j)
					out.print("<td class=\"diagonale2\">" + i + "</td>");
				else 
					out.print("<td>" + i*j + "</td>");
				%>
			<% } %>
		</tr>
		<% } %>
	</table>
</body>
</html>