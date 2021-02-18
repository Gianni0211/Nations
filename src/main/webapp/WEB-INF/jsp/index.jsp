<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
.margin{
   margin: auto;
   width: 200px;
   margin-top: 20px;
}
.result{
 margin-top: 20px;
}
.btn-container{
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 90px;
}

.btn{
  background-color: green;
  padding: 3px 6px 3px 6px;
  border-radius: 20px;
  color: white;
  text-decoration: none;
  cursor: pointer;
  width: 100px;
}

.btn-add{
margin-left: 50px;
}
p{
margin: auto;
width: 200px;
margin-top: 30px;
}
</style>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Continent</title>

</head>
<body>
	<h3 class="margin">Lista continenti</h3>
	
	
	<div class="result">
	<c:forEach items="${continents}" var="cont">
		<p class="margin"><a href="/${cont}/countries">${cont}</a></p>
	</c:forEach>
	
	<p>${res }</p>
	</div>



<div class="btn-container">
<a href="/searchcity" class="btn">Cerca citta</a>
<a href="/addform" class="btn btn-add">Aggiungi citta</a>
</div>

</body>
</html>