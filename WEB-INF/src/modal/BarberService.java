package modal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.*;

public class BarberService {
    private Integer barberServiceId;
    private Barber barberId;
    private Service serviceId;

    // setService Method . . . 

    public BarberService(){

    }

    public BarberService(Barber barberId , Service serviceId){
        this.barberId = barberId;
        this.serviceId = serviceId;
    }

    public BarberService(Integer barberServiceId, Barber barberId, Service serviceId) {
        this.barberServiceId = barberServiceId;
        this.barberId = barberId;
        this.serviceId = serviceId;
    }

    // serviceName....
    public static ArrayList<BarberService> getBarberService(Integer berId){
        ArrayList<BarberService> al = new ArrayList<BarberService>();
        Connection con = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/barbo?user=root&password=0205");

                String query = "select barber_service_id,barber_id,name from barbers_services inner join services where (barbers_services.service_id = services.service_id) && (barber_id=?)";
                PreparedStatement ps = con.prepareStatement(query);
                System.out.println("from barberService method 1 ");

                ps.setInt(1 , berId);
                System.out.println(berId+" id hai baber ki ");
                ResultSet rs = ps.executeQuery();
                System.out.println(rs.next()+"***** %%%%%");
                System.out.println(rs+"%%%%% ***** " );
                while(rs.next()){
                    System.out.println("while ke andar se ");
                    al.add( new BarberService(rs.getInt(1), new Barber(rs.getInt(2)), new Service(rs.getString(3))));
                }
                
                
                System.out.println("EK dam bahar se ");
                
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

    public boolean setBarberService(Integer bId , Integer sId){
        boolean flag = false;

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/barbo?user=root&password=0205");
            
            String query1 = "delete from barbers_services where barber_id=? and service_id=? ";
            
            String query2 = "insert into barbers_services ( barber_id , service_id) value (?,?)";

            PreparedStatement ps1 = con.prepareStatement(query1);
            ps1.setInt(1, bId );
            ps1.setInt(2, sId);

            int val = ps1.executeUpdate();

            if(val == 0) {
                PreparedStatement ps2 = con.prepareStatement(query2 , java.sql.Statement.RETURN_GENERATED_KEYS);
                ps2.setInt(1,bId);
                ps2.setInt(2, sId);   

                
                ps2.executeUpdate();
                ResultSet rs = ps2.getGeneratedKeys();
                if(rs.next()){
                    barberServiceId = rs.getInt(1);
                }
            }

            flag = true;
            con.close();
        } catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }


        return flag;
    }


    
    public Integer getBarberServiceId() {
        return barberServiceId;
    }
    public void setBarberServiceId(Integer barberServiceId) {
        this.barberServiceId = barberServiceId;
    }
    public Barber getBarberId() {
        return barberId;
    }
    public void setBarberId(Barber barberId) {
        this.barberId = barberId;
    }
    public Service getServiceId() {
        return serviceId;
    }
    public void setServiceId(Service serviceId) {
        this.serviceId = serviceId;
    }

    
}
