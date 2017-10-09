/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.RegisterBean;
import daos.RegisterDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Home
 */
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    public RegisterServlet(){}
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // input parameters into local variables
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String rollno = request.getParameter("rollno");
        String date = request.getParameter("date");
        String class_spec = request.getParameter("classSpec");
        String specification = request.getParameter("specification");
        String password = request.getParameter("password");
        
        RegisterBean registerBean = new RegisterBean();
        
        //using the admin java bean
        registerBean.setName(name);
        registerBean.setUsername(username);
        registerBean.setRollno(rollno);
        registerBean.setDate(date);
        registerBean.setClass_spec(class_spec);
        registerBean.setSpecification(specification);
        registerBean.setPassword(password);
        
        RegisterDao registerDao = new RegisterDao();
        //Logic of the Registration application is present here. We are going to insert user data in to the database.
        String userRegistered = registerDao.registerUser(registerBean);
        if(userRegistered.equals("User Registered Successfully."))   //On success, you can display a message to user on Home page
        {
            request.setAttribute("username", username);
            request.setAttribute("errMessage", "You Have Registered Successfully");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
        else   //On Failure, display a meaningful message to the User.
        {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }
    }
    
}
