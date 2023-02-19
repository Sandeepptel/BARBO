package modal;

public class Salon {
    private Integer salonId;
    private String saloonType;

    public static final int MENS = 1;
    public static final int WOMENS = 2;
    public static final int BOTH = 3;

    public Salon(Integer salonId){
        this.salonId = salonId;
    }

    public Salon(){

    }

    public Salon(Integer salonId, String saloonType) {
        this.salonId = salonId;
        this.saloonType = saloonType;
    }

    public Integer getSalonId() {
        return salonId;
    }

    public void setSalonId(Integer salonId) {
        this.salonId = salonId;
    }

    public String getSaloonType() {
        return saloonType;
    }

    public void setSaloonType(String saloonType) {
        this.saloonType = saloonType;
    }
    

    
}
