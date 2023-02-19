package controllers;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modal.Barber;
import modal.BarberImage;
import utils.FileUpload;

import java.io.IOException;

@WebServlet("/upload_salon_images.do")

public class UploadSalonImagesServlet extends HttpServlet{
    public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException {
        // Session ...
        HttpSession session = request.getSession();

        // Barber 
        Barber barber = (Barber)session.getAttribute("save_all_info");
        
        if(barber != null){
            System.out.println("1");
            
            String barberUploadPath  = barber.getEmail()+"/salon";
            String uploadPath = getServletContext().getRealPath("/WEB-INF/uploads/"+barberUploadPath);
            System.out.println("2");
            String fileNames = FileUpload.uploadFile(request,uploadPath);
            System.out.println("3");
            BarberImage.saveSalonImage(fileNames , barberUploadPath , barber.getBarberId());

        } else{
            // barber null hone pr likhe jana vala code ...
            System.out.println("else part . . .");

        }

    }
}