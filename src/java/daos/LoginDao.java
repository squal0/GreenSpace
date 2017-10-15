/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import beans.LoginBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import utilities.DBConnection;

/**
 *
 * @author Home
 */
public class LoginDao {
    
    public String authenticateUser(LoginBean loginBean)
    {
        String username = loginBean.getUserName(); //Keeping user entered values in temporary variables.
        String password = loginBean.getPassword();
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String userNameDB = "";
        String passwordDB = "";
        String roleDB = "";
    try
        {
        con = DBConnection.createConnection();
        statement = con.createStatement();
        resultSet = statement.executeQuery("select username,passwordHash,role from users");
        while(resultSet.next())
        {
            userNameDB = resultSet.getString("username");
            passwordDB = resultSet.getString("passwordHash");
            roleDB = resultSet.getString("role");
        if(username.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Admin"))
            return "Admin_Role";
        else if(username.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Student"))
            return "User_Role";
        else if(username.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Faculty"))
            return "User_Role";
        else if(username.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Staff"))
            return "User_Role";
        }
        }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
        return "Invalid user credentials"; // Just returning appropriate message otherwise
    }
}
    

