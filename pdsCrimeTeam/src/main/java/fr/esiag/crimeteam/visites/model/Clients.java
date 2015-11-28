package fr.esiag.crimeteam.visites.model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;

public class Clients {
	
	public void addClient(Client client){
		 Session session = (Session) HibernateUtil.currentSession();
         session.beginTransaction();
         Client clientDAO = new Client();
         clientDAO.setFirstname(client.getFirstname());
         clientDAO.setLastname(client.getLastname());
         session.save(clientDAO);
         session.getTransaction().commit();
         System.out.println("commit");
		}
	public List<Client> listClients(){
		StringBuilder req = new StringBuilder();
		req.append("SELECT Firstname, Lastname FROM client");

		// Etape 2 : Travail de mapping de la requete.
		Query qResult = HibernateUtil.currentSession().createSQLQuery(req.toString())
				.addScalar("Firstname", StringType.INSTANCE)
				.addScalar("Lastname", StringType.INSTANCE)
				.setResultTransformer(Transformers.aliasToBean(Client.class));

		// Etape 3 : Execution et renvoi des résultats
		return qResult.list();
	}
	
}
