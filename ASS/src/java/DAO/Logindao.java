/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Connection.DBContext;
import Models.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class Logindao {
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs =null;
    
    public Account checkLogin(Account a){
        try {
            String query="select * from Account1_HE150368 where username = ? and password = ?";
            con=new DBContext().getConnection();
            ps=con.prepareStatement(query);
            ps.setString(1, a.getUsername());
            ps.setString(2, a.getPassword());
            rs=ps.executeQuery();
            while(rs.next()){
                Account b=new Account(rs.getString(2), rs.getString(3), rs.getInt(1));
                return b;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public void checkdk(Account a){
        try {
            String query="insert into Account_HE150368 values(?,?,?)";
            con=new DBContext().getConnection();
            ps=con.prepareStatement(query);
            ps.setInt(1, a.getRoleid());
            ps.setString(2, a.getUsername());
            ps.setString(3, a.getPassword());
            rs=ps.executeQuery();
        } catch (Exception e) {
            
        }
    }
    public static void main(String[] args) {
        Logindao ldao= new Logindao();
        String a="qrer";
        String p="123";
        Account b=new Account(a, p);
        System.out.println(ldao.checkLogin(b));
//        System.out.println(ldao.checkLogin("abc", "123"));
    }
}
