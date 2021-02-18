<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">

.margin{
 margin: auto;
 width: 500px;
 margin-top: 30px;
}
.result{
 margin-top: 20px;
}

.btn{
   background-color: green;
   color: white;
   width: 100px;
   padding: 3px 6px 3px 6px;
   border-radius: 20px;
   margin-top: 30px;
   text-decoration: none;
}
.btn-container{
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top: 90px;
}

.city-container{
display: flex;
flex-direction: row;
align-items: center;
justify-content: center;
width: 500px;
margin: auto;
}

.btn-home{
margin-left: 40px;
}

</style>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>nazioni</title>

</head>
<body>
	<h3 class="margin">Lista nazioni</h3>
	
	
	<div class="result">
	<c:forEach items="${cities}" var="ct">
	<div class="city-container">
	<p class="margin">${ct.getName()} <strong>Popolazione:</strong> ${ct.getPopulation() }</p>
	<a class="btn" href="/updatecity/${ct.getId()}/${ct.getName()}/${ct.getDistrict()}/${ct.getPopulation()}/${ct.getCountryCode()}">Modifica</a>
	</div>
		
	</c:forEach>
	
	</div>
	<div class="btn-container">
	<a href="/${sessionScope.continent }/countries" class="btn">Indietro</a>
	<a href="/index" class="btn btn-home">Home</a>
	</div>
	
	


</body>
</html>