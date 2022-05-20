package com.RealEstate.www._MySQL_DB_DAOS;
import com.RealEstate.www._MySQL_DB_MainDao.AbstractDao;
import static com.RealEstate.www._MySQL_DB_MainDao.HibernateSessionConMySql.session;

import com.RealEstate.www._MySQL_DB_Entities.Employees;
import java.util.List;
import org.hibernate.Query;
/**
 * 
 */

public class Employees_DAO<T> extends  AbstractDao<T>{
	public List<Employees> GetEmployeesById(String employeesId) {
        Query query = session.createQuery("SELECT e from Employees e WHERE e.employeesId=:employeesId ");
        query.setString("employeesId", employeesId);
        List<Employees> eList = query.getResultList();
        return eList;
    }
    
    public List<Employees> GetAllEmployees() {
        Query query = session.createQuery("SELECT e from Employees e ORDER BY e.employeesId");
        List<Employees> eList = query.getResultList();
        return eList;
    }
}