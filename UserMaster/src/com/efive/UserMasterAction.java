package com.efive;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpSession;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.HibernateSessionFactory;
import com.hibernate.Usermaster;

public class UserMasterAction extends UserMasterActionBin {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	PrintWriter out =null;
	
	
	public String data()
	{	//get  User List
		HttpSession httpSession = request.getSession(true);
		
		String usermasterQuery="SELECT u.userid,u.usertype,u.username," +
				   "u.useremail,u.userloginname,u.useraddress,u.userpassword," +
				   "u.usercontact,c.cityname,s.statename,u.active FROM usermaster AS u " +
				   "JOIN citymaster AS c ON u.cityid=c.cityid JOIN statemaster AS s ON u.stateid=s.stateid order by userid ";
			
		usermasterlist =ExecuteQuery(usermasterQuery);
		System.out.println("UserMasterQueryExecute:"+usermasterQuery);
		System.out.println("UserMasterQuerySize:"+usermasterlist.size());
		
		//get StateList
		String getstateQuery = "SELECT stateid,statename FROM statemaster;";
		statelist =ExecuteQuery(getstateQuery);
		
		return "input";
		
	}
	
	public String saveuser()
	{
		Session  session = HibernateSessionFactory.getSession();
		Transaction transaction = null;
		System.out.println("Add New User Request.............");
		try {
			
		transaction =session.beginTransaction();
		Usermaster usermaster = new  Usermaster();
		
		if(null!=username && username.trim().length()>0)
		{	
			usermaster.setUsername(username);
		}
		if(null!=usertype && usertype.trim().length()>0)
		{
			usermaster.setUsertype(usertype);
		}
		if(null!=userloginname && userloginname.trim().length()>0)
		{
			usermaster.setUserloginname(userloginname);
			usermaster.setUseremail(userloginname);
		}
		if(null!=userpassword && userpassword.trim().length()>0)
		{
			usermaster.setUserpassword(userpassword);
		}
		if(null!=usercontact && usercontact.longValue()>0)
		{
			usermaster.setUsercontact(usercontact);
		}
		if(null!=useraddress && useraddress.trim().length()>0)
		{
			usermaster.setUseraddress(useraddress);
		}
		if(null!=cityid && cityid.intValue()>0)
		{
			usermaster.setCityid(cityid);
		}
		if(null!=stateid && stateid.intValue()>0)
		{
			usermaster.setStateid(stateid);
		}
		if(null!=userphoto && userphoto.trim().length()>0)
		{
			usermaster.setUserphoto(userphoto);
		}
		if(null!=active)
		{
			usermaster.setActive("Y");
		}
		else
		{
			usermaster.setActive("N");
		}
		session.save(usermaster);
		transaction = session.getTransaction();
		transaction.commit();
		System.out.println("New User ADD...........");
		return data();
		} 
		catch (Exception e) 
		{
			if(null!=transaction)
			{
				transaction.rollback();
			}
			
			System.out.println("Error Occure:-------"+e.getMessage());
		
		}
		
		finally{session.close();}
		
		return null;
	}
	
	public String getCityList()
	{
		try {
		out=response.getWriter();
		String sid = request.getParameter("paramid");
		System.out.println(sid);
		String getcityQuery = "SELECT cityid ,cityname,stateid FROM  citymaster WHERE stateid="+sid+" ";
		System.out.println(getcityQuery);
		citylist =ExecuteQuery(getcityQuery);
		String cityAjax="";
		if(null!=citylist && citylist.size()>0)
		{
			for(int i =0; i<citylist.size();i++)
			{
				
				Object[] data=(Object[])citylist.get(i);
				cityAjax += "<option value=\"" + data[0] + "\">"
						+ data[1] + "</option>";
			}
		}
		out.print(cityAjax);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	public String updateUser()
	{
		Session  session = HibernateSessionFactory.getSession();
		Transaction transaction = null;
	 try 
	 {		Usermaster AddUser= new Usermaster();
		 	System.out.println("UPDATE-USER METHOD EXECUTE PROPARLY..........");
			transaction =session.beginTransaction();
			AddUser = (Usermaster)session.get(Usermaster.class, new Long(userid));
			AddUser.setUsername(username);
			AddUser.setUsertype(usertype);
			AddUser.setUseraddress(useraddress);
			AddUser.setUserpassword(userpassword); 
			AddUser.setUsercontact(usercontact);
			AddUser.setCityid(cityid);
			AddUser.setStateid(stateid);
			if(null!=active)
			{
				AddUser .setActive("Y");
			}
			else
			{
				AddUser .setActive("N");
			}
			
			session.update(AddUser);
			transaction=session.getTransaction();
			transaction.commit();
			System.out.println("UPDATE-USER SUCCESSFULLY.............");
			return data();
			
		} 
	 catch (Exception e) 
	 	{
			System.out.println("Error occure During the Update USER-DATA");
		}
	 
	 
		return null;
	}
	
	
	public String deleteUser()
	{
		Session  session = HibernateSessionFactory.getSession();
		Transaction transaction = null;
		
		
		try 
		{
			session.beginTransaction();
			Usermaster action = new  Usermaster();
			System.out.println("UserIDGet"+userid);
			action=(Usermaster)session.get(Usermaster.class,new Long(userid));
			action.setActive("N");
			session.update(action);
			session.getTransaction().commit();
			return data();
		} 
		catch (Exception e) 
		{
			System.out.println("Error Occure..........");
		}
		return null;
	}
	
	
	
}
