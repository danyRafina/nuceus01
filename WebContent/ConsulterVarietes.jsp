<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="fr.noixcoop.nuceus.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	MetierVarietes metier = new MetierVarietes();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nuceus 0.1</title>
</head>
<body>
	<h1>Liste des variétés de Noix</h1>
	<hr />
	<%
		List<Variete> varietes = metier.consulter();
	%>
	<table border="1" style="boder-collapse: collapse">
		<thead>
			<tr>
				<th>Libéllé</th>
				<th>AOC</th>
			</tr>
		</thead>
		<tbody>
			<%
				for (Variete variete : varietes) {	
			%>
			<tr>
				<td><%=variete.getLibelle()%></td>
				
				<td><% if(variete.isAoc() == true)  { %> Oui <% } else {  %> Non <% } %></td>
			</tr>
			<%
				}
			%>
		</tbody>

	</table>
</body>
</html>