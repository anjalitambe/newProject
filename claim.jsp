<%@page import="entity.Policy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/claim.css" /> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />"> 
<script src="<c:url value="/calculator1.js" />"></script>
<link rel="stylesheet" href="<c:url value="/css/hide.css" />">
<script src="<c:url value="/calculator.js" />"></script>
<script src="<c:url value="/js/jquery-1.10.2.min.js" />"></script>
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>




<title>INSURANCE CLAIM</title>
</head>


<body >

<jsp:include page="fullscreen.html"/>
        <img src="${pageContext.request.contextPath}/BG.jpg" style='width:100%;height:90%' alt='[]'/>
        
        <div id="main">
         
           <table align="center" >
            <div id="title"><b>INSURANCE CLAIM</b></div>
                        <hr size="3px" width="150px" color="#428ff4"/><br>
           
           
           <form action="token.do?policyNo=${ Policy.policyNo }"> 
             
                       
                 
               
                
                <tr>
                <td>
                <p id="bold"> Policy No. :</p>
                </td>
                    <td>
                        <input type="text" name="policyNo" value="${Policy.policyNo}" readonly />
                    </td>
                    
                </tr>
                
                <tr>
                <td>
               <p id="bold"> Policy Value :</p>
                </td>
                
                    <td>
                        <input type="number" value="${ Policy.premiumValue }" " readonly />
                    </td>
                </tr>
                <tr>
					<td>
						<p id="bold">Policy Type :</p>
					</td>
					<td><input type="text" placeholder="POLICY TYPE"
						value="${ Policy.policyType }" readonly="readonly" /></td>
				</tr>
                
                
                
                <tr>
                <td>
               <p id="bold"> Start Date : </p>
                </td>
                <fmt:parseDate value="${ Policy.startDate}" var="startdate"
							pattern="yyyy-mm-dd" />
                    <td>
                       <input type="text" value= "<fmt:formatDate value="${startdate}" pattern="yyyy-mm-dd" />" readonly />
                    </td>
                </tr>

                <tr>
                <td>
                <p id="bold">Last Date: </p>
                </td>
                <fmt:parseDate value="${ Policy.lastDate}" var="lastdate"
							pattern="yyyy-mm-dd" />
                    <td>
                       <input type="text" value= "<fmt:formatDate value="${lastdate}" pattern="yyyy-mm-dd" />" readonly id="myDate" />
                    </td>
                </tr>
               <tr>
					<td>
					<p id="bold">Type of Damage :</p>
					</td>
					<td><select name="damage" >      
							<option>Theft</option>      
							<option>Liability for Property damage</option>      
							<option>Liability for bodily damage</option>  
							<option>Collision claim </option>
						</select>
						</td>
						</tr>
               
               
               <tr>
					<td><p id="bold">Reason for Claim:</p>
					<td><textarea rows="4" cols="20">

</textarea></td>

				</tr>
               
               	<tr>

					<td align="center"><input type="submit" value=" claim"
						id="claimbtn" class="signUpBtn"/></td>
				</tr>
               
               
               
               
                </form>
               
                </table>
            
            
        </div>
        
        
    </body>
</html>