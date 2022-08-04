/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Admin
 */
public class Truyen {
    private String MaTruyen;
    private String TenTruyen;
    private String MaTG;
    private int NamXB;
    private String MaNXB;
    private String TinhTrang;
    private String TheLoai;
    private String Mota;
    private String img;

    public Truyen() {
    }

    public Truyen(String MaTruyen, String TenTruyen, String MaTG, int NamXB, String MaNXB, String TinhTrang, String TheLoai, String Mota, String img) {
        this.MaTruyen = MaTruyen;
        this.TenTruyen = TenTruyen;
        this.MaTG = MaTG;
        this.NamXB = NamXB;
        this.MaNXB = MaNXB;
        this.TinhTrang = TinhTrang;
        this.TheLoai = TheLoai;
        this.Mota = Mota;
        this.img = img;
    }

    public Truyen(String MaTruyen, String TenTruyen, String MaTG, int NamXB, String MaNXB, String TinhTrang, String TheLoai, String img) {
        this.MaTruyen = MaTruyen;
        this.TenTruyen = TenTruyen;
        this.MaTG = MaTG;
        this.NamXB = NamXB;
        this.MaNXB = MaNXB;
        this.TinhTrang = TinhTrang;
        this.TheLoai = TheLoai;
        this.img = img;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    

    public String getMaTruyen() {
        return MaTruyen;
    }

    public void setMaTruyen(String MaTruyen) {
        this.MaTruyen = MaTruyen;
    }

    public String getTenTruyen() {
        return TenTruyen;
    }

    public void setTenTruyen(String TenTruyen) {
        this.TenTruyen = TenTruyen;
    }

    public String getMaTG() {
        return MaTG;
    }

    public void setMaTG(String MaTG) {
        this.MaTG = MaTG;
    }

    public int getNamXB() {
        return NamXB;
    }

    public void setNamXB(int NamXB) {
        this.NamXB = NamXB;
    }

    public String getMaNXB() {
        return MaNXB;
    }

    public void setMaNXB(String MaNXB) {
        this.MaNXB = MaNXB;
    }

    public String getTinhTrang() {
        return TinhTrang;
    }

    public void setTinhTrang(String TinhTrang) {
        this.TinhTrang = TinhTrang;
    }

    public String getTheLoai() {
        return TheLoai;
    }

    public void setTheLoai(String TheLoai) {
        this.TheLoai = TheLoai;
    }

    public String getMota() {
        return Mota;
    }

    public void setMota(String Mota) {
        this.Mota = Mota;
    }
    
    public String toRow(){
        String s="<tr>";
        s+="<td>"+MaTruyen+"</td>";
        s+="<td>"+TenTruyen+"</td>";
        s+="<td>"+MaTG+"</td>";
        s+="<td>"+MaNXB+"</td>";
        s+="<td>"+NamXB+"</td>";
        s+="<td>"+TheLoai+"</td>";
        s+="<td>"+TinhTrang+"</td>";
        s+="<td>"+Mota+"</td>";
        s+="<td><a href='Modify?type=0&id="+MaTruyen+"'>Delete<a></td>";
        s+="<td><a href='Modify?type=1&id="+MaTruyen+"'>Update<a></td>";
        s+="</tr>";
        return s;
    }

    @Override
    public String toString() {
        return "Truyen{" + "MaTruyen=" + MaTruyen + ", TenTruyen=" + TenTruyen + ", MaTG=" + MaTG + ", NamXB=" + NamXB + ", MaNXB=" + MaNXB + ", TinhTrang=" + TinhTrang + ", TheLoai=" + TheLoai + ", Mota=" + Mota + ", img=" + img + '}';
    }
    
}
