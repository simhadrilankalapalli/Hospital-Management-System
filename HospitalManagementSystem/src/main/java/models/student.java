package models;

public class student {
    private String pinnum;
    private String name;
    private String email;
    private String branch;
    private String password;
	private String id;

    // Getters and Setters
    public String getPinnum() {
        return pinnum;
    }

    public void setPinnum(String pinnum) {
        this.pinnum = pinnum;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    // Constructor with all parameters
    public student(String pinnum, String name, String email, String branch, String password) {
        super();
        this.pinnum = pinnum;
        this.name = name;
        this.email = email;
        this.branch = branch;
        this.password = password;
    }

    // Default constructor
    public student() {
        super();
    }

    
    // Constructor with name, email, and password
    public student(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
    }

    public String getId() {
		return id;
    }

    public void setId(String id){
        this.id = id;
    }
}
