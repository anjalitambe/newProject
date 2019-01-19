<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="HOMEPAGE.css" rel="stylesheet"/>
       <!--  <script src="jquery-1.10.2.min.js"></script>
        <script src="JQUERY%20HOMEPAGE.js"></script> -->
<title>Seguro Homepage</title>
</head>
<body>
<img src='BG.jpg' style='width:100%;height:90%' alt='[]' />
 <div id="box">
            <div id="main"></div>
            

            <div id="loginform">
            <font color="Red"> <div class="alert alert-warning">${Prompt}</div></font>
                <form action="login.do">
    <div style="float: left"> <h1>LOGIN</h1></div> 
                <a href="steps.jsp" style="text-decoration: none;"><div style="float: right"><img src="icon3.png" /></div></a>
                <input type="email" name= "email" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"  title="example@example.extension" required/><br>
                <input type="password" name="password" placeholder="Password" required/><br>
                <button id="lo_bt">LOGIN</button><br><br>
                <a href="forget.jsp" id="link">Forgot password</a><br><br>
                <a id="link" href="register.jsp">Don't have a Account? Sign up</a>
            </form>
            </div>
            
            <div id="signupform">
                <h1>Get Quote</h1>
                <input type="text" placeholder="Registration Number"/><br>
                <input type="text" placeholder="Model Year"/><br>
                <input type="text" placeholder="Type of Insurance"/><br>
                <input type="text" placeholder="Model Name"/><br>
                <button id="lo_bt">GET QUOTE</button>
            </div>
            
            <div id="login_msg">Have an account?</div>
            <div id="signup_msg">Get a Quote for your Vehicle</div>
            
            <button id="login_btn">LOGIN</button>
            <form action="buyquote.jsp"><button id="signup_btn">CLICK HERE</button></form>
            
            
        </div>
    </body>
</html>