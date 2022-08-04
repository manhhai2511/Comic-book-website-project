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
public class img {
    private String matr;
    private String img;

    public img() {
    }

    public img(String matr, String img) {
        this.matr = matr;
        this.img = img;
    }

   

    public String getMatr() {
        return matr;
    }

    public void setMatr(String matr) {
        this.matr = matr;
    }

   

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "img{" + "matr=" + matr + ", img=" + img + '}';
    }

    
    
    
}
