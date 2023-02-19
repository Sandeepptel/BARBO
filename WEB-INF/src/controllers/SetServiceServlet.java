package controllers;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modal.Barber;
import modal.BarberService;
import modal.Service;

@WebServlet("/set_service.do")
public class SetServiceServlet extends HttpServlet {
    public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException {
        //   Session ...
        HttpSession session = request.getSession();

        Barber barber = (Barber)session.getAttribute("save_all_info");
        if(barber != null){
            // parameter ... 
            Integer barberId = Integer.parseInt(request.getParameter("barberId")); 
            Integer serviceId = Integer.parseInt(request.getParameter("serviceId"));

            // Object...
            BarberService tempBarberService = new BarberService(new Barber(barberId), new Service(serviceId));

            // Add & delete Services... 
            Boolean temp = tempBarberService.setBarberService(barberId , serviceId);

            if(temp == true){
                request.setAttribute("baerbService" , tempBarberService.getBarberServiceId());
                System.out.println(tempBarberService.getBarberServiceId()); 
            }

            response.getWriter().print(temp);

        }


    }
}
