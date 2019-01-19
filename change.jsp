<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link href="REGISTER.css" rel="stylesheet"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        
<title>Validate</title>
</head>
<body>


        <img src='BG.jpg' style='width:100%;height:90%' alt='[]' />
        
        <div id="main">
        <div class="alert alert-danger fade in">${Invalid}</div>
        <form action="change.do">
            <table border="0" cellspacing="10">
                <tr>
                    <td>
                        <div id="title">Change Password</div>
                        <hr size="1px" width="100px" color="black"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" placeholder="Password" name="password" id="txtPassword" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required />
                    </td>
                  
                </tr>
                <tr>
                    <td>
                        <input type="password" placeholder="Confirm Password" name="repassword" id="txtConfirmPassword" required />
                        <span id='message'></span>
                    </td>
                </tr>
                
                <tr>
                    <td align="center">
                        <input type="submit" value="Update" id="signUpBtn"  onclick="return Validate()" />
                    </td>
                </tr>
            </table>
            </form>
        </div>
        
        
    </body>
    
    <script type="text/javascript">
    function Validate() {
        var password = document.getElementById("txtPassword").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
</html>