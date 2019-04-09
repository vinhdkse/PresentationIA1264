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
import vinhdk.beans.TeamBean;
import vinhdk.beans.UserEventBean;
import vinhdk.dtos.TeamDTO;
import vinhdk.dtos.UserEventDTO;

/**
 *
 * @author vinhd
 */
public class UserEventController extends HttpServlet {

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
        String url = "EditUserController";
        TeamBean bean = new TeamBean();
        TeamDTO dto = new TeamDTO();
        try {
            String eventid = request.getParameter("eventID");
            String username = (String) request.getSession().getAttribute("USERNAME");
            System.out.println(username);
            boolean team = false;
            boolean leader = false;
            if (request.getParameter("checkteam") != null) {
                team = true;
                if (request.getParameter("checklead") != null) {
                    leader = true;
                }
                String teamname = request.getParameter("val_name");
                int size = Integer.parseInt(request.getParameter("val_size"));
                dto = new TeamDTO(username, teamname, size, eventid);
                bean.insert(dto);
            }
            UserEventBean beanU = new UserEventBean();
            UserEventDTO dtoU = new UserEventDTO(eventid, username, team, leader);
            beanU.insert(dtoU);

        } catch (Exception e) {
            url = "userjoin.jsp";
            if (e.getMessage().contains("PK_tblUserEvent") && e.getMessage().contains("duplicate")) {
                EventBean beanE = new EventBean();
                beanE.setEventID(request.getParameter("eventID"));
                try {
                    request.setAttribute("INFO", beanE.get());
                } catch (Exception ex) {
                    log("Error at UserEventController " + ex.getMessage());

                }
                request.setAttribute("VALID", "You already join this event");
            } else {
                if (request.getParameter("checkteam") != null) {
                    try {
                        bean.insert(dto);
                    } catch (Exception ex) {
                        if (ex.getMessage().contains("tblTeam") && ex.getMessage().contains("duplicate")) {
                            request.setAttribute("VALID", "Choose another team name");
                            EventBean beanE = new EventBean();
                            beanE.setEventID(request.getParameter("eventID"));
                            try {
                                request.setAttribute("INFO", beanE.get());
                            } catch (Exception exx) {
                                log("Error at UserEventController " + exx.getMessage());

                            }
                        } else {
                            log("Error at UserEventController " + ex.getMessage());

                        }
                    }
                }
            }
            if (e.getMessage().contains("tblTeam") && e.getMessage().contains("duplicate")) {
                request.setAttribute("VALID", "Choose another team name");
                EventBean beanE = new EventBean();
                beanE.setEventID(request.getParameter("eventID"));
                try {
                    request.setAttribute("INFO", beanE.get());
                } catch (Exception exx) {
                    log("Error at UserEventController " + exx.getMessage());

                }
            } else {
                log("Error at UserEventController " + e.getMessage());

            }
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
