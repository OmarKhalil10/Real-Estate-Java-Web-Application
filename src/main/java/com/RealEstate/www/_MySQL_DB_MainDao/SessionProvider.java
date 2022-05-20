package com.RealEstate.www._MySQL_DB_MainDao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author OmarKhalil
 */
public class SessionProvider {
    SessionFactory factory;
    private static SessionProvider provider;
    
    public static synchronized SessionProvider getSessionProvider (){
        if (provider == null){
            provider = new SessionProvider();
        }
        return provider;
    }
    private SessionProvider(){
        Configuration config = new Configuration().configure("mysql_db_config/hibernate.cfg.xml");
        factory = config.buildSessionFactory();
    }
    
    public Session getSession(){
        
        return factory.openSession();
    }
}
