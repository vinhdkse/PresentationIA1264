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
import vinhdk.beans.EventBean;
import vinhdk.beans.PrizeBean;
import vinhdk.beans.UserEventBean;

/**
 *
 * @author vinhd
 */
public class DeleteUserEventController extends HttpServlet {

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
            String eventid = request.getParameter("eventID");
            String username = request.getParameter("username");
            UserEventBean bean = new UserEventBean();
            bean.setId(eventid);
            bean.setUsername(username);
            if (bean.delete()) {
                EventBean beanE = new EventBean();
                beanE.setEventID(eventid);
                request.setAttribute("INFO", beanE.get());
                PrizeBean beanP = new PrizeBean();
                beanP.setEventId(eventid);
                request.setAttribute("listP", beanP.getName());
                request.setAttribute("listUser", bean.get());
                request.setAttribute("HAVEJOIN", request.getParameter("join"));
            }

        } catch (Exception e) {
            log("Error at DeletePrizeEventController " + e.getMessage());
        } finally {
            request.getRequestDispatcher("userintoevent.jsp").forward(request, response);
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
