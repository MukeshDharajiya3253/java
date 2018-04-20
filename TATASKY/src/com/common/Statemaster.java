package com.common;

import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.SessionMap;
import org.hibernate.SQLQuery;
import org.hibernate.Session;


import com.hibernate.Citymaster;
import com.hibernate.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionContext;
public class Statemaster extends StatemasterBin{
	
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	SessionMap<String ,Integer> map = (SessionMap)ActionContext.getContext().getSession();
	int currentpage =1,listofpage;
	int startindex=0,endindex=10;
	Session session = HibernateSessionFactory.getSession();
	String str ="SELECT s.stateid,c.cityname,s.statename,s.active,c.cityid FROM statemaster AS s INNER JOIN citymaster AS c ON s.stateid=c.stateid WHERE c.active='Y' order by c.cityid";
	
	public String pagemaster()
	{
		return "pagemaster";
	}
public String statelist()
{
	//String strQuery = "select stateid,statename from statemaster;"; 
	String strQuery = "SELECT c.cityid,s.statename,s.stateid FROM statemaster AS s INNER JOIN citymaster AS c ON c.cityid=s.stateid;"; 
	Session session = HibernateSessionFactory.getSession();
	SQLQuery query = session.createSQLQuery(strQuery); 
	DispList1 = query.list();
	System.out.println(DispList.size());
	
	return null;
}



public List<?>  getList(){
	//String strQuery = "select stateid,statename from statemaster;"; 
	String strQuery = "SELECT c.cityid,s.statename,s.stateid FROM statemaster AS s INNER JOIN citymaster AS c ON c.cityid=s.stateid;"; 
	Session session = HibernateSessionFactory.getSession();
	SQLQuery query = session.createSQLQuery(strQuery); 
	DispList1 = query.list();
	System.out.println(DispList.size());
	
	return DispList1;
}

	public String search()
	{
		String str3="SELECT s.stateid,s.statename,c.cityname,s.active FROM statemaster AS s " +
				"" +
				"INNER JOIN citymaster AS c ON s.stateid = c.stateid WHERE s.stateid LIKE '%"+statename.trim()+"%'" +
				"" + " OR s.statename LIKE '%"+statename.trim()+"%' OR s.active LIKE '%"+statename.trim()+"%' OR c.cityname LIKE '%"+statename.trim()+"%' LIMIT "+limit+";";
		
		
		String str4="SELECT s.stateid,s.statename,c.cityname,s.active FROM statemaster AS s " +
				"" +
				"INNER JOIN citymaster AS c ON s.stateid = c.stateid WHERE s.stateid LIKE '%"+statename.trim()+"%'" +
				"" + " OR s.statename LIKE '%"+statename.trim()+"%' AND s.active ='"+active+"' OR c.cityname LIKE '%"+statename.trim()+"%' LIMIT "+limit+";";
		
		String str5="SELECT s.stateid,s.statename,c.cityname,s.active FROM statemaster AS s " +
				"" +
				"INNER JOIN citymaster AS c ON s.stateid = c.stateid WHERE s.stateid LIKE '%"+statename.trim()+"%' AND s.statename LIKE '%"+statename.trim()+"%' " +
				"" +
				"AND c.cityname LIKE '%"+statename.trim()+"%' AND s.active = '"+active+"' LIMIT 10;";
		String str6 ="SELECT s.stateid,c.cityname,s.statename,c.active,c.cityid FROM statemaster AS s INNER JOIN citymaster AS c ON s.stateid = c.stateid WHERE s.stateid LIKE '%"+statename.trim()+"%' OR s.statename LIKE '%"+statename.trim()+"%' OR c.cityname LIKE '%"+statename.trim()+"%' AND s.active = '"+active+"' LIMIT 10;";
		//String strQuery ="SELECT statemaster.stateid,statemaster.statename,citymaster.cityname,statemaster.active FROM statemaster INNER JOIN citymaster ON statemaster.stateid=citymaster.cityid;";
		Session session = HibernateSessionFactory.getSession();
		System.out.println(statename+" "+active+" "+limit);
		System.out.println(str6);
		SQLQuery query = session.createSQLQuery(str6);
		DispList = query.list();
		System.out.println(DispList.size());
		this.statelist();
		return "smaster";
	}
	
	public String deleteall()
	{
		String str1="UPDATE statemaster SET active = 'N';";
		boolean b = executeQ(str1);
		System.out.println(b);
		this.smaster();
		return "smaster";
		
	}
	
