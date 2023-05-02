<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang=en>
<head>
<meta charset="ISO-8859-1">
<script src="scripts/main.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Asiakkaan lisäys</title>
</head>
<body>
<form name="lomake" class="table table-dark table-bordered">
	<table>
		<thead>	
			<tr>
				<th colspan="5"><a href="listaaasiakkaat.jsp">Takaisin listaukseen</a></th>
			</tr>		
			<tr>
				<th>Etunimi</th>
				<th>Sukunimi</th>
				<th>Sähköposti</th>
				<th>Puhelinnumero</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="text" name="etunimi" id="etunimi" placeholder="Matti" /></td>
				<td><input type="text" name="sukunimi" id="sukunimi" placeholder="Meikäläinen"/></td>
				<td><input type="text" name="sposti" id="sposti" placeholder="matti.meikalainen@hotmail.com"/></td>
				<td><input type="text" name="puhelin" id="puhelin" placeholder="0454561234"/></td> 
				<td><input type="button" value="Lisää" onclick="tutkiJaLisaa()" /></td>
			</tr>
		</tbody>
	</table>
</form>
<p id="ilmo"></p>
</body>
</html>