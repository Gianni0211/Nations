<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
.margin {
	margin: auto;
	width: 200px;
	margin-top: 20px;
}

.form {
	display: flex;
	flex-direction: column;
	width: 300px;
	margin: auto;
	margin-top: 30px;
}

.result {
	margin-top: 20px;
}

.btn {
	background-color: green;
	padding: 3px 6px 3px 6px;
	border-radius: 20px;
	color: white;
	text-decoration: none;
	cursor: pointer;
	width: 100px;
	margin-top: 30px;
	
}
.btn-container{
  display: flex;
  justify-content: center;
  align-items: center;
  
}
label{
margin-top: 20px;
}
</style>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cerca citta</title>

</head>
<body>
	<h3 class="margin">Cerca citta con nome e nazione</h3>

	<form class="form"  action="/searchcity" method="post"  >
		<label for="city">Inserisci il nome di una citta</label> <input
			name="name" placeholder="e.s. Milano" /> <label for="country">Seleziona
			una nazione</label> <select name="country">
			<option name="" value="" default>Nessuna nazione</option>
			<c:forEach items="${countries}" var="count">
				<option name="${count.getCode() }" value="${count.getCode() } ">${count.getName() }</option>

			</c:forEach>
		</select>
        <div class="btn-container">
		<button type="submit" class="btn">Cerca</button>
		</div>
	</form>
	
	


	<div class="result">
	<c:forEach items="${cities}" var="city">
		<p class="margin">${city.getName() } <strong>Popolazione:</strong> ${city.getPopulation() }</p>
	</c:forEach>
	</div>
	
	<div class="btn-container">
	<a class="btn" href="/index">Home</a>
	</div>


</body>
</html>