
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register - GreenSpace Environment</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="icon" href="images/logo.ico" type="image/ico">
        <script src="js/survey.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">  
        </script>
        <script src="http://code.jquery.com/ui/1.12.0/jquery-ui.min.js">
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <!-- date picker javascript -->
        <script>
         $(function() {
            $( "#datepicker-13" ).datepicker();
         });
         
         function validate(){
                
                var name = document.forms["register-form"]["name"].value;
                var username = document.forms["register-form"]["username"].value;
                var rollno = document.forms["register-form"]["rollno"].value;
                var date = document.forms["register-form"]["date"].value;
                var class_spec = document.forms["register-form"]["classSpec"].value;
                var specification = document.forms["register-form"]["specification"].value;
                var password = document.forms["register-form"]["password"].value;
                var confpassword= document.forms["register-form"]["confpassword"].value;
                
                if(name.length === null || name === "")
                { 
                    document.getElementById('errors').innerHTML= "<li>"+"Name can't be blank."+"</li>"; 
                    return false; 
                } 
                else if (username === null || username === "")
                { 
                    document.getElementById('errors').innerHTML="<li>"+"Username can't be blank"+"</li>"; 
                    return false; 
                }
                else if(rollno.length === null || rollno === "")
                { 
                    document.getElementById('errors').innerHTML="<li>"+"Roll_No / Employee_No can't be blank."+"</li>"; 
                    return false; 
                } 
                else if(date.length === null || date === "")
                { 
                    document.getElementById('errors').innerHTML="<li>"+"Date can't be blank."+"</li>"; 
                    return false; 
                }
                else if(class_spec.length === null || class_spec === "")
                { 
                    document.getElementById('errors').innerHTML="<li>"+"Class can't be blank."+"</li>"; 
                    return false; 
                }
                else if(specification.length === null || specification === "")
                { 
                    document.getElementById('errors').innerHTML="<li>"+"Specification can't be blank."+"</li>"; 
                    return false; 
                }
                else if(password.length < 8)
                { 
                    document.getElementById('errors').innerHTML="<li>"+"Password must be at least 8 characters long."+"</li>"; 
                    return false; 
                } 
                else if (password !== confpassword)
                { 
                    document.getElementById('errors').innerHTML="<li>"+"Confirm Password should match with the Password"+"</li>"; 
                    return false; 
                } 
            } 
        </script>
    </head>
    <body>
        <%@include file='/partials/header.jsp'%>
        
        <div class="container" id="register-form">
            
            <div class="errors" id="errors">
                <ul>
                    <span ><%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage")%></span>
                </ul>
            </div>

                <form method="post" action="RegisterServlet" name="register-form" onsubmit="return validate()">
                               
                <label><span>Name</span></label>
                <input type="text" class="form-control" placeholder="Enter Your Full Names" name="name" required>
                
                <label><span>Username</span></label>
                <input type="text" class="form-control" placeholder="Enter Username" name="username" required>
                
                <label><span>Roll No / Employee No</span></label>
                <input type="text" class="form-control" placeholder="Enter your Enrollment No or Employee No " name="rollno" required>
                
                <label><span>Admission Date / Date of  Joining</span></label>
                <input type = "text" class="form-control" id = "datepicker-13" placeholder="Enter Admission Date or Date of Joining" name="date" required>
                
                <label><span>Class</span></label>
                <input type="text" class="form-control" placeholder="Enter Class" name="classSpec" required>
                
                <label><span>Specification</span></label>
                <input type="text" class="form-control" placeholder="Enter Specification" name="specification" required>

                <label><span>Password</span></label>
                <input type="password" class="form-control" placeholder="Enter Password" name="password" required>
                
                <label><span>Confirm Password</span></label>
                <input type="password" class="form-control" placeholder="Confirm Password" name="confpassword" required>
                
                <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
                <button type="submit" class="btn btn-primary btn-lg btn-block">Register</button>
                
            </form>
        </div>
                 
        <%@include file='/partials/footer.html'%>
    </body>
</html>
