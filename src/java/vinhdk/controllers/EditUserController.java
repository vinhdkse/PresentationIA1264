/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import vinhdk.beans.EventBean;
import vinhdk.beans.PrizeBean;
import vinhdk.beans.TeamBean;
import vinhdk.beans.UserBean;
import vinhdk.beans.UserEventBean;
import vinhdk.dtos.EventDTO;

/**
 *
 * @author vinhd
 */
public class EditUserController extends HttpServlet {

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
            HttpSession session = request.getSession();
            UserBean bean = new UserBean();
            bean.setUsername((String) session.getAttribute("USERNAME"));
            request.setAttribute("INFO", bean.searchInfo());
            TeamBean beanT = new TeamBean();
            beanT.setUsername((String) session.getAttribute("USERNAME"));
            UserEventBean beanU = new UserEventBean();
            beanU.setUsername((String) session.getAttribute("USERNAME"));
            List<EventDTO> listE = new ArrayList<>();
            EventBean beanE = new EventBean();
            for (int i = 0; i < beanU.getE().size(); i++) {
                beanE.setEventID(beanU.getE().get(i).getEventid());
                listE.add(beanE.get());
            }
            request.setAttribute("INFOE", listE);
            request.setAttribute("listTeam", beanT.get());
            PrizeBean beanP = new PrizeBean();
            request.setAttribute("listPrize", beanP.getPrize((String) session.getAttribute("USERNAME")));
        } catch (Exception e) {
            log("Error at EditUserController " + e.getMessage());
        } finally {
            request.getRequestDispatcher("updateuser.jsp").forward(request, response);
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
