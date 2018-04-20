package com.efive.gstmaster.common;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import asposewobfuscated.g;

import com.efive.gstmaster.hibernate.Gstinmaster;
import com.efive.gstmaster.hibernate.HibernateSessionFactory;

public class ORGDAO implements ServletRequestAware,ServletResponseAware {
	
	public static HttpServletRequest request;
	public static HttpServletResponse response;
	
	
	public List<ORGDAO> ExecuteQuery(String strQuery)
	{
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = null;
		try 
		{
			transaction =session.beginTransaction();
			SQLQuery query =  session.createSQLQuery(strQuery);
			List<ORGDAO> getDataList = query.list();
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
		}finally{session.close();}
		
		return  null;
	}

	@Override
	public void setServletResponse(HttpServletResponse response)
	{
		ORGDAO.response=response;	
	}
	public void setServletRequest(HttpServletRequest request)
	{
		ORGDAO.request=request;
	}
	
	
	public boolean updateDataHibernate(Gstinmaster g,Long id)
	{
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction =null;
		try
			{
			
				transaction = session.getTransaction();
				g = (Gstinmaster)session.get(Gstinmaster.class,new Long(id));
				session.beginTransaction();
				session.update(g);
				session.getTransaction().commit();

			} 
		
		catch (Exception e) 
			{
				if(null!=transaction)
				{
					
					transaction.rollback();
				}
			}
		finally
		{
			/*session.close();*/
		}
		
		return true;
	}
	
	public boolean saveDataHibernate(Gstinmaster gstinmaster)
	{
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction =null;
		try
			{
			
				transaction = session.getTransaction();
				session.beginTransaction();
				session.save(gstinmaster);
				session.getTransaction().commit();
			} 
		
		catch (Exception e) 
			{
				if(null!=transaction)
				{
					
					transaction.rollback();
				}
			}
		finally
		{
			session.close();
		}
		
		return true;
	}
	
	
	

}
