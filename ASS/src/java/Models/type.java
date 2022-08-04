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
public class type {
    private int mtl;
    private String tl;

    public type() {
    }

    public type(int mtl, String tl) {
        this.mtl = mtl;
        this.tl = tl;
    }

    public int getMtl() {
        return mtl;
    }

    public void setMtl(int mtl) {
        this.mtl = mtl;
    }

    public String getTl() {
        return tl;
    }

    public void setTl(String tl) {
        this.tl = tl;
    }

    @Override
    public String toString() {
        return "type{" + "mtl=" + mtl + ", tl=" + tl + '}';
    }
    
    
}
