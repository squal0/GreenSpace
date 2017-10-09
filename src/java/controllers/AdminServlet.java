/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.AdminBean;
import daos.AdminDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Home
 */

public class AdminServlet extends HttpServlet{
    
    private static final long serialVersionUID = 1L;
    
    public AdminServlet(){}
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // input parameters into local variables
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        AdminBean adminBean = new AdminBean();
        
        //using the admin java bean
        adminBean.setUsername(username);
        adminBean.setPassword(password);
        
        AdminDao adminDao = new AdminDao();
        //Logic of the Registration application is present here. We are going to insert user data in to the database.
        String userRegistered = adminDao.registerAdmin(adminBean);
        if(userRegistered.equals("Admin Registered Successfully."))   //On success, you can display a message to user on Home page
        {
            request.setAttribute("errMessage", "Admin Registered Successfully");
            request.getRequestDispatcher("/admin-section.jsp").forward(request, response);
        }
        else   //On Failure, display a meaningful message to the User.
        {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/admin.jsp").forward(request, response);
        }
    }
}
    
