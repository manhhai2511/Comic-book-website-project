/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;
import java.sql.*;

/**
 *
 * @author Admin
 */
public class DBContext {
    public Connection getConnection() throws Exception{
        String url="jdbc:sqlserver://"+serverName+":"+portName+
                ";databaseName = "+dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url,User,password);
    }
    private final String serverName="localhost";
    private final String portName="1433";
    private final String dbName="PRJ301_FA21";
    private final String User="sa";
    private final String password="123456";
//    public static void main(String[] args) {
//        DBContext db = new DBContext();
//        try {
//            db.getConnection();
//            System.out.println("KN TC");
//        } catch (Exception e) {
//            System.out.println("KN TB "+e.getMessage());
//        }
//    }
    
    
}
