<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link href="fullscreen.css" rel="stylesheet"/>
        <script src="jquery-1.10.2.min.js"></script>
        <script src="JQUERY%20full.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
  <body id="abc">
        <div id="abg">
        
        </div>
        
        <div id="amain">
            <img src="Menu%20Icon.png" id="aicon"/>
            <div id="amenu">
                <ul>
                <li>Hello, ${User.name}</li>
                    <li><a href="userprofile.jsp">HOME</a></li>
                    <li><a href="getPolicies.do">POLICIES</a></li>
                    <li><a href="buyAction.jsp">BUY</a></li>
                    <li><a href="logout.do">LOGOUT</a></li>
                    
                </ul>
            </div>
        </div>
        <div id="amenu_circle_layer"></div>
        
</body>
</html>