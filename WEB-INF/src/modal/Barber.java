package modal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import org.jasypt.util.password.StrongPasswordEncryptor;
import java.sql.*;
import modal.*;
import java.util.ArrayList;

public class Barber {
    private Integer barberId;
    private String name;
    private String contact;
    private String address;
    private String email;
    private String startTime;
    private String endTime;
    private Integer totalSeat;
    private String password;
    private String startingYear;
    private Salon salonType;
    private City cityId;

    private StrongPasswordEncryptor spe = new StrongPasswordEncryptor();

    public Barber(){
        
    }

    public Barber(Integer barberId){
        this.barberId = barberId;
    }

    public Barber(String email , String password){
        this.email = email;
        this.password = password;
    }

    public Barber(String name, String contact, String address, String startTime, String endTime, Integer totalSeat,
            String startingYear, Salon salonType ,City cityId , String email , String password) {
        this.name = name;
        this.contact = contact;
        this.address = address;
        this.startTime = startTime;
        this.endTime = endTime;
        this.totalSeat = totalSeat;
        this.startingYear = startingYear;
        this.salonType = salonType;
        this.cityId = cityId;
        this.email = email;
        this.password = password;
    }


    public Barber(Integer barberId, String name, String contact, String address, String email,
            String startTime, String endTime, Integer totalSeat, String password,
            String startingYear, Salon salonType, Service service , City cityId) {
        this.barberId = barberId;
        this.name = name;
        this.contact = contact;
        this.address = address;
        this.email = email;
        this.startTime = startTime;
        this.endTime = endTime;
        this.totalSeat = totalSeat;
        this.password = password;
        this.startingYear = startingYear;
        this.salonType = salonType;
        this.cityId = cityId;
    }

    // getting all barber's Information.....
    public static ArrayList<Barber> getBarberInfo(Integer barberId){
        Connection con=null;

        ArrayList<Barber> al = new ArrayList<Barber>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/barbo?user=root&password=0205");
            String query = "select b.name,b.contact,b.address,b.salon_id,b.email,b.start_time,b.total_seat,b.password,b.starting_year,b.end_time,c.name FROM barbers AS b INNER JOIN cites AS c ON b.city_id = c.city_id WHERE b.barber_id = ?";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1,barberId);
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){

                al.add(new Barber(rs.getString(1) , rs.getString(2), rs.getString(3) , rs.getString(6) , rs.getString(10) , rs.getInt(7) , rs.getString(9) , new Salon(rs.getInt(4)) , new City(rs.getString(11)) , rs.getString(5) , rs.getString(8) ));

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

    public Boolean saveBarber(){
        Boolean flag = false;
        try{

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/barbo?user=root&password=0205");
            String query  = "insert into barbers (name , contact , address , salon_id , email , start_time , total_seat , password , starting_year , end_time , city_id) values (?,?,?,?,?,?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query , java.sql.Statement.RETURN_GENERATED_KEYS);

            ps.setString(1,name);
            ps.setString(2,contact);
            ps.setString(3,address);
            ps.setInt(4,salonType.getSalonId());
            ps.setString(5,email);
            ps.setString(6,startTime);
            ps.setInt(7,totalSeat);
            ps.setString(8,spe.encryptPassword(password));
            ps.setString(9,startingYear);
            ps.setString(10,endTime);
            ps.setInt(11,cityId.getCityId());

            int count = ps.executeUpdate();
            if(count == 1){
                ResultSet rs = ps.getGeneratedKeys();
                if(rs.next()){
                    barberId = rs.getInt(1);
                }
                flag = true;
            }
            con.close();

        } catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return flag;
    }

    public Integer getBarberId() {
        return barberId;
    }

    public void setBarberId(Integer barberId) {
        this.barberId = barberId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public Integer getTotalSeat() {
        return totalSeat;
    }

    public void setTotalSeat(Integer totalSeat) {
        this.totalSeat = totalSeat;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStartingYear() {
        return startingYear;
    }

    public void setStartingYear(String startingYear) {
        this.startingYear = startingYear;
    }

    public Salon getSalonType() {
        return salonType;
    }

    public void setSalonType(Salon salonType) {
        this.salonType = salonType;
    }

    public City getCityId() {
        return cityId;
    }

    public void setCityId(City cityId) {
        this.cityId = cityId;
    }

   
    
}
