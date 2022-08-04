/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Connection.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class LikeDAO {
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs =null;
    
    public boolean checkLike (String user, String maTr){
        try {
            String sql = "Select * from like_HE150368 where [USER] = ? and ma_tr = ? ";
            con=new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, maTr);
            rs = ps.executeQuery();
            while(rs.next()){
                
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }
    
    public void dislike(String user, String maTr) {
        try {
            String sql= "delete from like_HE150368 where [USER] = ? and ma_tr = ?";
            con=new DBContext().getConnection();
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, maTr);
            ps.executeQuery();
        } catch (Exception e) {
            
        }
    }
    
    public static void main(String[] args) {
        LikeDAO ldao = new LikeDAO();
        ldao.dislike("abce", "A100");
        System.out.println(ldao.checkLike("abcd", "A100"));
    }
}
