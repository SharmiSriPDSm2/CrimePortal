package fr.esiag.crimeteam.visites.model;



public class Client  implements java.io.Serializable {
	/**
	 * 
	 * @hibernate.class table = "client"
	 *
	 */
	private static final long serialVersionUID = 1L;
	private int id;
     private String firstname;
     private String lastname;

    public Client() {
    }
 
    public Client(int id, String firstname, String lastname) {
       this.id = id;
       this.firstname = firstname;
       this.lastname = lastname;
    }
    /**
     * 
     * @hibernate.id generator-class = "increment" column = "ID"
     */
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    
    /**
     * 
     * @hibernate.property column = "Firstname"
     */
    public String getFirstname() {
        return this.firstname;
    }
    
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    /**
     * 
     * @hibernate.property column = "Lastname"
     */
    public String getLastname() {
        return this.lastname;
    }
    
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
  

}


