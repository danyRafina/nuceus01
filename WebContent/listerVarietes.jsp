<%@ page import="java.util.*"%>
<%@ page import="fr.noixcoop.nuceus.*"%>
<!DOCTYPE html>
<%
	MetierVarietes metier = new MetierVarietes();
%>
<html lang="fr">
<head>
<meta http-equiv="Content-Type" charset="utf-8">
<title>Insert title here</title>
<link type="text/css" href="style/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="stylesheet"></script>
</head>
<body>
	<%
		List<Variete> varietes = metier.consulter();
	%>
	<nav class="navbar navbar-header navbar-fixed-top navbar-inverse">
		<div class="navbar-brand black">Liste des variétés de Noix</div>
	</nav>

	<div class="container" style="margin-top: 70px">
		<div class="row-fluid">
			<div class="col-md-12">
				<table
					class="table-responsive table-hover table-condensed col-md-12 text-center"
					border="1" style="boder-collapse: collapse">
					<thead >
						<tr >
							<th class="col-md-6 text-center bg-primary">Libéllé</th>
							<th class="col-md-6 text-center bg-primary">AOC</th>
						</tr>
					</thead>
					<tbody>
						<%
							for (Variete variete : varietes) {
						%>
						<tr>
							<td><%=variete.getLibelle()%></td>

							<td>
								<%
									if (variete.isAoc() == true) {
								%> Oui <%
									} else {
								%> Non <%
									}
								%>
							</td>
						</tr>
						<%
							}
						%>
					</tbody>

				</table>
			</div>
		</div>
	</div>
</body>
</html>