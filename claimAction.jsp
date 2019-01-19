<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>
<title>Claim</title>
</head>
<body>

<jsp:include page="fullscreen.html"/>
<div class="container" style="margin-top:50px">
<h1>User Profile</h1><hr size="1" color="crimson">
User name: ${User.name} <br>
Email id: ${User.email} <br>

<hr>

<h2>Existing Policies</h2><hr size="1" color="crimson">

<table border="1" bordercolor="crimson" align="center" colspan="1">
		<tr bgcolor="wheat">
			<th>Policy No.</th>
			<th>Registration Number</th>
			<!-- <th>Policy Value</th> -->
			<th>Start Date</th>
			<th>Expiry Date</th>
			<th>Premium Value</th>
			<th>Policy Type</th>
		</tr> 
  <c:forEach items="${Policy}" var="Policy">
				<tr>
					<%-- <td><input type="text" name="policyNo" id="policyNoId" readonly="readonly" value="${Policy.policyNo}"></input></td> --%>
					<td>${Policy.policyNo}</td>
					<td>${Policy.vehicle.registrationNo}</td> 
					<td>${ Policy.startDate }</td>
					<td>${ Policy.lastDate}</td>
					<td>${ Policy.premiumValue}</td>
					<td>${ Policy.policyType }</td>
					<td>
						<!--  <button id="claim_btn">CLAIM</button><a href="claim.jsp"></a> </td> -->
						<!-- <a href="claim.jsp">CLAIM</a> --> <!-- <button id="claim_btn" formaction="claim.do" onclick=window.location.href="claim.jsp">CLAIM</button> -->
						<!-- <button type="submit" onclick=window.location.href="claim.jsp">CLAIM</button> -->
						
						<%-- <form action="claim.do"><input type="hidden" id="custId" name="policyNo" value="${Policy.policyNo}"/>
						<input type="submit" id="claimBtn" value="CLAIM"/></form> --%>
						
					</td>
				</tr>
			</c:forEach>
		</table>

</div>
</body>
</html>