

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GreenSpace Environment</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="icon" href="images/logo.ico" type="image/ico">
        <script src="js/survey.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">  
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
    </head>
    <body>
        <%@include file='partials/header.jsp'%>
        <div class="errors">
        <span ><%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage")%></span>
        
        </div>
        
        <div class="jumbotron" id="new-surveys">
            
            <h3>New &nbsp;Surveys</h3>
            
            <div class="card">
                <img src="images/survey1.jpg" alt="water pollution and treatment" style="width:100%">
                <div>
                  <p>Water Pollution & Treatment</p> 
                  <button class="btn btn-primary"><a href="">Start Survey</a></button>
                </div>
            </div>
            
            <div class="card">
                <img src="images/survey2.jpg" alt="land degradation" style="width:100%">
                <div>
                  <p>Land Degradation</p> 
                  <button class="btn btn-primary"><a href="">Start Survey</a></button>
                </div>
            </div>
            
            <div class="card">
                <img src="images/survey3.jpg" alt="environment remedation" style="width:100%">
                <div>
                  <p>Environmental Remediation</p> 
                  <button class="btn btn-primary"><a href="">Start Survey</a></button>
                </div>
            </div>
        </div>
        
        <div class="row">
            
            <div class="col-md-7">
                
                <h3 class="comp-heading">Available &nbsp;Competitions</h3>
                <div class="brief-competition">
                    <div class="jumbotron">
                        <img src="#" alt=""/>
                        
                    </div>
                    <div class="jumbotron">
                        <img src="#" alt=""/>
                        
                    </div>
                    <div class="jumbotron">
                        <img src="#" alt=""/>
                        
                    </div>
                    <div class="jumbotron">
                        <img src="#" alt=""/>
                        
                    </div>
                    <div class="jumbotron">
                        <img src="#" alt=""/>
                        
                    </div>
                </div>
            </div>
            
            <div class="col-md-5">
                
                <h3 class="comp-heading">Completed Surveys and Competitions</h3>
                <div class="surveys-done">
                    <div class="jumbotron survey-desc">
                        <img src="#" alt="survey 1 done"/>
                        <h4>Completed Survey 1 brief description</h4>
                    </div>
                    <div class="jumbotron survey-desc">
                        <img src="#" alt="survey 1 done"/>
                        <h4>Completed Survey 2 brief description</h4>
                    </div>
                    <div class="jumbotron survey-desc">
                        <img src="#" alt="survey 1 done"/>
                        <h4>Completed Survey 3 brief description</h4>
                    </div>
                    <div class="jumbotron survey-desc">
                        <img src="#" alt="survey 1 done"/>
                        <h4>Completed Survey 4 brief description</h4>
                    </div>
                    <div class="jumbotron survey-desc">
                        <img src="#" alt="survey 1 done"/>
                        <h4>Completed Survey 5 brief description</h4>
                    </div>
                </div>
            </div>
        </div>
        <%@include file='/partials/footer.html'%>
    </body>
</html>