	public String delete()
	{
		System.out.println();
		System.out.println("DELETE EXECUTE METHOD PROPARLLY");
		Long a= stateid;
		String a1 =a.toString();
		System.out.println(a);
		System.out.println("DELETE Method Execute.....");
		String str3 = "UPDATE citymaster AS c SET c.active='N' WHERE c.cityid="+cityid+" AND c.stateid ="+stateid+";";
		String str1="UPDATE statemaster SET active = 'N' where stateid ="+stateid+";";
		String str2 ="UPDATE statemaster AS s,citymaster AS c SET s.active = 'N',c.active ='N' WHERE s.stateid="+stateid+" AND c.stateid="+stateid+";";
		System.out.println(str3);
		boolean b = executeQ(str3);
		System.out.println(b);
		return "delete";
		
	}
	public String update()
	{
		
		
		String str4 ="UPDATE citymaster SET cityname='"+cityname+"' ,stateid="+stateid+" WHERE cityid="+cityid+";";

		//String str2 ="UPDATE citymaster AS c ,statemaster AS s SET c.cityname='"+cityname+"' WHERE c.cityid=1";
		System.out.println(str4);
		boolean b = executeQ(str4);
		System.out.println(b);
		return smaster();
		
	}
	public boolean executeQ(String strquey)
	{
		System.out.println("Query Execute Properly");
		try
		{
			
			Session session = HibernateSessionFactory.getSession();
			Connection con =session.connection();
			session.beginTransaction();
			Statement statement =con.createStatement();
			statement.executeUpdate(strquey);
			session.getTransaction().commit();
			con.commit();
			con.close();
			session.close();
			return true;
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			return false;
		}
		
	}
	
	
	
		 public String page()
		   {
			 
			try {
			SQLQuery query =  session.createSQLQuery(str);
			List<?> Listofpage = query.list();
			totalrecord =Listofpage.size();
			calpage=this.calculatepage(totalrecord,currentpage);
			System.out.println("Total Page : =  "+calpage);
				
				
			
			if(totalrecord!=0)
			{
				for(int i =pageno; i<=pageno;)
				{
			
					map.put("pageno1",pageno);
					end = 10 * pageno;
					start  = end -10;
					System.out.println(current);
					String str2="SELECT s.stateid,c.cityname,s.statename,s.active,c.cityid FROM statemaster AS s INNER JOIN citymaster AS c ON s.stateid=c.stateid WHERE c.active='Y' AND s.active='Y' LIMIT "+start+","+end+"";
					SQLQuery query2 =  session.createSQLQuery(str2);
					DispList =	query2.list();
					System.out.println("SIZE OF LIST "+DispList.size());
					this.statelist();
					return "pagemaster";
				} 
			}
		}
			catch (Exception e) {
				
			System.out.println(e.getMessage());				}
								
			return null;
			
		   }	
				
	
		 
		 
// ==============  From ......  ======= // 		 
		 
		 
		 
		 public String smaster(){	
				
				String strQuery1 ="SELECT statemaster.stateid,citymaster.cityname,statemaster.statename,statemaster.active,citymaster.cityid FROM statemaster INNER JOIN citymaster ON statemaster.stateid=citymaster.stateid where statemaster.active='Y' AND citymaster.active='Y';";
				String strQuery="SELECT s.stateid,c.cityname,s.statename,s.active,c.cityid FROM statemaster AS s INNER JOIN citymaster AS c ON s.stateid=c.stateid WHERE c.active='Y' AND s.active='Y' LIMIT 10 " ;	
				Session session = HibernateSessionFactory.getSession();
				SQLQuery query = session.createSQLQuery(strQuery); 
				List ls = query.list();
				calculatepage(ls.size(),currentpage);
				strQuery += " LIMIT 10";
				DispList = query.list();
				System.out.println("SIZE"+DispList.size());
				this.statelist();
				System.out.println(DispList.size());
				
				
				return "smaster";	
		 }
		 public int calculatepage(int totalrecord, int currentPage ){
			 try {
				System.out.println("TOTALRECORD:--:"+totalrecord);
				calpage=totalrecord/10;
				System.out.println("TOTALPAGE CREATED:--:"+calpage);
				int rem =totalrecord % 10;
				System.out.println("REMAINDER:--:"+rem);
				
				if(rem>0){
					
					calpage++; 			
				}
				
				System.out.println("TOTAL PAGE IF REM:--:"+calpage);
				
				// calculate start & end
		
				return calpage;
				
			}catch (Exception e){
					System.out.println(e.getMessage());
					return 0;
			}
		 }	 
		 
		 
		 
		 
		 
		 
		 
}
