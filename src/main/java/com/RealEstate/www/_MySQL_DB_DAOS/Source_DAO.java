package com.RealEstate.www._MySQL_DB_DAOS;
import com.RealEstate.www._MySQL_DB_MainDao.AbstractDao;
import static com.RealEstate.www._MySQL_DB_MainDao.HibernateSessionConMySql.session;
import com.RealEstate.www._MySQL_DB_Entities.Source;
import java.util.List;
import org.hibernate.Query;
/**
 * 
 */

public class Source_DAO<T> extends  AbstractDao<T>{
	public List<Source> GetSourceById(String sourceId) {
        Query query = session.createQuery("SELECT s from Source s WHERE s.sourceId=:sourceId ");
        query.setString("sourceId", sourceId);
        List<Source> eList = query.getResultList();
        return eList;
    }
    
    public List<Source> GetAllSources() {
        Query query = session.createQuery("SELECT s from Source s ORDER BY s.sourceId");
        List<Source> eList = query.getResultList();
        return eList;
    }
}