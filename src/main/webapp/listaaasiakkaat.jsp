<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="scripts/main.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<title>Asiakkaat</title>
</head>
<body onload="asetaFocus('hakusana')" onkeydown="tutkiKey(event, 'paivita')">
<table id="listaus" class="table table-dark table-bordered">
	<thead>	
		<tr>
		<th colspan="5"><a href="lisaaasiakas.jsp">Lisää uusi asiakas</a></th>
		</tr>
		<tr>
			<th>Hakusana:</th>
			<th colspan="3"><input type="text" id="hakusana"></th>
			<th><input type="button" value="hae" id="hakunappi" onclick="haeAsiakkaat()"></th>
		</tr>		
		<tr>
			<th>Etunimi</th>
			<th>Sukunimi</th>
			<th>Puhelin</th>
			<th>Sähköposti</th>			
		</tr>
	</thead>
	<tbody id="tbody">
	</tbody>
</table>
<script>
haeAsiakkaat();
</script>
</body>
</html>