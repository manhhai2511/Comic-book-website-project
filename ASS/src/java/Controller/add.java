/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Connection.ConnectDB;
import Models.Truyen;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class add extends HttpServlet {
ConnectDB con;

    @Override
    public void init() throws ServletException {
        con=new ConnectDB();
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String temp=request.getParameter("MTG");
        int nxb=Integer.parseInt(request.getParameter("NXB"));
        String mnxb=request.getParameter("MNXB");
        String tinhtrang=request.getParameter("TT");
        String theloai=request.getParameter("Type");
        String mota=request.getParameter("Mta");
        String img=request.getParameter("img");
        String detail=request.getParameter("myfile");
        String[] a=detail.split("&");
        
        Truyen tr = new Truyen(id, name, temp, nxb, mnxb, tinhtrang, theloai, mota,img);
        System.out.println(tr);
        con.insertTr(id, name, temp, nxb, mnxb, tinhtrang, theloai, mota,img);
                for (String s : a) {
                    con.insertimg(id,s);

                }
        response.sendRedirect("View");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
