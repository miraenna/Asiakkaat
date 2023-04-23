<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<script src="scripts/main.js"></script>
<title>Asiakkaat</title>
</head>
<body>
<table id="listaus" class="table table-dark table-bordered">
	<thead>			
		<tr>
			<th scope="col">Hakusana:</th>
			<th scope="col"colspan="3"><input type="text" id="hakusana"></th>
			<th><input type="button" value="hae" id="hakunappi" onclick="haeAsiakkaat()"></th>
			</tr>
			<tr>
			<th scope="col">Etunimi</th>
			<th scope="col">Sukunimi</th>
			<th scope="col">Puhelin</th>
			<th scope="col">Sposti</th>
		</tr>
	</thead>
	<tbody id="tbody">
	</tbody>
</table>
<span id="ilmo"></span>
<script>
haeAsiakkaat();
</script>
</body>
</html>