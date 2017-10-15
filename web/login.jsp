
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - Environmental Survey</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="icon" href="images/logo.ico" type="image/ico">
        <script src="js/survey.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">  
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <script>
            
            $(document).ready( function() {
                $('.errors').delay(3000).fadeOut();
            });
        </script>
    </head>
    <body>
        <%@include file='/partials/header.jsp'%>
        
        <div class="container" id="login-form">
            <div class="errors">
                <span ><%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage")%></span>
        
            </div>
                <h4 class="h4reg">User Login</h4> 
                <form method="post" id="login" action="<%=request.getContextPath()%>/LoginServlet">

                <label><span>Username</span></label>
                <input type="text" class="form-control" placeholder="Enter Username" name="username" required>

                <label><span>Password</span></label>
                <input type="password" class="form-control" placeholder="Enter Password" name="password" required>

                <input type="checkbox" checked="unchecked"> Remember me
                <button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
                <span class="psw"><a href="passwordreset.jsp">Forgot password?</a></span>
            </form>
        </div>
        
        <%@include file='/partials/footer.jsp'%>
    </body>
</html>
