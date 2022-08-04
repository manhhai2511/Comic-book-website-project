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
public class like {
    private String us;
    private  String mt;

    public like() {
    }

    public like(String us, String mt) {
        this.us = us;
        this.mt = mt;
    }

    public String getUs() {
        return us;
    }

    public void setUs(String us) {
        this.us = us;
    }

    public String getMt() {
        return mt;
    }

    public void setMt(String mt) {
        this.mt = mt;
    }

    @Override
    public String toString() {
        return "like{" + "us=" + us + ", mt=" + mt + '}';
    }
    
}
