<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
<link rel="stylesheet" href="style1.css">
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>

<title>User Policies</title>

<script type="text/javascript">
	function f() {

		document.getElementById("startD").innerHTML = "You can't renew your policy yet";
	}
</script>

</head>
<body style="font-family: 'Times New Roman'; font-size: 14px">


<jsp:include page="fullscreen.html"/>
<div id=ifdiv>
<c:if test="${empty Policy}">
            <p>
            <h1>NO POLICIES REGISTERED YET!</h1>
            </p>
            
           <!--  <a align ="center" href="buyAction.jsp"><input type="submit" value="Buy"  /></a> -->
           <a id="buymainlink" href="buyAction.jsp"><div id="buymain">
					<div id="buymainbox">BUY</div>
					<div id="buymainboxBottom"></div>
           
           
           
            
            
            </c:if></div>
    <c:if test = "${ not empty Policy }">

	<c:forEach items="${Policy}" var="Policy">
		<div class="grow">

			<table align="center" colspan="4">
				<tr>
					<td><h2>Policy No:</td>
					<td><h2>${Policy.policyNo }</h2></td>
					</h2>
				</tr>
			</table>
			<table >

				<div  id="aligndiv">

					<tr>
						<td style="width: 50%"></td>
						<td><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registration No:</h3></td>
						<td><h3>&nbsp;&nbsp;&nbsp;&nbsp;${Policy.vehicle.registrationNo }</h3></td>
					</tr>
					<tr>
						<td style="width: 50%"></td>
						<td><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Start date:</h3></td>
						<fmt:parseDate value="${ Policy.startDate}" var="startdate"
							pattern="yyyy-mm-dd" />
						<td><h3>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<fmt:formatDate value="${startdate}" pattern="dd-mm-yyyy" />
							</h3></td>
					</tr>
					<tr>
						<td style="width: 50%"></td>
						<td><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Expiry date:</h3></td>
						<fmt:parseDate value="${ Policy.lastDate}" var="lastdate"
							pattern="yyyy-mm-dd" />
						<td><h3>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<fmt:formatDate value="${lastdate}" pattern="dd-mm-yyyy" />
							</h3>
					</tr>
					<tr>
						<td style="width: 50%"></td>
						<td><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Premium value:</h3></td>
						<td><h3>&nbsp;&nbsp;&nbsp;&nbsp;&#8377; ${ Policy.premiumValue}</h3></td>
					</tr>
					<tr>
						<td style="width: 50%"></td>
						<td><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Policy Type:</h3></td>
						<td><h3>&nbsp;&nbsp;&nbsp;&nbsp;${ Policy.policyType }</h3></td>
					</tr>
					<tr>
						<td style="width: 50%"></td>
						<td><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Claim status:</h3></td>
						<td><h3>&nbsp;&nbsp;&nbsp;&nbsp;${ Policy.claim_status }</h3></td>
					</tr>
				</div>

			</table>
			<%-- 		<a href="getPolicy.do?policyNo=${Policy.policyNo}"><input type="submit" value="Renew" id="left"/></a> 
				<a href="claim.do?policyNo=${Policy.policyNo}"><input  type="submit" value="Claim" id="right"/></a> --%>

			<a id="leftmainlink" href="getPolicy.do?policyNo=${Policy.policyNo}"><div id="leftmain">
					<div id="leftmainbox">RENEW</div>
					<div id="leftmainboxBottom"></div>
				</div></a> <a id="rightmainlink" href="claim.do?policyNo=${Policy.policyNo}"><div id="rightmain">
					<div id="rightmainbox">CLAIM</div>
					<div id="rightmainboxBottom"></div>
				</div></a>



			<!-- <button a href="claim.jsp">Claim</button> -->
		</div>
	</c:forEach>
</c:if>

</body>
</html>