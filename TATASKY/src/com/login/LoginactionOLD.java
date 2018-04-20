package com.login;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import com.hibernate.Citymaster;
import com.hibernate.HibernateSessionFactory;

public class LoginactionOLD extends LoginactionBin {
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
		System.out.println(stateid);
		System.out.println("METHOD....");
		Session session = HibernateSessionFactory.getSession();
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
	public String checkdupli()
	{
		System.out.println("CHECK DUPLICATION");
		Session session  = HibernateSessionFactory.getSession();
		SQLQuery query =session.createSQLQuery("select * from statemaster;");
		List checklist = query.list();
		
		return null;
		
	
		
		
	}
	
	
}
