package controllers;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import modal.Barber;
import modal.City;
import modal.Salon;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/save_some_info.do")
public class StepOneSignupServlet extends HttpServlet{
    public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException {
        // Session . . .
        HttpSession session = request.getSession();

        Barber barber_email_pass = (Barber)session.getAttribute("barber_email_pass");

        // Agar barber session main ho to hi aage k data ko save karo . . .
        if(barber_email_pass != null){
            Salon type = null;
             
            // Getting parameter ... 
            String name = request.getParameter("name");
            String contact = request.getParameter("contact");
            String address = request.getParameter("address");
            String start_date = request.getParameter("start_date");
            String o_time = request.getParameter("o_time");
            String c_time = request.getParameter("c_time");
            Integer seat = Integer.parseInt(request.getParameter("seat"));
            Integer salonType = Integer.parseInt(request.getParameter("service"));
            Integer city_id = Integer.parseInt(request.getParameter("city_id"));

            // Geting Saloon Type ... 
            if(salonType == Salon.MENS){
                type = new Salon(salonType);
            } else if(salonType == Salon.WOMENS){
                type = new Salon(salonType);
            } else if(salonType == Salon.BOTH){
                type = new Salon(salonType);
            }
        
            // Save Information on Session ...
            Barber allInfo = new Barber( name, contact, address, o_time, c_time, seat, start_date , type , new City(city_id) ,barber_email_pass.getEmail() , barber_email_pass.getPassword());
            session.setAttribute("save_all_info", allInfo);
            Boolean flag = allInfo.saveBarber();

            System.out.println(flag);
            if(flag == true){
                System.out.println("A A");
                session.setAttribute("barber_id" , allInfo.getBarberId());
                System.out.println(allInfo.getBarberId());
                System.out.println("A B");
            }

            Gson gson = new Gson();
            String resp = gson.toJson(flag);
            response.getWriter().write(resp); 


        }




    }    
}
