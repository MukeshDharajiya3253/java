package com.common;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ORGDAO implements ServletResponseAware,ServletRequestAware {
	
	public static HttpServletRequest request;
	public static HttpServletResponse response;
	Transaction transaction =null;
	Session session = HibernateSessionFactory.getSession();
	public List<ORGDAO> ExecuteQuery(String str)
	{
		try
		{
			transaction=session.beginTransaction();
			SQLQuery query = session.createSQLQuery(str);
			List<ORGDAO> datalist = query.list();
			transaction=session.getTransaction();
			transaction.commit();
			return datalist;
			
		}
		catch (Exception e)
		{
			if(null!=transaction)
			{
				
				transaction.rollback();
				System.out.println("ERROR OCCURE DURING THE DISPLAYDATA");
				System.out.println(e.getMessage());
				e.printStackTrace();
				
			}
		}

		return null;
	}
	
	
	public String updateHibernate(Object object)
	
	{
		try 
		{
			
			transaction = session.beginTransaction();
			session.update(object);
			transaction=session.getTransaction();
			transaction.commit();
			
		}
		catch (Exception e) 
		{
			if(null!=transaction)
			{
				
				transaction.rollback();
				e.printStackTrace();
				System.out.println(e.getMessage());
				
				
			}
			
		}
		
		
		
		return null;
		
	}
/*public Boolean saveHibernate(Object object)
	
	{
		try 
		{
			
			transaction = session.beginTransaction();
			session.save(object);
			transaction=session.getTransaction();
			transaction.commit();
			return true;
		}
		catch (Exception e) 
		{
			if(null!=transaction)
			{
				
				transaction.rollback();
				
			}
			e.printStackTrace();
			System.out.println(e.getMessage());
			
			return false;
		}
		
		
		
	}
*/

@Override
public void setServletRequest(HttpServletRequest request) {
	ORGDAO.request=request;
	
}


@Override
public void setServletResponse(HttpServletResponse  response) {
	ORGDAO.response  =response;
	
}
	
public boolean ExecuteUpdate(String strquey)
{
	System.out.println("Query Execute Properly");
	try
	{
		/*Session session = HibernateSessionFactory.getSession();*/
		Connection con =session.connection();
		session.beginTransaction();
		Statement statement =con.createStatement();
		statement.executeUpdate(strquey);
		session.getTransaction().commit();
		con.commit();
		con.close();
		return true;
		
	}
	catch(Exception e)
	{
		System.out.println(e.getMessage());
		return false;
	}
	
}
public String uploadFile(String txnnumber, String filename, File filepath,String dirName){
	// File upload
	System.out.println("filename===="+filename);
	String path = null;
	if (null != filepath && filepath.length()>0)
    {
		File theDir = null;
		theDir = new File(request.getRealPath("/"+dirName+""));
		if (!theDir.exists())
        {
			boolean result = theDir.mkdir();
		} else {
			theDir = null;
		}
		String uploadpath = null;
		if (filepath != null)
        {
			String extention = null;
			int dot = filename.lastIndexOf(".");
			if (dot > 0) 
            {
				extention = filename.substring(dot + 1);
				System.out.println("extenstion===="+extention);
			}
			uploadpath = "" +dirName+"/"+txnnumber +"."+ extention;
			path=uploadpath;
			System.out.println("Real Path ::   "+request.getRealPath(uploadpath));
			System.out.println("Real Pathfile ::  "+filename);
			File f = new File(request.getRealPath(uploadpath));
			if(f.exists())
            {
				System.out.println("File Deleting..!");
				f.delete();
			}
			theDir = new File(request.getRealPath(""));
			if (!theDir.exists()) 
            {
				boolean result = theDir.mkdir();
			}
			String filePath = request.getRealPath("");
			File srcFile = new File(filePath, uploadpath);
			File file = new File(filePath, uploadpath);
			if (file.exists()) 
            {
				file.delete();
			}
			try {
				FileUtils.copyFile(filepath, srcFile);
			} catch (IOException e) {
				e.printStackTrace();
			}
			filename = file.getName();
		}
		
	}
	return path;
}
}




