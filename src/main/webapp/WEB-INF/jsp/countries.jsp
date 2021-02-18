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
 margin-auto;
}

.btn{
   background-color: green;
   color: white;
   width: 100px;
   padding: 3px 6px 3px 6px;
   border-radius: 20px;
   
   text-decoration: none;
}
.btn-container{
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top: 90px;
}

</style>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>nazioni</title>

</head>
<body>
	<h3 class="margin">Lista nazioni</h3>
	
	
	<div class="result">
	<c:forEach items="${countries}" var="count">
		<p class="margin"><a href="/${count.getCode()}/cities">${count.getName()}</a> <strong>Popolazione:</strong> ${count.getPopulation() }</p>
	</c:forEach>
	</div>
	
	<div class="btn-container">
<a href="/index" class="btn">Indietro</a>

</div>


</body>
</html>