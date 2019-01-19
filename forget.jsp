<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link href="REGISTER.css" rel="stylesheet"/>
<title>Forget Validate</title>
</head>
<body>
        <img src='BG.jpg' style='width:100%;height:90%' alt='[]' />
        
        <div id="main">
       <font color="Red"> <div class="alert alert-danger fade in">${Invalid}</div></font>
        <form action="forget.do">
            <table border="0" cellspacing="10">
                <tr>
                    <td>
                        <div id="title">User Verification</div>
                        <hr size="1px" width="100px" color="black"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="email" placeholder="Email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" 
                        title="example@example.extension" required />
                    </td>
                  
                </tr>
                <tr>
                    <td>
                        <input type="password" placeholder="Favourite movie" name="movie" title="Security question" required />
                    </td>
                </tr>
                
                <tr>
                    <td align="center">
                        <input type="submit" value="Validate" id="signUpBtn"/>
                    </td>
                </tr>
            </table>
            </form>
        </div>
        
        
    </body>
</html>