/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Connection.ConnectDB;
import Models.Truyen;
import Models.img;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class insert extends HttpServlet {

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
        HttpSession session = request.getSession();
        ConnectDB con=new ConnectDB();
        String id=(String) session.getAttribute("idd");
        int type=Integer.parseInt(request.getParameter("type"));
        String detail=request.getParameter("myfile1");
        System.out.println(detail);
        System.out.println(id);
        System.out.println(type);
//        String[] a=detail.split("&");
//        System.out.println(id);
//        for (String s : a) {
//                   System.out.println(s);
//
//                }
//        if(type==0){
//            for (String s : a) {
//                    con.insertimg(id,s);
//
//                }
//        }
//        if(type==1){
//            con.deleteimg(id);
//            for (String s : a) {
//                    con.insertimg(id,s);
//
//                }
//        }
        
        Truyen t=con.get(id);
        Vector<img> m=new Vector<>();
        m=con.loadtr(id);
        request.setAttribute("detail", t);
        request.setAttribute("load", m);
       
        request.getRequestDispatcher("html/uptr.jsp").forward(request, response);
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
