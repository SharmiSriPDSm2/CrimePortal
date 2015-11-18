package fr.esiag.crimeteam.visites.model;

import java.io.File;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory sessionFactory;
    
    public static SessionFactory getSessionfactory() {
		return sessionFactory;
	}

	public static final ThreadLocal<Session> session = new ThreadLocal<Session>();
    
    static {
        try {
            sessionFactory = new Configuration().configure("src/hibernate.cfg.xml").buildSessionFactory();
        } 
        catch (Exception e) {
            System.out.println("cannot get hibernate factory " + e.getMessage());
            throw new RuntimeException("cannot create session factory "+e.getMessage());
        }
    }

    public static Session currentSession() throws HibernateException {
        Session s = session.get();
        if (s == null) {
            s = sessionFactory.openSession();
            session.set(s);
        }
        return s;
    }

   public static void closeSession() throws HibernateException {
       Session s = session.get();
       session.set(null);
       if (s != null)
           s.close();
       }
 }
