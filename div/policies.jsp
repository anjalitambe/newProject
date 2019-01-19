<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
		<link rel="stylesheet" href="style1.css">
		<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>
		<title>User Policies</title>
	</head>
	<body style="font-family: 'Times New Roman'; font-size: 14px">

		<div class="grow" style="background-color: #2a75a9;">
		<table align="center" colspan="2">
		<c:forEach items="${Policy}" var="Policy">
		<h2>Policy No: <p id="policyNo" value=${Policy.policyNo }></p></h2>
		<h2>Registration No: <p id="policyNo"></p></h2>
		<h2>Policy No: <p id="policyNo"></p></h2>
		<h2>Policy No: <p id="policyNo"></p></h2>
		<h2>Policy No: <p id="policyNo"></p></h2>
		<h2>Policy No: <p id="policyNo"></p></h2>
		<h2>Policy No: <p id="policyNo"></p></h2>
		<!-- <div class="container" style="margin-top: 50px"> -->
</c:forEach>
</table>
<%-- 
<tr><td><h4>Registration No. </h4></td>	<td><input type="text" name="registrationNo" value="${Vehicle.registrationNo}" id="regNo"/> </td></tr>
<tr><td><h4>Vehicle Name: </h4></td>			<td><input type="text" name="vehicleName" value="${Vehicle.vehicleName}" id="vName"/></td></tr>
<tr><td><h4>Vehicle Type: </h4></td>	<td><input type="text" name="vehicleType" value="${Vehicle.vehicleType}" id="vType"/></td></tr>
<tr><td><h4>Model Year: </h4></td>		<td><input type="text" name="modelYear" value="${Vehicle.modelYear}" id="mYear"/></td></tr>
<tr><td><h4>Vehicle Price: </h4></td>	<td><input type="text" name="vehiclePrice" value="${Vehicle.vehiclePrice}" id="vPrice"/></td><tr>
<tr><td colspan="2"><img src="{Vehicle.vehicleImage}" height="200" width="200"></td></tr>
<tr><td><h4>Policy Type: </h4></td>		<td><input type="radio" name="policyType" id="comp" value="Comprehensive" >Comprehensive<br> 
											<input type="radio" name="policyType" id="third" value="ThirdParty">Third Party <br></td></tr>			

			<table border="1" bordercolor="crimson" align="center" colspan="1">
				<tr bgcolor="wheat">
					<th>Policy No.</th>
					<th>Registration Number</th>
					<!-- <th>Policy Value</th> -->
					<th>Start Date</th>
					<th>Last Date</th>
					<th>Premium Value</th>
					<th>Policy Type</th>
					<th>Policy Status</th>
				</tr>
				<c:forEach items="${Policy}" var="Policy">
					<tr>

						<td><a href="claim.do?policyNo=${Policy.policyNo}">${Policy.policyNo}</a></td>
						<td>${Policy.vehicle.registrationNo}</td>
						<td>${ Policy.startDate }</td>
						<td>${ Policy.lastDate}</td>
						<td>${ Policy.premiumValue}</td>
						<td>${ Policy.policyType }</td>
						<td>${ Policy.claim_status }</td>
						<td>
							<!--  <button id="claim_btn">CLAIM</button><a href="claim.jsp"></a> </td> -->
							<!-- <a href="claim.jsp">CLAIM</a> --> <!-- <button id="claim_btn" formaction="claim.do" onclick=window.location.href="claim.jsp">CLAIM</button> -->
							<!-- <button type="submit" onclick=window.location.href="claim.jsp">CLAIM</button> -->

							<form action="claim.do"><input type="hidden" id="custId" name="policyNo" value="${Policy.policyNo}"/>
						<input type="submit" id="claimBtn" value="CLAIM"/>

						</td>
					</tr>
				</c:forEach>
			</table>
 --%>
 
			<!-- <a href="buyAction.jsp">Buy a Policy</a>
			<a href="renew.jsp">Renew</a> -->
			<button a href="buyAction.jsp">Buy</button>
			<button a href="renew.jsp">Renew</button>
		</div>
	</body>
</html>