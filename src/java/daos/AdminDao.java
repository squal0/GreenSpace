/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import beans.AdminBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import utilities.DBConnection;

/**
 *
 * @author Home
 */
public class AdminDao {
    
    public String registerAdmin(AdminBean adminBean){
        
        String username = adminBean.getUsername();
        String password = adminBean.getPassword();
        String role = adminBean.getRole();
        Connection con = null;
        PreparedStatement preparedStatement = null;
        try
        {
        con = DBConnection.createConnection();
        String query = "insert into users(username,role, passwordHash) values (?,?,?)"; //Insert user details into the table 'users'
        preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
        preparedStatement.setString(1, username);
        preparedStatement.setString(2, role);
        preparedStatement.setString(3, password);
        int i= preparedStatement.executeUpdate();
        if (i!=0)  //ensure data has been inserted into the database
            
            return "Admin Registered Successfully."; 
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
            return "Admin Registration Failed..!";  // On failure, send a message from here.
    }
    
}
