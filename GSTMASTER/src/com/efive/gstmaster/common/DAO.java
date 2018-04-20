package com.efive.gstmaster.common;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.efive.gstmaster.hibernate.HibernateSessionFactory;

public class DAO implements ServletRequestAware,ServletResponseAware {
	
	public static HttpServletRequest request;
	public static HttpServletResponse response;
	
	Session session = HibernateSessionFactory.getSession();
	Transaction transaction = null;
	
	public List<DAO> ExecuteQuery(String strQuery)
	{
				
			
		try 
			{
				transaction =session.beginTransaction();
				SQLQuery query =  session.createSQLQuery(strQuery);
				List<DAO> getDataList = query.list();
				transaction=session.getTransaction();
				transaction.commit();
				return getDataList;
			}
			
		catch (Exception e)
			
			{
			
				if(null!=transaction)
				{
					transaction.rollback();
					System.out.println("Erro In SQLQuery......."+e.getMessage());
				}
			}
			
		return  null;
	}

	@Override
	public void setServletResponse(HttpServletResponse response)
		{
			DAO.response=response;	
		}
	public void setServletRequest(HttpServletRequest request)
		{
			DAO.request=request;
		}
	
	public boolean saveDataHibernate(Object saveObj)
	{
		
		try
			{ 
				transaction= session.beginTransaction();
				session.save(saveObj);
				transaction=session.getTransaction();
				transaction.commit();
				
			} 
		catch (Exception e) 
			
			{
				if(null!=transaction)
				{
					transaction.rollback();
				}
				
			}
		finally
		{session.close();}
		return true;
	}
	
	public boolean updateDataHibernate(Object updateObj )
	{	
		try
			{		
				transaction = session.beginTransaction();
				session.update(updateObj);
				transaction=session.getTransaction();
				transaction.commit();
			} 
		
		catch (Exception e) 
			{
				if(null!=transaction)
				{	
					transaction.rollback();
				}
			}
		
		
		finally{session.close();}
			
				return true;
	}

}
