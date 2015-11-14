package fr.esiag.crimeteam.visites.model;


public class Client  implements java.io.Serializable {

     /**
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
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public String getFirstname() {
        return this.firstname;
    }
    
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    
    public String getLastname() {
        return this.lastname;
    }
    
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

}


