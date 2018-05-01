package com.efive;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.HibernateSessionFactory;

public class DAO implements ServletRequestAware,
ServletResponseAware{
	
	 public static HttpServletResponse response;
	 public static HttpServletRequest request;
	
	public  List<?> ExecuteQuery(String strQuery)
	{
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction =null;
		try
		{
			transaction =session.beginTransaction();
			SQLQuery query =session.createSQLQuery(strQuery);
			List<?> datalist = query.list();
			transaction= session.getTransaction();
			transaction.commit();
			return datalist;
			
		}
		catch(Exception e)
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
		
		return null;
	}
	
	@Override
	public void setServletResponse(HttpServletResponse response) {
		UserMasterActionBin.response=response;
		
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		UserMasterActionBin.request=request;
		
	}

}
