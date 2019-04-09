/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vinhdk.beans.PrizeBean;
import vinhdk.dtos.PrizeDTO;

/**
 *
 * @author vinhd
 */
public class CreatePrizeController extends HttpServlet {

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
        try {
            String id = request.getParameter("val_id");
            String name = request.getParameter("val_name");
            int rank = Integer.parseInt(request.getParameter("val_rank"));
            int quantity = Integer.parseInt(request.getParameter("val_quantity"));
            String address = request.getParameter("val_address");
            String des = request.getParameter("val_description");
            PrizeDTO dto = new PrizeDTO(name, id, des, address, rank, quantity);
            PrizeBean bean = new PrizeBean();
            boolean check = bean.insert(dto);
            if (check) {
                request.setAttribute("VALID", "Insert Success");
            } else {
                request.setAttribute("VALID", "Insert Fail");
            }
        } catch (Exception e) {
            if (e.getMessage().contains("duplicate")) {
                request.setAttribute("VALID", "Id is existed");
            } else {
                log("Error at CreatePrizeControllerController " + e.getMessage());
                request.setAttribute("VALID", e.getMessage());
            }
        } finally {
            request.getRequestDispatcher("prizecreate.jsp").forward(request, response);
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
