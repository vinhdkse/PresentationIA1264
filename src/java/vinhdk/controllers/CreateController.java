/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.controllers;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;
import java.util.StringTokenizer;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import vinhdk.beans.EventBean;
import vinhdk.dtos.EventDTO;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50)
/**
 *
 * @author vinhd
 */
public class CreateController extends HttpServlet {

    private static final String UPLOAD_DIRECTORY = "D:\\PresentationIA1264\\web\\img";

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
        String url = "SearchController";
        try {
            String id = request.getParameter("val_id");
            Part part = request.getPart("val_img");
            String filename = extractFileName(part);
            String savePath = UPLOAD_DIRECTORY + File.separator + filename;
            File fileSaveDir = new File(savePath);
            part.write(savePath + File.separator);
            String name = request.getParameter("val_name");
            String size = request.getParameter("val_size");
            int sizenum = Integer.parseInt(size);
            String location = request.getParameter("val_location");
            String des = request.getParameter("val_description");
            String startevent = request.getParameter("masked_date3");
            Timestamp event = Timestamp.valueOf(startevent);
            EventDTO dto = new EventDTO(id, name, event, sizenum, location, des, "img/" + filename);
            EventBean bean = new EventBean();
            bean.setDto(dto);
            boolean check = bean.insert();
            if (check) {
                request.setAttribute("VALID", "Insert Success");
            } else {
                request.setAttribute("VALID", "Insert Fail");
            }
        } catch (Exception e) {
            if (e.getMessage().contains("duplicate")) {
                request.setAttribute("VALID", "Id is existed");
                
            } else {
                if (e.getMessage().contains("Timestamp format must be yyyy-mm-dd hh:mm:ss")) {
                    url = "eventcreate.jsp";
                    request.setAttribute("VALID", "Wrong date");
                } else {
                    log("Error at CreateController " + e.getMessage());
                }

            }
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String items[] = contentDisp.split(";");
        for (String item : items) {
            if (item.trim().startsWith("filename")) {
                return item.substring(item.indexOf("=") + 2, item.length() - 1);
            }
        }
        return "";
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
