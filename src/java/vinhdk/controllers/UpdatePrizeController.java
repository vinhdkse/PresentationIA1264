/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.controllers;

import java.io.IOException;
import java.io.PrintWriter;
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
public class UpdatePrizeController extends HttpServlet {

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
        PrizeBean bean = new PrizeBean();
        try {
            String id = request.getParameter("val_id");
            String name = request.getParameter("val_name");
            int rank = Integer.parseInt(request.getParameter("val_rank"));
            int quantity = Integer.parseInt(request.getParameter("val_quantity"));
            String address = request.getParameter("val_address");
            String des = request.getParameter("val_description");
            PrizeDTO dto = new PrizeDTO(name, id, des, address, rank, quantity);
            boolean check = bean.update(dto);
            if (check) {
                request.setAttribute("VALID", "Update Success");
            } else {
                request.setAttribute("VALID", "Update Fail");
            }
        } catch (Exception e) {
            log("Error at UpdatePrizeController " + e.getMessage());
            request.setAttribute("VALID", e.getMessage());
            
        } finally {
            try {
                bean.setPrizeName("");
                request.setAttribute("list", bean.search());
            } catch (Exception e) {
                log("Error at UpdatePrizeController " + e.getMessage());
                request.setAttribute("VALID", e.getMessage());
            }
            request.getRequestDispatcher("prizeview.jsp").forward(request, response);
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
