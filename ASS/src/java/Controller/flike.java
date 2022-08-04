/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Connection.ConnectDB;
import Models.Account;
import Models.Truyen;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class flike extends HttpServlet {

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
        ConnectDB con=new ConnectDB();
        List<Truyen> tr = new ArrayList<Truyen>();
        tr=con.getflike();
        request.setAttribute("listF", tr);
        List<Truyen> t = new ArrayList<Truyen>();
        t=con.getflike();
        int page=1;
        if(request.getParameter("page")==null) page=1;
        else{
            try {
                page=Integer.parseInt(request.getParameter("page"));
                if(page<=0) page=1;
            } catch (Exception e) {
                page=1;
            }
        }
        int numberRecordInPage=3;
        if(request.getParameter("nrip")==null)//nrip=numberRecordInPage
            numberRecordInPage=3;
        else{
            try {
                numberRecordInPage=Integer.parseInt(request.getParameter("nrip"));
                if(numberRecordInPage<1) numberRecordInPage=0;
                if(numberRecordInPage>20) numberRecordInPage=20;

            } catch (Exception e) {
                numberRecordInPage=3;
            }
        }
        int totalPage = con.tr.size()/numberRecordInPage+
                (con.tr.size()%numberRecordInPage==0?0:1);
        if(page>totalPage) page=1;
        int pageStart =page*numberRecordInPage-numberRecordInPage;
        int pageEnd =page*numberRecordInPage-1;
        if(pageEnd > con.tr.size()-1)
            pageEnd=con.tr.size()-1;
        request.setAttribute("pageStart", pageStart);
        request.setAttribute("pageEnd", pageEnd);
        request.setAttribute("nrip", numberRecordInPage);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("p", page);
        int btnStart = page-2;
        if(btnStart<=0) btnStart=1;
        int btnEnd = page+2;
        if(btnEnd>totalPage) btnEnd=totalPage;
        boolean next=true;
        boolean pre=true;
        if(page==1) pre=false;
        if(page==totalPage) next=false;
        request.setAttribute("btnStart", btnStart);
        request.setAttribute("btnEnd", btnEnd);
        request.setAttribute("next", next);
        request.setAttribute("pre", pre);
//        request.setAttribute("connection", con);

//        request.setAttribute("connection", con);
        request.getRequestDispatcher("html/favoritelike.jsp").forward(request, response);
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
