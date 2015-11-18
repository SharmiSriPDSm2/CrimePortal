package fr.esiag.crimeteam.visites.model;

import org.apache.log4j.Logger;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    static Logger log = Logger.getLogger(HibernateUtil.class.getName());
    private static final SessionFactory sessionFactory;
    public static final ThreadLocal<Session> session = new ThreadLocal<Session>();
    
    static {
        try {
            sessionFactory = new Configuration().configure("hibernate.xml").buildSessionFactory();
        } 
        catch (Exception e) {
            System.out.println("cannot get hiberbnate factory " + e.getMessage());
            log.error("cannot create a session factory "+e.getMessage());
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
