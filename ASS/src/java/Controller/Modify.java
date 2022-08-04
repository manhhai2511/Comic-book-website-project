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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class Modify extends HttpServlet {
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Modify</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Modify at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String type=request.getParameter("type");
        String id=request.getParameter("id");
        con.loadDB();
        if(type!=null & type.equals("1")){
            //update
            if(id!=null) 
//                request.setAttribute("idUpdate", id);
            for (Truyen st : con.tr) {
                if(st.getMaTruyen().equals(id)){
                    request.setAttribute("updateTr",st);
                    request.getRequestDispatcher("View").forward(request, response);
                }
            }
        }
        if(type!=null & type.equals("0")){
            //delete
            con.deleteimg(id);
            con.deletecmt(id);
            con.deletelike(id);
            con.deleteTr(id);
        }
        response.sendRedirect("View");
//        processRequest(request, response);
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
        
        //neu id da ton tai update
        //id chua ton tai thi insert
        Truyen tr = new Truyen(id, name, temp, nxb, mnxb, tinhtrang, theloai, mota,img);
        boolean kt=false;
        for (int i = 0; i < con.tr.size(); i++) {
            if(con.tr.get(i).getMaTruyen().equals(id)){
                kt=true;
                break;
            }
        }
        if(kt){
            con.updateTr(id, name, temp, nxb, mnxb, tinhtrang, theloai, mota,img);
            
        }else
            con.insertTr(id, name, temp, nxb, mnxb, tinhtrang, theloai, mota,img);
        doGet(request, response);
//        processRequest(request, response);
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
