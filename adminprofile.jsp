<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> Admin-panel</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->








<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Admin</title>
</head>
<body>


	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				

				

				<div class="table100 ver5 m-b-110">
						<div style="float: left;"><h1>Welcome to Admin page</h1>
						Hello, ${User.name} <br> Email id: ${User.email} <br>
						</div>
						<div style="float: right;">
						<a href="logout.do"><button>LOGOUT</button></a></div>
					<table data-vertable="ver5">
						<thead>
							<tr class="row100 head">
								<th class="column100 column1" data-column="column1">POLICY NO.</th>
								<th class="column100 column2" data-column="column2">REGISTRATION NO.</th>
								<th class="column100 column3" data-column="column3">START DATE</th>
								<th class="column100 column4" data-column="column4">EXPIRY DATE</th>
								<th class="column100 column5" data-column="column5">PREMIUM VALUE</th>
								<th class="column100 column6" data-column="column6">POLICY TYPE</th>
								<th class="column100 column7" data-column="column7">POLICY STATUS</th>
								
							</tr>
						</thead>
						<tbody>
								<c:forEach items="${Policy}" var="Policy">
							<tr class="row100">
								<td class="column100 column1" data-column="column1"><a href="approveclaim.do?policyNo=${Policy.policyNo}">${Policy.policyNo}</a></td>
								<td class="column100 column2" data-column="column2">${Policy.vehicle.registrationNo}</td>
								<fmt:parseDate value="${ Policy.lastDate}" var="lastdate" pattern="yyyy-mm-dd" />
								<fmt:parseDate value="${ Policy.startDate}" var="startdate" pattern="yyyy-mm-dd" />
								
								
								<td class="column100 column3" data-column="column3"><fmt:formatDate value="${startdate}" pattern="dd-mm-yyyy" /></td>
								<td class="column100 column4" data-column="column4"><fmt:formatDate value="${lastdate}" pattern="dd-mm-yyyy" /></td>
								<td class="column100 column5" data-column="column5">${ Policy.premiumValue}</td>
								<td class="column100 column6" data-column="column6">${ Policy.policyType }</td>
								<td class="column100 column7" data-column="column7">${ Policy.claim_status }</td>
								
							</tr>
						</c:forEach>
							
						</tbody>
					</table>
				</div>

				
				</div>
			</div>
		</div>
	</div>


	

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>




</body>
</html>