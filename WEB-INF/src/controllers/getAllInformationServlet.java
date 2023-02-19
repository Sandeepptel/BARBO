package controllers;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modal.Barber;
import modal.*;

@WebServlet("/get_info.do")
public class getAllInformationServlet extends HttpServlet {
    /* (non-Javadoc)
     * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
     */
    
    public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException {
        // session...
        HttpSession session = request.getSession();
        Barber barber = (Barber)session.getAttribute("save_all_info");

        if(barber != null){
            try{
                String name2 = "";
                Integer bId = Integer.parseInt(request.getParameter("main_id"));
                // Integer cId = Integer.parseInt(request.getParameter("city_id"));

                
                // barber's services
                ArrayList<BarberService> barberServices = BarberService.getBarberService(bId);

                Iterator itr = barberServices.iterator();
                while(itr.hasNext()){
                    BarberService bs = (BarberService)itr.next();
                    String name1 = bs.getServiceId().getServiceName();
                    System.out.println(name1);
                        name2 += ","+name1;
                    System.out.println(name2+" Main String ... ");
                }
                
                System.out.println(name2+" Main String ... ");
                session.setAttribute("barberServices", name2);


                // Barber Info fetch...
                ArrayList<Barber> barberInfo = Barber.getBarberInfo(bId);
                Barber bb = barberInfo.get(0);
                session.setAttribute("barberInfo" , bb);
                System.out.println("Hello1");


                System.out.println("Data has came");
                response.getWriter().write("true");
                
            }
            catch(NumberFormatException nfm){
                nfm.printStackTrace();
            } 
              
        }
        else{
            // code ...
        }
    }
}
