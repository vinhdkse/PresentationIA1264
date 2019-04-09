/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.conn;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author vinhd
 */
public class MyConnection implements Serializable{
    public static Connection getMyConnection()throws ClassNotFoundException,SQLException,Exception{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection conn = DriverManager.getConnection("jdbc:sqlserver://bookmanagement.database.windows.net:1433;databaseName=ProjectDB","vinhdkse62975@bookmanagement","ZAQ!2wsx");
        return conn;
    }
}
