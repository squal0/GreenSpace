
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin - GreenSpace Environment</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="icon" href="images/logo.ico" type="image/ico">
        <script src="js/survey.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">  
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script>
        
            function validate(){
                
                var username = document.forms["admin-form"]["username"].value; 
                var password = document.forms["admin-form"]["password"].value; 
                var confpassword= document.forms["admin-form"]["confpassword"].value; 
                
                if (username === null || username === "")
                { 
                    document.getElementById('errors').innerHTML= "<li>"+"Username can't be blank"+"</li>"; 
                    return false; 
                }
                else if(password.length < 8)
                { 
                    document.getElementById('errors').innerHTML= "<li>"+"Password must be at least 8 characters long."+"</li>"; 
                    return false; 
                } 
                else if (password !== confpassword)
                { 
                    document.getElementById('errors').innerHTML= "<li>"+"Confirm Password should match with the Password"+"</li>"; 
                    return false; 
                } 
            } 
        </script>
    </head>
    <body>
        <%@include file='/partials/header.jsp'%>
        
        <div class="container" id="login-form">
            <div class="errors" id="errors">
                <ul>
                    <span ><%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage")%></span>
                </ul>
            </div>

                <form method="post" name="admin-form" action="AdminServlet" onsubmit="return validate()">
                
                <label><span>Username</span></label>
                <input type="text" class="form-control" placeholder="Enter Username" name="username" required>

                <label><span>Password</span></label>
                <input type="password" class="form-control" placeholder="Enter Password" name="password" required>
                
                <label><span>Confirm Password</span></label>
                <input type="password" class="form-control" placeholder="Enter Password" name="confpassword" required>

                <button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
                <span class="psw"><a href="passwordreset.jsp">Forgot password?</a></span>
            </form>
        </div>
                
        <%@include file='/partials/footer.html'%>
    </body>
</html>