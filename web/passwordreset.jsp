<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Password - Environmental Survey</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="icon" href="images/logo.ico" type="image/ico">
        <script src="js/survey.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">  
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file='/partials/header.jsp'%>
        
        <div class="container" id="resetpass-form">
            <div class="errors">
                <span ><%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage")%></span>
        
            </div>
            
                <form method="post" id="reset" action="<%=request.getContextPath()%>/ResetPassServlet">

                 
                <label><span>Username</span></label>
                <input type="text" class="form-control" placeholder="Enter Username" name="username" required>
                
                <label><span>Password</span></label>
                <input type="password" class="form-control" placeholder="Enter Password" name="password" required>

                <label><span>Confirm Password</span></label>
                <input type="password" class="form-control" placeholder="Confirm Password" name="confpassword" required>

                <button type="submit" class="btn btn-primary btn-lg btn-block">Reset Password</button>
                
            </form>
        </div>
         
        <%@include file='/partials/footer.jsp'%>
    </body>
</html>