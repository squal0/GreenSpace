<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FAQs - Environmental Survey</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="icon" href="images/logo.ico" type="image/ico">
        <script src="js/survey.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">  
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <script>
            $(document).ready(function(){
                $(".query").click(function(){
                    $(this).next(".soln").slideToggle("slow");
                });
            });
        </script>
    </head>
    <body>
        <%@include file='/partials/header.jsp'%>
        
        <div class="container">
            
            <div id="faqs_head">
                <img src="images/faqs_img.png" alt="faqs images"/>
                <h2>Frequently Asked Questions</h2>
            </div>
            
            
            <div class="jumbotron" id="faqs_jumbotron">
                
                <div class="query"><h5>How to register for the survey?</h5> <span class="caret"></span></div>
                <div class="soln">
                    <h2>
                        To register for the survey, you should first create an account.
                    </h2>
                </div>
                
                <div class="query"><h5>How to participate in the survey?</h5> <span class="caret"></span></div>
                <div class="soln">
                    <h2>
                        To participate in a survey, you must first login and navigate to the surveys board where<br/>
                        you can pick a survey based on the class or specifications from a list of surveys.
                    </h2>
                </div>
                
                <div class="query"><h5>How will I be intimated with the new survey?</h5> <span class="caret"></span></div>
                <div class="soln">
                    <h2>
                        New surveys will be added by the <strong>admin</strong> and appear on the both the <a href="index.jsp" target="_blank">Home page</a> and <br/>
                        <a href="surveysboard.jsp" target="_blank">Surveys Board page</a>. Kindly note that to take part on the surveys one should be logged in.
                    </h2>
                </div>
                
                <div class="query"><h5>What if it gives error, after participating in the entire survey, and clicked on the submit button at the last for submitting the survey?</h5> <span class="caret"></span></div>
                <div class="soln">
                    <h2>
                        Should a user get an error when submitting a complete survey, this will indicate a problem with the current survey.<br/>
                        The user is advised go to the <a href="support.jsp" target=_blank">Supports page</a> and notify the admin of the problem<br/>
                        The user will be required to specify the problem in detail and the user will be notified once the problem has been fixed.
                    </h2>
                </div>
                
                <div class="query"><h5>Why I am unable to participate in the survey? (Two reasons : 1.Not the registered user, and 2.Technical Problem)</h5> <span class="caret"></span></div>
                <div class="soln">
                    <h2>
                        <ul>
                            <li>
                                <h6>Not the registered user</h6>
                                <h3> To participate in a survey the user should have registered for an account. Navigate to the<br/>
                                    <a href="register.jsp" target="_blank">Registration Page</a> to register for an account to be able
                                    to participate in surveys. If a user already has account,<br/> then they should navigate to the <a href="login.jsp" target="_blank">Login Page</a>
                                    and login to their account to be able to participate in a survey.
                                </h3>
                            </li>
                            <li>
                                <h6>Technical Problem</h6>
                                <h3>Should a user encounter a technical problem when using the <strong>Enviromental Survey Portal</strong>,<br/>
                                    the user is advised to navigate to the <a href="support.jsp" target="_blank">Support Page</a> and contact the admin.
                                    The user is required to specify<br/> the kind of technical issue they are experiencing to ensure the error is fixed accordingly.
                                </h3>
                            </li>
                        </ul>
                    </h2>
                </div>
                
                <div class="query"><h5>Why my registration request is not accepted? </h5> <span class="caret"></span></div>
                <div class="soln">
                    <h2>
                        Should one's registration not be accepted, then one should navigate to the <a href="support.jsp" target="_blank"> supports page</a><br/>
                        and contact the <strong>admin</strong> and await feedback on why their registration request was not accepted.
                    </h2>
                </div>
                
                <div class="query"><h5>Will there be any benefit if participated in the survey?</h5> <span class="caret"></span></div>
                <div class="soln">
                    <h2>
                        By participating and completing the surveys, a user gains points and due to the interactive survey process<br/>
                        the first 3 users with the highest points will receive prizes based on their effective participation on the surveys<br/>
                        they undertook.
                    </h2>
                </div>
                
                <div class="query"><h5>How to participate in the competitions?</h5> <span class="caret"></span></div>
                <div class="soln">
                    <h2>
                        To participate in a competition one needs to have atleast conducted and completed a number of enviromental surveys<br/>
                        before they can take part in the competition.
                    </h2>
                </div>
                
                <div class="query"><h5>What if there are some arrears in participating the survey? </h5> <span class="caret"></span></div>
                <div class="soln">
                    <h2>
                        Arrears that exist in a survey disallows a user from submitting a survey. Submitting an incomplete survey<br/>
                        also prevents one from earning any points from the survey and while the user might submit the survey any arrears<br/>
                        he/she will not gain any points and it will be as if the user didn't participate in the survey at all.
                    </h2>
                </div>
                
                
                
            </div>
        </div>
        
        <%@include file='/partials/footer.html'%>
    </body>
</html>