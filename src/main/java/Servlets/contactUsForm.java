package Servlets;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RealEstate.www._MySQL_DB_MainDao.HibernateSessionConMySql;
import com.RealEstate.www._MySQL_DB_Entities.Source;
import com.RealEstate.www._MySQL_DB_DAOS.Source_DAO;
/**
 * Servlet implementation class contactUsForm
 */
public class contactUsForm extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		try {
			String firstName = request.getParameter("firstName");
			System.out.println(firstName);
			
			//Source s = new Source();
			//s.setSourceId(Integer.parseInt("12"));
			//s.setName("ahmed");
			
			// Source_DAO sDao = new Source_DAO();

			//HibernateSessionConMySql.MySQL_openCon();
			//HibernateSessionConMySql.MySQL_beginTrans();
			// sDao.insert(s);
			//HibernateSessionConMySql.MySQL_commitTrans();
			
			response.getWriter().write("Done");
			
		}catch(Exception e){
			e.printStackTrace();
			
			//HibernateSessionConMySql.MySQL_RollBack();
			response.getWriter().write("Not Done");
			System.out.println("Error ................");
		}
		//HibernateSessionConMySql.session.clear();
	}

	public static String getBody(HttpServletRequest request) throws IOException {

	    String body = null;
	    StringBuilder stringBuilder = new StringBuilder();
	    BufferedReader bufferedReader = null;

	    try {
	        InputStream inputStream = request.getInputStream();
	        if (inputStream != null) {
	            bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
	            char[] charBuffer = new char[128];
	            int bytesRead = -1;
	            while ((bytesRead = bufferedReader.read(charBuffer)) > 0) {
	                stringBuilder.append(charBuffer, 0, bytesRead);
	            }
	        } else {
	            stringBuilder.append("");
	        }
	    } catch (IOException ex) {
	        throw ex;
	    } finally {
	        if (bufferedReader != null) {
	            try {
	                bufferedReader.close();
	            } catch (IOException ex) {
	                throw ex;
	            }
	        }
	    }

	    body = stringBuilder.toString();
	    return body;
	}
}