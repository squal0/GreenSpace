/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import beans.SubscribeBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import utilities.DBConnection;

/**
 *
 * @author skull0
 */
public class SubscribeDao {
    public String subscribe(SubscribeBean subBean){
        
        String email = subBean.getEmail();
        Connection con = null;
        PreparedStatement preparedStatement = null;
        try
        {
        con = DBConnection.createConnection();
        String query = "insert into subscribers(email) values (?)"; //Insert subscriber details into table subscribers'
        preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
        preparedStatement.setString(1, email);
        
        int i= preparedStatement.executeUpdate();
        if (i!=0)  //ensure data has been inserted into the database
            
            return "Subscribed Successfully."; 
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
            return "Subscribing Failed..!";  // On failure, send a message from here.
    }
}
