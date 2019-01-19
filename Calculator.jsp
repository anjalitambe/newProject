<%@page import="entity.Vehicle"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html><html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>
<script src="<c:url value="/calculator.js" />"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/REGISTER3.css" /> 
<title>Calculator</title>
</head>


<body >


        <img src="${pageContext.request.contextPath}/BG.jpg" style='width:100%;height:90%' alt='[]'/>
        
        <div id="main">
         
           <table align="center" >
           <form action="home.jsp" id="vehicleform" >
            
             
                        <div id="title"><b>Vehicle Details</b></div>
                        <hr size="3px" width="150px" color="#428ff4"/><br>
                 
               
                
                <tr>
                <td>
                <p id="bold"> Registration No. :</p>
                </td>
                    <td>
                       <input type="text" name="registrationNo" value="${Vehicle.registrationNo}" id="regNo"/>
                    </td>
                    
                </tr>
                
                <tr>
                <td>
               <p id="bold"> Vehicle Name :</p>
                </td>
                
                    <td>
                       <input type="text" name="vehicleName" value="${Vehicle.vehicleName}" id="vName"/>
                    </td>
                </tr>
                <tr>
                <td>
               <p id="bold"> Vehicle Type : </p>
                </td>
                
                    <td>
                       <input type="text" name="vehicleType" value="${Vehicle.vehicleType}" id="vType"/>
                    </td>
                </tr>

                <tr>
                <td>
                <p id="bold">Model Year : </p>
                </td>
                
                    <td>
                       <input type="text" name="modelYear" value="${Vehicle.modelYear}" id="mYear"/>
                    </td>
                </tr>
                <tr>
                <td>
               	<p id="bold">Vehicle Price : </p>
                </td>
                    <td>
                        &#8377;<input type="text" name="vehiclePrice" value="${Vehicle.vehiclePrice}" id="vPrice"/>
                    </td>
                </tr>
                
                <tr>
                
                <td>
               	<p id="bold">Vehicle Image : </p>
                </td>
                <td colspan="2"><img src="${Vehicle.vehicleImage}" height="200" width="200"></td></tr>
                
                
                <tr><td><h4>Policy Type: </h4></td>		<td><input type="radio" name="policyType" id="comp" value="Comprehensive"  onclick="myFunction1()">Comprehensive<br> 
											<input type="radio" name="policyType" id="third" value="ThirdParty"  onclick="myFunction1()">Third Party <br></td></tr>
              
              
              <tr>
              <td></td>
              <td><input type="text" name="premiumValue" id="myDIV" /></td></tr>
                
                
                
                
                
                <tr>
					<td></td>
					<td><p id="myDIV3">
							<input type="submit" value="Login" id="myDIV3" class="signUpBtn" />
						</p></td>

				</tr>
				</form>
                </table>
                
             
            
            
        </div>
        
        
    </body>
</html>