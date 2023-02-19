package controllers;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modal.Barber;
import modal.Service;

import java.io.*;
import java.util.regex.Pattern;
import java.util.ArrayList;
import java.util.regex.Matcher;

import javax.servlet.annotation.*;

@WebServlet("/signup.do")
public class SignupServlet extends HttpServlet {
    public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException{

        // Session String 
        HttpSession session = request.getSession();
        System.out.println("In pagwe ");
        // Get email 
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // forward Page 
        String page = "profile.jsp";

        // validation ... 
        boolean flag = true;

        // Regex Class ... 
        // Pattern p = Pattern.compile("[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]");
        // Matcher m = p.matcher(email);  

        // if(!m.matches()){
        //     request.setAttribute("u_email" , "Please! input valid Email");
        //     flag = false;
        // }
        
        // Pattern p1 = Pattern.compile("[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]");
        // Matcher m1 = p1.matcher(password);

        // if(!m1.matches()){
        //     request.setAttribute("e_pass" , "Please! Enter valid Number of character");
        //     flag = false;
        // }

        if(flag){
            // System.out.println("1");
            Barber barber = new Barber(email , password);   
            session.setAttribute( "barber_email_pass", barber);
            // System.out.println("2");
            
            // Getting all service for prifile page...
            ArrayList<Service> service = Service.getAllService();
            session.setAttribute("service", service);
            // System.out.println("3");
            
            // Progile set_up Page ... 
            // System.out.println("4");
            request.getRequestDispatcher(page).forward(request,response);

            // Mkaing folder for uploading images in folder . . . 
            String uploadPath = getServletContext().getRealPath("WEB-INF/uploads/");
            File file = new File(uploadPath , email+"/salon");
            // folder ...
            file.mkdirs();
            
        } else{
            // Else condition code ... 
            System.out.println("Some Error");
            page = "";
            request.getRequestDispatcher(page).forward(request,response);
        }




    }
}
