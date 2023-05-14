<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF/8" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang=en>
<head>
<meta charset="ISO-8859-1">
<script src="scripts/main.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css">
<title>Asiakkaan lisäys</title>
</head>
<body onload="asetaFocus('etunimi')" onkeydown="tutkiKey(event, 'paivita')">
<form name="lomake">
	<table>
		<thead>	
			<tr>
				<th colspan="5" class="oikealle"><a href="listaaasiakkaat.jsp">Takaisin listaukseen</a></th>
			</tr>		
			<tr>
				<th>Etunimi</th>
				<th>Sukunimi</th>
				<th>Puhelinnumero</th>
				<th>Sähköposti</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="text" name="etunimi" id="etunimi" placeholder="Matti" /></td>
				<td><input type="text" name="sukunimi" id="sukunimi" placeholder="Meikäläinen"/></td>
				<td><input type="text" name="puhelin" id="puhelin" placeholder="0454561234"/></td>
				<td><input type="text" name="sposti" id="sposti" placeholder="matti.meikalainen@hotmail.com"/></td> 
				<td><input type="button" value="Lisää" onclick="tutkiJaLisaa()" /></td>
			</tr>
		</tbody>
	</table>
</form>
<p id="ilmo"></p>
</body>
</html>