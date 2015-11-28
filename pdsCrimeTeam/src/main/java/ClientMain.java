

import org.hibernate.Session;

import fr.esiag.crimeteam.visites.model.Client;
import fr.esiag.crimeteam.visites.model.HibernateUtil;

public class ClientMain {

	public static void main(String[] args) {
	    	   try {
	           	 Session session = (Session) HibernateUtil.currentSession();
	             session.beginTransaction();
	             Client clientDAO = new Client();
	             clientDAO.setFirstname("tradrzthehgr");
	             clientDAO.setLastname("Anna");
	             session.save(clientDAO);
	             session.getTransaction().commit();
	             System.out.println("commit");
	           } catch (Exception e) {
	        	   e.printStackTrace();
	           }
	       
	    }

	

}
