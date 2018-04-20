package com.login;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import com.hibernate.Citymaster;
import com.hibernate.HibernateSessionFactory;

public class Loginaction extends LoginactionBin {
public String data()
{
	return "input";
}
public String logincheck()
{	
	System.out.println(loginname);
	if(loginname.equals("admin@gmail.com") && password.equals("9510559599"))
	{
		//this.display();
		
	return "master";
	}
	else
	{
	return "input";
	}
}
	public String addcity()
	{
		Session session = HibernateSessionFactory.getSession();
		/*String strquery = "select cityname from citymaster";
		SQLQuery query = session.createSQLQuery(strquery);
		checklist = query.list();
		for(int i=0; i<=checklist.size(); i++)
		{
			System.out.println("HIIIIIII");
			String Data = (String)checklist.get(i);
			if(Data.equals(cityname))
			{
				System.out.println("Data Duplication Occur......");
				
			}
			else
			{*/
				System.out.println("CHECK DUPLICATION");
				System.out.println(stateid);
				System.out.println("METHOD....");
				session.beginTransaction();
				Citymaster citymaster = new Citymaster();
				citymaster.setCityname(cityname);
				citymaster.setStateid(stateid);
				citymaster.setActive(active);
				session.save(citymaster);
				session.getTransaction().commit();
				session.close();
		
				return "addcity";
}
		
	public String checkdup()
	{
		Session session = HibernateSessionFactory.getSession();
		String strquery = "select cityname from citymaster";
		SQLQuery query = session.createSQLQuery(strquery);
		checklist = query.list();
		for(int i=0; i<=checklist.size(); i++)
		{
			String Data = (String)checklist.get(i);
			if(Data.equals(cityname))
			{
				System.out.println("Data Duplication Occur......");
				
			}
		}
		
		return null;
		
	
		
		
	}
	
	
}
