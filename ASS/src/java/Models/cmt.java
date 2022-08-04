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
public class cmt {
    private String user;
    private String cmt;
    private String mtr;

    public cmt(String user, String cmt, String mtr) {
        this.user = user;
        this.cmt = cmt;
        this.mtr = mtr;
    }

    public cmt() {
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getCmt() {
        return cmt;
    }

    public void setCmt(String cmt) {
        this.cmt = cmt;
    }

    public String getMtr() {
        return mtr;
    }

    public void setMtr(String mtr) {
        this.mtr = mtr;
    }

    @Override
    public String toString() {
        return "cmt{" + "user=" + user + ", cmt=" + cmt + ", mtr=" + mtr + '}';
    }
    
    
    
}
