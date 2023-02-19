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

@WebServlet("/send_account_page.do")
public class SendAccountPageServlet extends HttpServlet{
    public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException{
        
        System.out.println("DOne 1");
        // Session ...
        HttpSession session = request.getSession();
        Barber barber = (Barber)session.getAttribute("save_all_info");
        
        if( barber != null){
            request.getRequestDispatcher("main_profile.jsp").forward(request , response);
            
        } else{
            
            // else code ...
            request.getRequestDispatcher("signup.do").forward(request , response);
        }


    }
}
