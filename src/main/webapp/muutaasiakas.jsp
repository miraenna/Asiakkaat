<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang=en>
<head>
<meta charset="ISO-8859-1">
<script src="scripts/main.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css">
<title>Asiakkaan muokkaus</title>
</head>
<body onload="asetaFocus('etunimi')" onkeydown="tutkiKey(event, 'paivita')">
<form name="lomake" class="table table-dark table-bordered">
	<table>
		<thead>	
			<tr>
				<th colspan="5" class="oikealle"><a href="listaaasiakkaat.jsp">Takaisin listaukseen</a></th>
			</tr>		
			<tr>
				<th>Etunimi</th>
				<th>Sukunimi</th>
				<th>Puhelinnumero</th>
				<th>S�hk�posti</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="text" name="etunimi" id="etunimi"/></td>
				<td><input type="text" name="sukunimi" id="sukunimi"/></td>
				<td><input type="text" name="puhelin" id="puhelin"/></td>
				<td><input type="text" name="sposti" id="sposti"/></td> 
				<td><input type="button" id="tallenna" value="Hyv�ksy" onclick="tutkiJaPaivita()" /></td>
			</tr>
		</tbody>
	</table>
	<input type="hidden" name="asiakas_id" id="asiakas_id">
</form>
<span id="ilmo"></span>
</body>
<script>
haeAsiakas();
</script>
</html>