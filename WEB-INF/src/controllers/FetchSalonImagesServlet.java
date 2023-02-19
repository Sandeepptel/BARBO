package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import modal.*;
;

@WebServlet("/fetch_all_images.do")
public class FetchSalonImagesServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Integer busId = Integer.parseInt(request.getParameter("main_id"));

        // barber images ...
        ArrayList<String> barberImage = BarberImage.getBarberImage(busId);
       
        Gson gson = new Gson();

        String resp = gson.toJson(barberImage);

        response.getWriter().write(resp);
    }
}