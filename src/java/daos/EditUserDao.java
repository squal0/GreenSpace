/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import beans.RegisterBean;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utilities.DBConnection;

/**
 *
 * @author Home
 */
public class EditUserDao {
    public static int updateUser(RegisterBean user){
        
        int status = 0;
        
        Connection con = null;
        PreparedStatement preparedStatement = null;

        try
       {
        con = DBConnection.createConnection();
        String query = "update users set name=?, rollno=?, dateOfJoin=?, classSpec=?, specification=? password=? where username=?";
        preparedStatement = con.prepareStatement(query);
        
        preparedStatement.setString(1, user.getName());
        preparedStatement.setString(2, user.getUsername());
        preparedStatement.setString(3, user.getRollno());
        preparedStatement.setString(4, user.getDate());
        preparedStatement.setString(5, user.getClass_spec());
        preparedStatement.setString(6, user.getSpecification());
        preparedStatement.setString(7, user.getPassword());
        

        status = preparedStatement.executeUpdate();
        con.close();
        
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return status;
    }
    
    public static RegisterBean getRecordString(String username){  
    RegisterBean user=null;  
    try{  
        Connection con= DBConnection.createConnection();  
        PreparedStatement ps=con.prepareStatement("select * from users where id=?");  
        ps.setString(2,username);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            user=new RegisterBean();  
  
            user.setName(rs.getString("name"));
            user.setUsername(rs.getString("username"));
            user.setRollno(rs.getString("Rollno"));
            user.setDate(rs.getString("dateOfJoin"));
            user.setClass_spec(rs.getString("classSpec"));
            user.setSpecification(rs.getString("specification"));
            user.setPassword(rs.getString("password"));  
             
        }  
    }catch(SQLException e){System.out.println(e);}  
        return user;  
}  
    
}
