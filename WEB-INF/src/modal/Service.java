package modal;

import java.sql.*;
import java.util.ArrayList;

public class Service {

    private Integer serviceId;
    private String serviceName;

    public Service(Integer serviceId) {
        this.serviceId = serviceId;
    }

    public Service(String serviceName) {
        this.serviceName = serviceName;
    }
    public Service(Integer serviceId, String serviceName) {
        this.serviceId = serviceId;
        this.serviceName = serviceName;
    }

    public static ArrayList<Service> getAllService(){
        ArrayList<Service> arr = new ArrayList<Service>();

        try{

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/barbo?user=root&password=0205");
            String query = "select * from services";

            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                arr.add(new Service(rs.getInt(1), rs.getString(2)));
            }
            con.close();
        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }


        return arr;
    }

    public Integer getServiceId() {
        return serviceId;
    }
    public void setServiceId(Integer serviceId) {
        this.serviceId = serviceId;
    }
    public String getServiceName() {
        return serviceName;
    }
    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    
    
}
