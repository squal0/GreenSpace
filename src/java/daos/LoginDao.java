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
    try
    {
        con = DBConnection.createConnection(); //establishing connection
        statement = con.createStatement(); //Statement is used to write queries. Read more about it.
        resultSet = statement.executeQuery("select username,passwordHash from users"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
        while(resultSet.next()) // Until next row is present otherwise it return false
        {
            userNameDB = resultSet.getString("username"); //fetch the values present in database
            passwordDB = resultSet.getString("passwordHash");
            if(username.equals(userNameDB) && password.equals(passwordDB))
            {
                return "User Logged In Successfully"; ////If the user entered values are already present in database, which means user has already registered so I will return SUCCESS message.
            }
        }
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
        return "Invalid user credentials"; // Just returning appropriate message otherwise
    }
}
    

