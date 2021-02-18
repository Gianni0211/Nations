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
}
.btn-insert{

  background-color: yellow;
  color: black;
  
}
.btn-container{
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 30px;
}
label{
margin-top: 20px;
}
</style>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form citta</title>

</head>
<body>
	<h3 class="margin">Form Citta</h3>

	<form class="form" action="" method="post">
		<label for="city">Inserisci il nome di una citta</label> <input
			name="name" placeholder="e.s. Milano" value="${city.getName() }" />
		<label for="country">Seleziona una nazione</label> <select
			name="country">

			<c:forEach items="${countries}" var="count">
				<c:if test="${city.getCountryCode() == count.getCode() }">
					<option name="${count.getCode() }" value="${count.getCode() }" selected>${count.getName() }</option>
				</c:if>
				<c:if test="${city.getCountryCode() != count.getCode() }" >
					<option name="${count.getCode() }" value="${count.getCode() } ">${count.getName() }</option>
				</c:if>
			</c:forEach>
		</select> <label for="population">Inserisci la popolazione</label> <input
			name="population" value="${city.getPopulation() }"
			placeholder="e.s. 10000" /> <label for="region">Inserisci la
			regione</label> <input name="region" value="${city.getDistrict() }"
			placeholder="e.s. Lombardia" />
			<input name="id" value="${city.getId() }" hidden/>

       <div class="btn-container">
       <c:if test="${city != null }">
		<button type="submit" formaction="/updatecity" class="btn">Modifica</button>
		</c:if>
		<c:if test="${city == null }">
		<button type="submit" formaction="/updatecity" class=" btn btn-insert">Inserisci</button>
		</c:if>
		</div>
	</form>




	<div class="result">
	<p>${res }</p>
	</div>
	
	<div class="btn-container">
	<a class="btn" href="/index">Home</a>
	</div>


</body>
</html>