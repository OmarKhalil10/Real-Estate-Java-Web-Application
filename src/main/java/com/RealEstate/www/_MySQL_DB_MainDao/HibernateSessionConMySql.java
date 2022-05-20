package com.RealEstate.www._MySQL_DB_MainDao;
import java.io.Serializable;
import org.hibernate.Session;

/**
 *
 * @author OmarKhalil
 */
public class HibernateSessionConMySql {
    public static Session session = SessionProvider.getSessionProvider().getSession();
    
    public static void MySQL_beginTrans(){
        session.beginTransaction();
    }
    
    public static void MySQL_commitTrans(){
        session.getTransaction().commit();
    }
    
    public static void MySQL_RollBack(){
        session.getTransaction().rollback();
    }
    
    public static void MySQL_closeConn(){
        session.close();
    }
    
    public static void MySQL_openCon(){
        session = SessionProvider.getSessionProvider().getSession();
    }
    
    public static void MySQL_INSERT(Object T){
        session.persist(T);
    }
    
    public static void MySQL_SAVE(Object T){
        session.save(T);
    }
    
    public static void MySQL_SAVEorUPDATE(Object T){
        session.saveOrUpdate(T);
    }
    
    public static void MySQL_UPDATE(Object T){
        session.merge(T);
    }
    
    public static void MySQL_MERGE(Object T) {
        session.merge(T);
    }
    
    public static void MySQL_DELETE(Object T){
        session.delete(T);
    }
    
     public static <T> T MySQL_QUERY(Class<T> type, Serializable srlzbl){
        return session.load(type, srlzbl);
    }
    
}
