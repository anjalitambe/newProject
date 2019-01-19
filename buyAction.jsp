<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

		<link href="slidecopy.css" rel="stylesheet"/>
		<%-- <link rel="stylesheet" href="<c:url value="/slide.css" />"> --%>
		<%-- <jsp:include page="slide.css"/> --%>
        <script src="jquery-1.10.2.min.js"></script>
        <script src="JQUERY%20slide.js"></script>

<title>Register No.</title>
</head>
<body>
<jsp:include page="fullscreen.html"/>
<img id="imagelogo" src="smalllogo.png" />
<img src='BG.jpg' style='width:100%;height:90%' alt='[]' />
<form action="getVehicle.do">



 <div id="topmain">
          
          
          <div id="topmainbox">
         
               <input class="none" type="submit" value="  REGISTRATION NO." id="getVehicleDetails" >
            </div>
            <div id="topmainboxBottom"></div>
              <font color="white">${Prompt}</font>
        
        </div></a>
      
        
        
        
       
        
    	

        <!-- main page -->
        
        
        
        <div>
        
       
        
        
       
        <div id="main">
            <div id="mainbox">
              <input id="in" type="text" name="registrationNo" required />
            </div>
            <div id="mainboxBottom"></div>
        </div></a>
        </div>
        
        </form>
        <font color="red">${Prompt}</font>
    </body>


</html>