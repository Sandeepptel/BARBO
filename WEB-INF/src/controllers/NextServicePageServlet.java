package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modal.Barber;

@WebServlet("/next_service_page.do")
public class NextServicePageServlet extends HttpServlet{
    public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException {
        HttpSession session = request.getSession();

        Barber barber = (Barber)session.getAttribute("save_all_info");
        
        if( barber != null){
            Integer b_id = (Integer)session.getAttribute("barber_id");
            
            request.getRequestDispatcher("next_service_page.jsp").forward(request , response);
            
        } else{
            
            // else code ...
            request.getRequestDispatcher("signup.do").forward(request , response);
        }
    }
}