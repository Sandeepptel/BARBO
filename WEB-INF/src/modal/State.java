package modal;

public class State {
    private Integer stateId;
    private String StateName;

    public State(){

    }

    public State(Integer stateId, String stateName) {
        this.stateId = stateId;
        this.StateName = stateName;
    }

    public Integer getStateId() {
        return stateId;
    }

    public void setStateId(Integer stateId) {
        this.stateId = stateId;
    }

    public String getStateName() {
        return StateName;
    }

    public void setStateName(String stateName) {
        StateName = stateName;
    }

    

}
