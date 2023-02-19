package modal;

import java.sql.*;
import java.util.ArrayList;

public class City {
    private Integer cityId;
    private String cityName;
    private State State;

    public City(){

    }

    public City(Integer cityId){
        this.cityId = cityId;
    }
    public City(String cityName){
        this.cityName = cityName;
    }

    public City(Integer cityId, String cityName, modal.State state) {
        this.cityId = cityId;
        this.cityName = cityName;
        State = state;
    }

    public static ArrayList<City> getAllCity(){
        ArrayList<City> arr = new ArrayList<City>();
        try{

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/barbo?user=root&password=0205");

            String query = "select city_id , name , city.state_id , state from cites as city inner join states as s where city.state_id=s.state_id";
            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                arr.add(new City(rs.getInt(1), rs.getString(2), new State( rs.getInt(3) , rs.getString(4))));
            }
            con.close();

        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }


        return arr;

    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public State getState() {
        return State;
    }

    public void setState(State state) {
        State = state;
    }

    
    

}
