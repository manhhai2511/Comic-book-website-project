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
public class Account {
    private String username;
    private String password;
    private int roleid;
    private String name;
    private String dbo;
    private String qs;
    private String ans;

    public Account(String username, String password, int roleid, String name, String dbo, String qs, String ans) {
        this.username = username;
        this.password = password;
        this.roleid = roleid;
        this.name = name;
        this.dbo = dbo;
        this.qs = qs;
        this.ans = ans;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDbo() {
        return dbo;
    }

    public void setDbo(String dbo) {
        this.dbo = dbo;
    }

    public String getQs() {
        return qs;
    }

    public void setQs(String qs) {
        this.qs = qs;
    }

    public String getAns() {
        return ans;
    }

    public void setAns(String ans) {
        this.ans = ans;
    }
    

      public Account() {
    }

    public Account(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Account(String username, String password, int roleid) {
        this.username = username;
        this.password = password;
        this.roleid = roleid;
    }

    

    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
    }



    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Account{" + "username=" + username + ", password=" + password + ", roleid=" + roleid + ", name=" + name + ", dbo=" + dbo + ", qs=" + qs + ", ans=" + ans + '}';
    }

    
    
}
