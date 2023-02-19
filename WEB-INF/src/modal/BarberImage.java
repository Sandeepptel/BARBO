package modal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BarberImage {
    private Integer barberImageId;
    private Barber barber;
    private String salonImagePath;

    public BarberImage(String salonImagePath){
        this.salonImagePath = salonImagePath;
    }

    public BarberImage(Integer barberImageId, Barber barber, String salonImagePath) {
        this.barberImageId = barberImageId;
        this.barber = barber;
        this.salonImagePath = salonImagePath;
    }

    public static ArrayList<String> getBarberImage(Integer barberId){
        ArrayList<String> al = new ArrayList<String>();
        Connection con = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/barbo?user=root&password=0205");

            String query = "select salon_image_path from barber_images where barber_id = ?";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1 ,barberId );

            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                al.add(rs.getString(1));
            }
            
        }
        catch(SQLException|ClassNotFoundException e){   
            e.printStackTrace();
        }
        finally{
            if(con != null){
                try{
                    con.close();
                }
                catch(SQLException e){
                    e.printStackTrace();
                }
            }

        }
        return al;
    }

    public static void saveSalonImage(String fileNames , String uploadPath , Integer barberId){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/barbo?user=root&password=0205");
            
            String query  = "insert into barber_images (barber_id , salon_image_path) values (?,?)";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, barberId);

            String fileName[] = fileNames.split(", ");
            
            for(String images : fileName){
                ps.setString(2, uploadPath+"/"+images);
                ps.executeUpdate();
            }
            System.out.println("images part");
            con.close();

        } catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        } 
    
    }


    public Integer getBarberImageId() {
        return barberImageId;
    }
    public void setBarberImageId(Integer barberImageId) {
        this.barberImageId = barberImageId;
    }
    public Barber getBarber() {
        return barber;
    }
    public void setBarber(Barber barber) {
        this.barber = barber;
    }
    public String getSalonImagePath() {
        return salonImagePath;
    }
    public void setSalonImagePath(String salonImagePath) {
        this.salonImagePath = salonImagePath;
    }

    

}
