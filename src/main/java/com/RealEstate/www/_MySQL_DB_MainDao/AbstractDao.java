package com.RealEstate.www._MySQL_DB_MainDao;

import static com.RealEstate.www._MySQL_DB_MainDao.HibernateSessionConMySql.*;
import java.io.Serializable;

/**
 *
 * @author OmarKhalil
 */
public abstract class AbstractDao<T> {

    //private Session session;
    /*public AbstractDao() {
               // Original Class . Static Method     .
               // .............  .  that used to      .
               // .............  . only one object    .
               // .............  . that return Object .
               // .............  .  of original class .
               // .............  . (SessionProvider)  . it is the method inside (SessionProvider) object to get session with DB
        session = SessionProvider.getSessionProvider().getSession();
    }*/
    public void insert(T s) {
        MySQL_INSERT(s);
        //CommitTrans();
        //session.beginTransaction();
        //session.persist(s);
        //session.getTransaction().commit();

    }
    
    public void saveOrUpdate(T s) {
        MySQL_SAVEorUPDATE(s);
        //CommitTrans();
        //session.beginTransaction();
        //session.persist(s);
        //session.getTransaction().commit();

    }

    public void save(T s) {
        MySQL_SAVE(s);
        //CommitTrans();
        //session.beginTransaction();
        //session.persist(s);
        //session.getTransaction().commit();

    }

    public void update(T s) {
        MySQL_UPDATE(s);
        //CommitTrans();
    }

    public void merge(T s) {
        MySQL_MERGE(s);
        //CommitTrans();
    }

    public void delete(T s) {
        MySQL_DELETE(s);
        //CommitTrans();
    }

    public T select(Class<T> T, Serializable id) {
        //Class<T> T = null;
        return session.load(T, id);
    }

}

