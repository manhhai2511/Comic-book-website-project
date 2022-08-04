/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;
import Models.Account;
import Models.Truyen;
import Models.cmt;
import Models.img;
import Models.like;
import Models.type;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Admin
 */
public class ConnectDB {
    Connection con;
    public String status="";
    public Vector<Truyen> tr=new Vector<Truyen>();
    public Vector<img> im=new Vector<img>();
    public Vector<type> type=new Vector<type>();
    
    public ConnectDB() {
        try {
            con=new DBContext().getConnection();
            status="Kết nối thành công";
        } catch (Exception e) {
            status="kết nối thất bại"+e.getMessage();
        }
    }

    public Vector<Truyen> getTr() {
        return tr;
    }

    public void setTr(Vector<Truyen> tr) {
        this.tr = tr;
    }

    public Vector<img> getIm() {
        return im;
    }

    public void setIm(Vector<img> im) {
        this.im = im;
    }

    public Vector<type> getType() {
        return type;
    }

    public void setType(Vector<type> type) {
        this.type = type;
    }
    
    public Vector<Truyen> loadDB(){
        tr=new Vector<Truyen>();
        String sql="select *from Truyen_HE150368";
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ResultSet rs =ps.executeQuery();
            while(rs.next()){
                String MaTruyen=rs.getString(1);
                String TenTruyen=rs.getString(2);
                String MaTg=rs.getString(3);
                int NamXB=rs.getInt(4);
                String MaNXB=rs.getString(5);
                String TinhTrang=rs.getString(6);
                String TheLoai=rs.getString(7);
                String Mota=rs.getString(8);
                String img=rs.getString(9);
                Truyen s=new Truyen(MaTruyen, TenTruyen, MaTg, NamXB, MaNXB, TinhTrang, TheLoai, Mota,img);
                tr.add(s);
            }
        } catch (Exception e) {
            status="loi load DB "+e.getMessage();
        }
        return tr;
       }
    public void loadTL(){
        type=new Vector<type>();
        String sql="SELECT *from TheLoai_HE150368";
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ResultSet rs =ps.executeQuery();
            while(rs.next()){
                int matl=rs.getInt(1);
                String tl=rs.getString(2);
                type s=new type(matl, tl);
                type.add(s);
            }
        } catch (Exception e) {
            status="loi load DB "+e.getMessage();
        }
       }
    
    public void deleteTr(String id) {
        try {
            String sql="delete from Truyen_HE150368 where MaTruyen=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeQuery();
        } catch (Exception e) {
            status="co loi khi delete "+e.getMessage();
        }
    }
    public void deleteimg(String id) {
        try {
            String sql="delete from img_HE150368 where ma_truyen=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeQuery();
        } catch (Exception e) {
            status="co loi khi delete "+e.getMessage();
        }
    }
    public void deleteim(String id,String im) {
        try {
            String sql="delete from img_HE150368 where ma_truyen=? and img=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, im);
            ps.executeQuery();
        } catch (Exception e) {
            status="co loi khi delete "+e.getMessage();
        }
    }
    public void deletecmt(String id,String im) {
        try {
            String sql="delete from cmt_HE150368 where username=? and cmt=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, im);
            ps.executeQuery();
        } catch (Exception e) {
            status="co loi khi delete "+e.getMessage();
        }
    }
    public void deletecmt(String id) {
        try {
            String sql=
                    "delete from cmt_HE150368 where mtr=? "
                    ;
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeQuery();
        } catch (Exception e) {
            status="co loi khi delete "+e.getMessage();
        }
    }
    public void deletelike(String id) {
        try {
            String sql=
                    "delete from like_HE150368 where ma_tr=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeQuery();
        } catch (Exception e) {
            status="co loi khi delete "+e.getMessage();
        }
    }
    

    public void updateTr(String MaTruyen, String TenTruyen, String MaTG, int NamXB, String MaNXB, String TinhTrang, String TheLoai, String Mota, String img) {
        
        try {
            String sql="UPDATE Truyen_HE150368 "
                    + "SET [TenTruyen]=?\n" +
                "      ,[MaTacGia]=?\n" +
                "      ,[NamXB]=?\n" +
                "      ,[MaNXB]=?\n" +
                "      ,[TinhTrang]=?\n" +
                "      ,[MaTheLoai]=?\n" +
                "      ,[Mota]=?\n" +
                "      ,[img]=? where MaTruyen=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, TenTruyen);
            ps.setString(2, MaTG);
            ps.setInt(3, NamXB);
            ps.setString(4, MaNXB);
            ps.setString(5, TinhTrang);
            ps.setString(6, TheLoai);
            ps.setString(7, Mota);
            ps.setString(8, img);
            ps.setString(9, MaTruyen);

            ps.execute();
            
        } catch (Exception e) {
            status="co loi khi update: "+e.getMessage();
                    
        }
    }
    public void updateim(String uim,String MaTruyen,String img) {
        
        try {
            String sql="update img_HE150368 set img=? where img=? and ma_truyen=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, uim);
            ps.setString(2, MaTruyen);
            ps.setString(3, img);

            ps.execute();
            
        } catch (Exception e) {
            status="co loi khi update: "+e.getMessage();
                    
        }
    }
    
    public void updatein4(String name,String dbo,String qs,String tl,String us) {
        
        try {
            String sql="update [Account1_HE150368] set name=?,dbo=?,qs=?,ans=? where username=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, dbo);
            ps.setString(3, qs);
            ps.setString(4, tl);
            ps.setString(5, us);

            ps.execute();
            
        } catch (Exception e) {
            status="co loi khi update: "+e.getMessage();
                    
        }
    }
    public void updateacc(String name,String dbo) {
        
        try {
            String sql="  update [Account1_HE150368] set password=? where username=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, dbo);
            

            ps.execute();
            
        } catch (Exception e) {
            status="co loi khi update: "+e.getMessage();
                    
        }
    }
    public void updatepass(String pass,String u) {
        
        try {
            String sql="  update [Account1_HE150368] set password=? where username=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, pass);
            ps.setString(2, u);
            

            ps.execute();
            
        } catch (Exception e) {
            status="co loi khi update: "+e.getMessage();
                    
        }
    }
    
    public void insertTr(String MaTruyen, String TenTruyen, String MaTG, int NamXB, 
            String MaNXB, String TinhTrang, String TheLoai, String Mota, String img) {
        String sql="insert into Truyen_HE150368 values(?,?,?,?,?,?,?,?,?)";

        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, MaTruyen);
            ps.setString(2, TenTruyen);
            ps.setString(3, MaTG);
            ps.setInt(4, NamXB);
            ps.setString(5, MaNXB);
            ps.setString(6, TinhTrang);
            ps.setString(7, TheLoai);
            ps.setString(8, Mota);
            ps.setString(9, img);

            ps.execute();
        } catch (Exception e) {
            status="co loi khi insert DB "+e.getMessage();
        }
    }
    public void insertacc(int rolid, String us, String pass, String name, 
            String dbo, String qs, String ans) {
        String sql="insert into Account1_HE150368 values(?,?,?,?,?,?,?)";

        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(1, rolid);
            ps.setString(2, us);
            ps.setString(3, pass);
            ps.setString(4, name);
            ps.setString(5, dbo);
            ps.setString(6, qs);
            ps.setString(7, ans);


            ps.execute();
        } catch (Exception e) {
            status="co loi khi insert DB "+e.getMessage();
        }
    }
    
    public void insertimg(String MaTruyen,  String img) {
        String sql="insert into img_HE150368 values(?,?)";

        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, MaTruyen);
            ps.setString(2, img);
            ps.execute();
        } catch (Exception e) {
            status="co loi khi insert DB "+e.getMessage();
        }
    }
    
    public void insertlike(String us, String mtr) {
        String sql="insert into like_HE150368 values(?,?)";

        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, us);
            ps.setString(2, mtr);
            ps.executeUpdate();
        } catch (Exception e) {
            status="co loi khi insert DB "+e.getMessage();
        }
    }
    
    public Vector<Truyen> type(String mtl ){
        tr=new Vector<Truyen>();
        String sql="SELECT *from Truyen_HE150368 where MaTheLoai=?";
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, mtl);
            ResultSet rs =ps.executeQuery();
            while(rs.next()){
                String MaTruyen=rs.getString(1);
                String TenTruyen=rs.getString(2);
                String MaTg=rs.getString(3);
                int NamXB=rs.getInt(4);
                String MaNXB=rs.getString(5);
                String TinhTrang=rs.getString(6);
                String TheLoai=rs.getString(7);
                String Mota=rs.getString(8);
                String img=rs.getString(9);
                Truyen s=new Truyen(MaTruyen, TenTruyen, MaTg, NamXB, MaNXB, TinhTrang, TheLoai, Mota,img);
                tr.add(s);
            }
        } catch (Exception e) {
            status="loi load DB "+e.getMessage();
        }
        return tr;
       }
    
     public Vector<Truyen> searchbyname(String search ){
        tr=new Vector<Truyen>();
        String sql="SELECT *from Truyen_HE150368 where TenTruyen like ?";
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, "%"+search+"%");
            ResultSet rs =ps.executeQuery();
            while(rs.next()){
                String MaTruyen=rs.getString(1);
                String TenTruyen=rs.getString(2);
                String MaTg=rs.getString(3);
                int NamXB=rs.getInt(4);
                String MaNXB=rs.getString(5);
                String TinhTrang=rs.getString(6);
                String TheLoai=rs.getString(7);
                String Mota=rs.getString(8);
                String img=rs.getString(9);
                Truyen s=new Truyen(MaTruyen, TenTruyen, MaTg, NamXB, MaNXB, TinhTrang, TheLoai, Mota,img);
                tr.add(s);
            }
        } catch (Exception e) {
            status="loi load DB "+e.getMessage();
        }
        return tr;
       }
    
    public Truyen get(String id ){
        String sql="SELECT *from Truyen_HE150368 where MaTruyen=?";
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs =ps.executeQuery();
            while(rs.next()){
                String MaTruyen=rs.getString(1);
                String TenTruyen=rs.getString(2);
                String MaTg=rs.getString(3);
                int NamXB=rs.getInt(4);
                String MaNXB=rs.getString(5);
                String TinhTrang=rs.getString(6);
                String TheLoai=rs.getString(7);
                String Mota=rs.getString(8);
                String img=rs.getString(9);
                return new Truyen(MaTruyen, TenTruyen, MaTg, NamXB, MaNXB, TinhTrang, TheLoai, Mota,img);
            }
        } catch (Exception e) {
            status="loi load DB "+e.getMessage();
        }
        return null;
       }
    public Account getac(String id ){
        String sql="select *from Account1_HE150368 a where a.username=?";
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs =ps.executeQuery();
            while(rs.next()){
                int rol=rs.getInt(1);
                String us=rs.getString(2);
                String pass=rs.getString(3);
                String name=rs.getString(4);
                String dbo=rs.getString(5);
                String qs=rs.getString(6);
                String tl=rs.getString(7);
                
                return new Account(us,pass,rol,name,dbo,qs,tl);
            }
        } catch (Exception e) {
            status="loi load DB "+e.getMessage();
        }
        return null;
       }
    public List<Account> getac1(String i){
        String sql="select *from Account1_HE150368 where rolid=? ";
        List<Account> list = new ArrayList<>();
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, i);
            ResultSet rs =ps.executeQuery();
            while(rs.next()){
                int rol=rs.getInt(1);
                String us=rs.getString(2);
                String pass=rs.getString(3);
                String name=rs.getString(4);
                String dbo=rs.getString(5);
                String qs=rs.getString(6);
                String tl=rs.getString(7);
                
                list.add(new Account(us, pass, rol, name, dbo, qs, tl) );
            }
            return list;
        } catch (Exception e) {
            status="loi load DB "+e.getMessage();
        }
        return null;
       }
    public Account getacc(String p,String id ){
        String sql="select *from [Account1_HE150368] where password=? and username=?";
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, p);
            ps.setString(2, id);
            ResultSet rs =ps.executeQuery();
            while(rs.next()){
                int rol=rs.getInt(1);
                String us=rs.getString(2);
                String pass=rs.getString(3);
                String name=rs.getString(4);
                String dbo=rs.getString(5);
                String qs=rs.getString(6);
                String tl=rs.getString(7);
                
                return new Account(us,pass,rol,name,dbo,qs,tl);
            }
        } catch (Exception e) {
            status="loi load DB "+e.getMessage();
        }
        return null;
       }
    public Account getacc1(String qs,String ans,String id ){
        String sql="select *from Account1_HE150368 where qs=? and ans=? and username=?";
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, qs);
            ps.setString(2, ans);
            ps.setString(3, id);
            ResultSet rs =ps.executeQuery();
            while(rs.next()){
                int rol=rs.getInt(1);
                String us=rs.getString(2);
                String pass=rs.getString(3);
                String name=rs.getString(4);
                String dbo=rs.getString(5);
                String q=rs.getString(6);
                String tl=rs.getString(7);
                
                return new Account(us,pass,rol,name,dbo,q,tl);
            }
        } catch (Exception e) {
            status="loi load DB "+e.getMessage();
        }
        return null;
       }

    public Vector<img> loadtr(String mt){
        String sql="select * from img_HE150368 where ma_truyen = ? ";
        im=new Vector<>();
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, mt);
            ResultSet rs =ps.executeQuery();
            while(rs.next()){
               im.add(new img(mt, rs.getString(2)));
               
            }
        } catch (Exception e) {
            status="loi load DB "+e.getMessage();
        }
        return im;
    }
    
    public List<Truyen> getFavorite(String uid) {
        String query = "select a.*,ac.username from like_HE150368 f\n" +
"                 join Truyen_HE150368 a\n" +
"                on f.ma_tr = a.MaTruyen\n" +
"                 join Account1_HE150368 ac on f.[user] = ac.userName\n" +
"                 where f.[user] = ?";
        List<Truyen> list = new ArrayList<>();
        try {
            con = new DBContext().getConnection();
             PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, uid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Truyen(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    public Vector<Truyen> getflike(){
        tr=new Vector<Truyen>();
        String sql="select a.MaTruyen,a.TenTruyen,a.MaTacGia,a.NamXB,a.MaNXB,a.TinhTrang,a.MaTheLoai,a.img,COUNT(a.MaTruyen) from like_HE150368 f\n" +
"                 join Truyen_HE150368 a\n" +
"               on f.ma_tr = a.MaTruyen\n" +
"			   group by a.MaTruyen,a.TenTruyen,a.MaTacGia,a.NamXB,a.MaNXB,a.TinhTrang,a.MaTheLoai,a.img\n" +
"			   order by COUNT(a.MaTruyen) desc";
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ResultSet rs =ps.executeQuery();
            while(rs.next()){
                String MaTruyen=rs.getString(1);
                String TenTruyen=rs.getString(2);
                String MaTg=rs.getString(3);
                int NamXB=rs.getInt(4);
                String MaNXB=rs.getString(5);
                String TinhTrang=rs.getString(6);
                String TheLoai=rs.getString(7);
                String img=rs.getString(8);
                Truyen s=new Truyen(MaTruyen, TenTruyen, MaTg, NamXB, MaNXB, TinhTrang, TheLoai, img);
                tr.add(s);
            }
        } catch (Exception e) {
            status="loi load DB "+e.getMessage();
        }
        return tr;
       }
    
    public List<cmt> getcmt(String uid) {
        String query = "select *from cmt_HE150368 where mtr=?";
        List<cmt> list = new ArrayList<>();
        try {
            con = new DBContext().getConnection();
             PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, uid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new cmt(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    public List<like> getl(String uid) {
        String query = "select *from like_HE150368 where [user]=?";
        List<like> list = new ArrayList<>();
        try {
            con = new DBContext().getConnection();
             PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, uid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new like(rs.getString(1),
                        rs.getString(2)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    public void insertcmt(String us,String cmt, String mtr) {
        String sql="insert into cmt_HE150368 values(?,?,?)";

        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, us);
            ps.setString(2, cmt);
            ps.setString(3, mtr);
            ps.executeUpdate();
        } catch (Exception e) {
            status="co loi khi insert DB "+e.getMessage();
        }
    }
    

    
    
    public static void main(String[] args) {
        ConnectDB con=new ConnectDB();

//        System.out.println(con.getac("qrer"));
//        con.getacc("123","prer");
//        System.out.println(con.getacc("123","qrer"));
//        con.insertimg("A1", "137.jpg");
//        con.deleteimg("A1");
////        con.deletecmt("HE1233");
////        con.deletelike("HE1233");
////        con.deleteTr("HE1233");
        
//        
    }
    
    
}
