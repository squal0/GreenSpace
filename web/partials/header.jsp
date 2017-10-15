
    <div class="container" id="header">
        
        <div class="row">
            
            <div class="col-md-9">
                <a href="index.jsp" id="logo-link">
                    <img src="./images/logo2.png" alt="enviromental-survey"/>
                    <h2>  Environmental Survey </h2>
                </a>
            </div>
            
            <%
                String username = (String) session.getAttribute("user");
                if (username == null) {
            %>
            <div class="col-md-3 col-sm-6" id="buttons">
                
                                <a class="btn btn-primary" href="login.jsp">
					<span class="glyphicon glyphicon-log-in"></span>
					Login
                                </a>
                
				<a class="btn btn-primary" href="register.jsp">
					<span class="glyphicon glyphicon-user"></span>
					Register
                                </a>				                
		</div>
            <% } else {
         %>
         
         <div class="dropdown">
            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                Hi, &nbsp; <%=username %>
              <span class="caret"></span>
            </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" id="details">
              <li><a href="edit-user.jsp">Edit Details</a></li>
              <li><a href="effective-part.jsp">Effective Participation</a></li>
              <li><a href="faqs.jsp">Faqs</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="LogoutServlet">Logout</a></li>
            </ul>
        </div>
        <% }%>
        </div>
    </div>

    <nav class="navbar navbar-inverse navbar-static-top" role="navigation" id="env-navmenu">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                           <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">Home</a></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Survey Board<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="surveysboard.jsp">Surveys</a></li>
                            <li><a href="surveysboard.jsp">Competitions</a></li>
                        </ul>
                    </li>
                    <li><a href="support.jsp">Support</a></li>
                    <li><a href="faqs.jsp">FAQs</a></li>
                </ul>


            </div>
        </div>
    </nav>
