
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

		<link href="slide.css" rel="stylesheet"/>
		<%-- <link rel="stylesheet" href="<c:url value="/slide.css" />"> --%>
		<%-- <jsp:include page="slide.css"/> --%>
        <script src="jquery-1.10.2.min.js"></script>
        <script src="JQUERY%20slide.js"></script>

<title>Dashboard</title>
</head>
<body>
<jsp:include page="fullscreen.jsp"/>
<img src='BG.jpg' style='width:100%;height:90%' alt='[]' />

 <a id="topmainlink"  href="getPolicies.do"><div id="topmain">
          <div id="topmainbox">
                POLICIES
            </div>
            <div id="topmainboxBottom"></div>
        </div></a>
        
        
        
        
        

        <!-- main page -->
        <div>
        
        <img src="finalv1.png" id="mainskate"/>
        
        <div id="mainmsg">
            READY<br>TO<br>INSURE?
        </div>
        
        <div id="mainmsg2">
            <br><br>
        </div>
        
        <a id="mainlink" href="buyAction.jsp"><div id="main">
            <div id="mainbox">
                BUY
            </div>
            <div id="mainboxBottom"></div>
        </div></a>
        </div>
    </body>


</html>