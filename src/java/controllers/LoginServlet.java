/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.LoginBean;
import daos.LoginDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Home
 */
public class LoginServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    public LoginServlet() {
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //Here username and password are the names which I have given in the input box in Login.jsp page. Here I am retrieving the values entered by the user and keeping in instance variables for further use.
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        LoginBean loginBean = new LoginBean(); //creating object for LoginBean class, which is a normal java class, contains just setters and getters. Bean classes are efficiently used in java to access user information wherever required in the application.
        loginBean.setUserName(username); //setting the username and password through the loginBean object then only you can get it in future.
        loginBean.setPassword(password);
        
        LoginDao loginDao = new LoginDao(); //creating object for LoginDao. This class contains main logic of the application.
        String userValidate = loginDao.authenticateUser(loginBean); //Calling authenticateUser function
//        if(userValidate.equals("User Logged In Successfully")) //If function returns success string then user will be rooted to Home page
//        {
//            
//            HttpSession session = request.getSession(true);
//            String user = request.getParameter("username");
//            session.setMaxInactiveInterval(10*60);
//            
//            session.setAttribute("user", user);
//            request.setAttribute("username", username); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
//            request.setAttribute("errMessage", "User Logged In Successfully");
//            request.getRequestDispatcher("/index.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
//        }
//        else
//        {
//            request.setAttribute("errMessage", userValidate); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
//            request.getRequestDispatcher("/login.jsp").forward(request, response);//forwarding the request
//        }
          if(userValidate.equals("Admin_Role"))
            {
                System.out.println("Admin's Home");
                HttpSession session = request.getSession(true); //Creating a session
                String user = request.getParameter("username");
                session.setAttribute("user", user);
                session.setAttribute("Admin", username); //setting session attribute
                request.setAttribute("username", username);
                request.getRequestDispatcher("/admin-section.jsp").forward(request, response);
            }
            else if(userValidate.equals("User_Role"))
            {
                System.out.println("User's Home");
                HttpSession session = request.getSession(true); //Creating a session
                String user = request.getParameter("username");
                session.setAttribute("user", user);
                session.setMaxInactiveInterval(10*60);
                session.setAttribute("Student", username);
                request.setAttribute("username", username);
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }
            else if(userValidate.equals("User_Role"))
            {
                System.out.println("User's Home");
                HttpSession session = request.getSession(true); //Creating a session
                String user = request.getParameter("username");
                session.setAttribute("user", user);
                session.setMaxInactiveInterval(10*60);
                session.setAttribute("Faculty", username);
                request.setAttribute("username", username);
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }
            else if(userValidate.equals("User_Role"))
            {
                System.out.println("User's Home");
                HttpSession session = request.getSession(true); //Creating a session
                String user = request.getParameter("username");
                session.setAttribute("user", user);
                session.setMaxInactiveInterval(10*60);
                session.setAttribute("Staff", username);
                request.setAttribute("username", username);
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }
            else
            {
                System.out.println("Error message = "+userValidate);
                request.setAttribute("errMessage", userValidate);
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
}
}
