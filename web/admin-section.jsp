<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Section - Environmental Survey</title>
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
        
        
        <div class="jumbotron" id="new-surveys">
            
            <h3>Administrator &nbsp;Section</h3>
            
            <div class="card">
                <img src="images/survey1.jpg" alt="water pollution and treatment" style="width:100%">
                <div>
                  <p>User Management</p> 
                  <button class="btn btn-primary"><a href="">Manage Users</a></button>
                </div>
            </div>
            
            <div class="card">
                <img src="images/survey2.jpg" alt="land degradation" style="width:100%">
                <div>
                  <p>Surveys Management</p> 
                  <button class="btn btn-primary"><a href="">Manage Surveys</a></button>
                </div>
            </div>
            
            <div class="card">
                <img src="images/survey3.jpg" alt="environment remedation" style="width:100%">
                <div>
                  <p>Competitions Management</p> 
                  <button class="btn btn-primary"><a href="">Manage Competitions</a></button>
                </div>
            </div>
        </div>
         
        <%@include file='/partials/footer.jsp'%>
    </body>
</html>
