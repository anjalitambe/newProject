<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>
<title>Renew</title>
</head>
<body>
	
<jsp:include page="fullscreen.html"/>
	<div class="container" style="margin-top: 50px">
		<form action="getPolicy.do">
			Enter Policy No: <input type="text" name="policyNo" /><br />
			<input type="submit" value="Get Details" id="getPolicyDetails" />
		</form>

	</div>
</body>
</html>