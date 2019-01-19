<%@page import="entity.Policy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/REGISTER2.css" /> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />"> 
<script src="<c:url value="/calculator1.js" />"></script>
<link rel="stylesheet" href="<c:url value="/css/hide.css" />">
<script src="<c:url value="/calculator.js" />"></script>
<script src="<c:url value="/js/jquery-1.10.2.min.js" />"></script>
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>




<title>Policy Details</title>
</head>


<body >

<jsp:include page="fullscreen.html"/>
        <img src="${pageContext.request.contextPath}/BG.jpg" style='width:100%;height:90%' alt='[]'/>
        
        <div id="main">
         
                  
           <form > <table align="center" >
             
                        <div id="title"><b>Policy Details</b></div>
                        <font color="red"><div id="myDIV" align="center"></div></font>
                        <hr size="3px" width="150px" color="#428ff4"/><br>
                 
               
                
                <tr>
                <td>
                <p id="bold"> Policy No. :</p>
                </td>
                    <td>
                        <input type="text" value="${Policy.policyNo}" readonly />
                    </td>
                    
                </tr>
                
                <tr>
                <td>
               <p id="bold"> Policy Type :</p>
                </td>
                
                    <td>
                        <input type="text" value="${Policy.policyType} " readonly />
                    </td>
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
                <p id="bold">Expiry Date: </p>
                </td>
                <fmt:parseDate value="${ Policy.lastDate}" var="lastdate"
							pattern="yyyy-mm-dd" />
                    <td>
                       <input type="text" value= "<fmt:formatDate value="${lastdate}" pattern="yyyy-mm-dd" />"  id="myDate" />
                    </td>
                </tr>
                <tr>
                <td>
               	<p id="bold">Premium Value : </p>
                </td>
                    <td>
                        &#8377;<input type="text" value="${Policy.premiumValue} " readonly />
                    </td>
                </tr>
                </table>
                </form>
                
                
                <br>
                <br>
                <table align="center">
                <tr>
                <td><button class="signUpBtn" onclick="myFunction2()">Verify</button>
                </td>
                
                
                    <td align="center">
                        <a
			href="renew.do?policyNo=${Policy.policyNo }"><input
			type="button" value="Renew" id="hide" class="signUpBtn" style="text-decoration: none;"/></a>
                    </td>
                </tr>
        
                
            </table>
            
            
        </div>
        
        
    </body>
</html>