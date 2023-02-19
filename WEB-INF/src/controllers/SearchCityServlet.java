package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modal.City;

import javax.servlet.ServletException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.annotation.WebServlet;
import com.google.gson.Gson;

@WebServlet("/search_city.do")

public class SearchCityServlet extends HttpServlet{
    public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException{
        // Session start . . .
        HttpSession session = request.getSession();

        String prefix = request.getParameter("city").toLowerCase();
        System.out.println(prefix);

        ArrayList<City> city = City.getAllCity();
        ArrayList<City> ctz  = new ArrayList<City>();

        Iterator<City> itr = city.iterator();
        while(itr.hasNext()){
            City ct = itr.next();
            if(ct.getCityName().toLowerCase().startsWith(prefix)){
                ctz.add(ct);
            }
        }

        Gson gson = new Gson();
        String resp = gson.toJson(ctz);

        response.getWriter().write(resp);

    }
}