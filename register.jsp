<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link href="REGISTER.css" rel="stylesheet"/>
<title>Register Here</title>
</head>
<body>


        <img src='BG.jpg' style='width:100%;height:90%' alt='[]' />
        
        <div id="main">
        <form action="register.do">
            <table border="0" cellspacing="10">
                <tr>
                    <td>
                    <font color="Red">${Invalid}</font>
                        <div id="title">ENTER DETAILS</div>
                        <hr size="1px" width="100px" color="black"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="email" placeholder="Email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" 
                        title="example@example.extension" required />
                    </td>
                   <!--  <td align="right">
                        <input type="submit" value="VALIDATE" id="ValBtn"/>
                    </td> -->
                </tr>
                <tr>
                    <td>
                        <input type="password" placeholder="Password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password"  placeholder="Favourite Movie " name="movie"  title="Security Question: Enter alphabets or numbers only" pattern="[a-zA-Z0-9].{2,}" required/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <input type="text" placeholder="Name" name="name" title="Enter Your Name Here: Enter alphabets only" pattern="[a-zA-Z].{2,}" required/>
                    </td>
                </tr>
                <!-- <tr>
                    <td>
                        <input type="text" placeholder="Aadhar" name="aadhar_no"/>
                    </td>
                </tr>
 -->                
                <tr>
                    <td align="center">
                        <input type="submit" value="Register" id="signUpBtn"/>
                    </td>
                </tr>
            </table>
            </form>
        </div>
        
        
    </body>
</html>