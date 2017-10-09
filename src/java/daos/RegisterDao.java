/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import beans.RegisterBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import utilities.DBConnection;

/**
 *
 * @author Home
 */
public class RegisterDao {
    public String registerUser(RegisterBean registerBean){
        
        String name = registerBean.getName();
        String username = registerBean.getUsername();
        String rollno = registerBean.getRollno();
        String date = registerBean.getDate();
        String classSpec = registerBean.getClass_spec();
        String specification = registerBean.getSpecification();
        String password = registerBean.getPassword();
        Connection con = null;
        PreparedStatement preparedStatement = null;
        try
        {
        con = DBConnection.createConnection();
        String query = "insert into users(name, username, rollno, dateOfJoin, classSpec, specification ,passwordHash) values (?,?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
        preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
        preparedStatement.setString(1, name);
        preparedStatement.setString(2, username);
        preparedStatement.setString(3, rollno);
        preparedStatement.setString(4, date);
        preparedStatement.setString(5, classSpec);
        preparedStatement.setString(6, specification);
        preparedStatement.setString(7, password);
        int i= preparedStatement.executeUpdate();
        if (i!=0)  //ensure data has been inserted into the database
            
            return "User Registered Successfully."; 
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
            return "User Registration Failed..!";  // On failure, send a message from here.
    }
}
