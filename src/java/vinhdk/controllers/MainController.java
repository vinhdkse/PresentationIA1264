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
import static vinhdk.controllers.AllClass.*;

/**
 *
 * @author vinhd
 */
public class MainController extends HttpServlet {

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
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String url = ERROR;
        try {
            String button = request.getParameter("btnAction");
            if (button == null) {
                response.sendRedirect("login.jsp");
            } else if (button.equals("Login")) {
                url = LOGIN;
            } else if (button.equals("Register")) {
                url = REGISTER;
            } else if (button.equals("Edit")) {
                url = EDIT;
            } else if (button.equals("Update Event")) {
                url = UPDATE;
            } else if (button.equals("Delete")) {
                url = DELETE;
            } else if (button.equals("Search")) {
                url = SEARCH;
            } else if (button.equals("Submit")) {
                url = "UpdateUserController";
            } else if (button.equals("EditUser")) {
                url = "EditUserController";
            } else if (button.equals("Create Event")) {
                url = CREATE;
            } else if (button.equals("DeletePrize")) {
                url = "DeletePrizeController";
            } else if (button.equals("DeleteUser")) {
                url = "DeleteUserController";
            } else if (button.equals("LogOut")) {
                url = "LogOutController";
            } else if (button.equals("Create Prize")) {
                url = "CreatePrizeController";
            } else if (button.equals("EditPrize")) {
                url = "EditPrizeController";
            } else if (button.equals("Update Prize")) {
                url = "UpdatePrizeController";
            }else {
                request.setAttribute("error", "Your role is not existed");
            }
        } catch (Exception e) {
            log("Error at MainController " + e.getMessage());
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
