/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.SubscribeBean;
import daos.SubscribeDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author skull0
 */
public class SubscribeServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    
    public SubscribeServlet(){}
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // input parameters into local variables
        String email = request.getParameter("email");
        
        SubscribeBean subBean = new SubscribeBean();
        
        //using the admin java bean
        subBean.setEmail(email);
        
        SubscribeDao subDao = new SubscribeDao();
        //Logic of the Registration application is present here. We are going to insert user data in to the database.
        String subscriber = subDao.subscribe(subBean);
        if(subscriber.equals("Subscribed Successfully."))   //On success, you can display a message to user on Home page
        {
            request.setAttribute("errMessage", "Subscribed Successfully.");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
        else   //On Failure, display a meaningful message to the User.
        {
            request.setAttribute("errMessage", subscriber);
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }
}
