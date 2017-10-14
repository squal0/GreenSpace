<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Support -  Environmental Survey</title>
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
        
        <div class="container">
            
            <div class="row">
                <div class="col-md-7" id="submit-form">
                    
                    <h4>Support Form</h4>
                    <form method="post" action="support" onsubmit="return validate()">

                        <label><span>Username</span><span class="required">*</span></label>
                        <input type="text" class="form-control" placeholder="Enter Username (Required)" name="username" required>
                        
                        <label><span>Email Address</span><span class="required">*</span></label>
                        <input type="email" class="form-control" placeholder="Enter Email Address (Required)" name="email" required>
                        
                        <label for="subject">Subject<span class="required">*</span></label>
                        <select class="form-control" id="subject">
                          <option>Surveys</option>
                          <option>Competitions</option>
                          <option>Login or Registration</option>
                          <option>Other</option>
                        </select>
                        
                        <label for="comment">Message<span class="required">*</span></label>
                        <textarea class="form-control" rows="5" id="comment" placeholder="Enter message...."></textarea>

                        <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
                        <h5>Fields marked as <span class="required">*</span> are required.</h5>
                    </form>
                </div>
                
                <div class="col-md-5">
                    
                    <h4 id="support-header">Need Support?</h4>
                    
                    <div class="support-contact">
                        
                        <div class="row">
                            <div class="col-md-4">
                                <img src="images/email.png" alt="email support"/>
                            </div>
                            
                            <div class="col-md-8">
                                <h5><a href="mailto:support@greenspace-environment.com">support@greenspace-environment.com</a></h5>
                                <h5><a href="mailto:surveys@greenspace-environment.com">surveys@greenspace-environment.com</a></h5>
                                <h5><a href="mailto:competitions@greenspace-environment.com">competitions@greenspace-environment.com</a></h5>
                                <h5><a href="mailto:info@greenspace-environment.com">info@greenspace-environment.com</a></h5>
                            </div>
                        </div>
                               
                    </div>
                    
                    
                    <div class="support-contact">
                        
                        <div class="row">
                            <div class="col-md-4">
                                <img src="images/contact.png" alt="contact support"/>
                            </div>
                        
                            <div class="col-md-8">
                                <h5><a href="tel:+254 20 344 3357"><span>Support</span> : +254 20 344 3357</a></h5>
                                <h5><a href="tel:+254 20 344 3357"><span>Surveys</span> : +254 20 456 5754</a></h5>
                                <h5><a href="tel:+254 20 344 3357"><span>Competitions</span> : +254 20 895 1224</a></h5>
                                <h5><a href="tel:+254 20 344 3357"><span>Info</span> : +254 20 286 9012</a></h5>
                            </div>
                        </div>
                        
                    </div>
                    
                    <div id="faqs-snip">
                        
                        <p>For more solutions visit the <a href="faqs.jsp" target="_blank">frequently asked questions (FAQs)</a> page.</p>
                            <a href="faqs.jsp"><img src="images/faqsnip.jpg" alt="visit faqs page for some solutions"/></a>
                        
                    </div>
                </div>
            </div>
        </div>
       
        <%@include file='/partials/footer.html'%>
    </body>
</html>