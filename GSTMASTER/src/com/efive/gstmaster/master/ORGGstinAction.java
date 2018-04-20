package com.efive.gstmaster.master;
import java.io.PrintWriter;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.efive.gstmaster.hibernate.Gstinmaster;
import com.efive.gstmaster.hibernate.HibernateSessionFactory;



public class ORGGstinAction extends GstinActionBin {
	Session session = HibernateSessionFactory.getSession();
	
	PrintWriter out =null;
	public String gstinMaster()
	{
		//get CountryList
		
		strQuery="SELECT countryid,countryname FROM countrymaster";
		getCountryList=ExecuteQuery(strQuery);
		return "master";
		
	}
	public String  addgstin()
	{ 	
		Session session = HibernateSessionFactory.getSession();
	 	Transaction transaction =null;
	 	Gstinmaster gstinUpdate = new Gstinmaster();
		System.out.println("METHOD EXEXUTE....");
		try {
			
			System.out.println("GETID:"+gstinid);
			
			if(gstinid!=null && gstinid.longValue()>0)
			{
				System.out.println("UPDATE METHOD EXECUTE PROPARLY...........");
				transaction =session.beginTransaction();
				
				gstinUpdate=(Gstinmaster)session.get(Gstinmaster.class,  new Long(gstinid));
				
				/*	if(null!=gstinname && gstinname.length()>0)
					{*/
						gstinUpdate.setGstinname(gstinname.trim());
				/*	}*/
					/*if(null!=statecode && statecode.longValue()>0)
					{*/
						gstinUpdate.setStatecode(statecode);
					/*}
					if(null!=pannumber && pannumber.length()>0)
					{*/
						gstinUpdate.setPannumber(pannumber.trim());
					/*}
					if(null!=digit3 && digit3.length()>0)
					{*/
						gstinUpdate.setDigit3(digit3.trim());
					/*}
					if(null!=pincode && pincode.longValue()>0)
					{*/
						gstinUpdate.setPincode(pincode);
					/*}
					if(null!=address1 && address1.length()>0)
					{*/
						gstinUpdate.setAddress1(address1);
					/*}
					if(null!=address2 && address2.length()>0)
					{*/
						gstinUpdate.setAddress2(address2);
					/*}
					if(null!=address3 && address3.length()>0)
					{*/
						gstinUpdate.setAddress3(address3);
					/*}
					if(null!=contryid && contryid.longValue()>0)
					{*/
						gstinUpdate.setContryid(contryid);
					/*}
					if(null!=stateid && stateid.longValue()>0)
					{*/
						gstinUpdate.setStateid(stateid);
					/*}
					if(null!=cityid && cityid.longValue()>0)
					{*/
						gstinUpdate.setCityid(cityid);
//					}
						gstinUpdate.setAddress(address1+""+address2+""+address3);
						gstinUpdate.setGstinno(statecode+""+pannumber.trim()+""+digit3.trim());
					if(null!=active)
			 		{
						gstinUpdate.setActive("Y");
			 		}
					else
			 		
			 		{
			 			gstinUpdate.setActive("N");
			 		}
					session.saveOrUpdate(gstinUpdate);
					transaction=session.getTransaction();
			 		transaction.commit();
			 		return "updateData1";
			}
			
		else
			
			{
					System.out.println("INSERT DATA INTO DATABASE.......");
			 		transaction =session.beginTransaction();
			 		Gstinmaster addUser = new Gstinmaster();
			 		
			 		if(null!=gstinname && gstinname.length()>0)
					{
			 			addUser.setGstinname(gstinname.trim());
					}
			 		
			 		if(null!=statecode && null!=pannumber && null!=digit3)
					{
			 			addUser.setGstinno(statecode+""+pannumber.trim()+""+digit3.trim());
					}
			 		
			 		if(null!=address1 && null!=address2 && null!=address3)
					{
			 			addUser.setAddress(address1+""+address2+""+address3);
					}
			 		
			 		if(null!=statecode && statecode.longValue()>0)
					{
			 			addUser.setStatecode(statecode);
					}
			 		
			 		if(null!=pannumber && pannumber.length()>0)
					{
			 			addUser.setPannumber(pannumber);
					}
			 		
			 		if(null!=digit3 && digit3.length()>0)
					{
			 			addUser.setDigit3(digit3);
					}
			 		
			 		if(null!=pincode && pincode.longValue()>0)
					{
			 			addUser.setPincode(pincode);
					}
			 		
			 		if(null!=address1 && address1.length()>0)
					{
			 			addUser.setAddress1(address1);
					}
			 		
			 		if(null!=address2 && address2.length()>0)
					{
			 			addUser.setAddress2(address2);
					}
			 		
			 		if(null!=address3 && address3.length()>0)
					{
			 			addUser.setAddress3(address3);
					}
			 		
			 		if(null!=contryid && contryid.longValue()>0)
					{
			 			addUser.setContryid(contryid);
					}
			 		
			 		if(null!=stateid && stateid.longValue()>0)
					{
			 			addUser.setStateid(stateid);
					}
			 		
			 		if(null!=cityid && cityid.longValue()>0)
					{
			 			addUser.setCityid(cityid);
					}
			 		
			 		if(null!=active)
			 		{
			 			addUser.setActive("Y");
			 		}
			 		else
			 		
			 		{
			 			addUser.setActive("N");
			 		}
		 	
			 		session.save(addUser);
			 		transaction=session.getTransaction();
			 		transaction.commit();
			}
		 		return "adduser";
	 	 } 
	 catch (Exception e) 
	     { 
			if(null!=transaction)
			{
				transaction.rollback();
				System.out.println("ERROR OCCURE DURING.......... INSERT OR UPDATE DATA.........!");
			}
	     }
	 	finally{session.close();
	 	
	 	}
		
		return null;
	}
	
	public String getList()
	{
		System.out.println("GETLIST METHOD EXECUTE");
		//getList
			strQuery="SELECT  g.gstinid,g.gstinname,g.gstinno,g.address,g.pincode,c.countryname," +
			"s.statename,city.cityname ,g.active FROM gstinmaster AS g"+ 
			",countrymaster AS c,citymaster AS city,statemaster AS s WHERE " +
			"g.cityid=city.cityid AND g.contryid=c.countryid AND g.stateid=s.stateid";
			getDataList=ExecuteQuery(strQuery);
			
		return "master1";
	}
	
	public String deleteData()
	{	
		System.out.println("Delete Method Execute.........");
		Session session = HibernateSessionFactory.getSession();
		try {
			
			session.beginTransaction();
			Gstinmaster update = new Gstinmaster();
			update=(Gstinmaster)session.get(Gstinmaster.class, new Long(gstinid));
			
		if(null!=gstinid)
		{
			update.setActive("N");
			
		}
			session.update(update);
			session.getTransaction().commit();
			session.close();
			return "updateData";
		} 
		catch (Exception e) 
		{
				System.out.println("Error Occure During The Update Data:--"+e.getMessage());
		}
		finally
		{
			session.close();
		}
		
		return "updateData";
	}
	public String stateList() 
	{
		//GET STATELIST AJAX
		try {
			out =response.getWriter();
			String countryid=request.getParameter("paramcid");
			strQuery="SELECT stateid ,statename FROM statemaster WHERE countryid = "+countryid+"";
			System.out.println("GETSTATE:"+strQuery);
			getStateList=ExecuteQuery(strQuery);
			String stateList="<option value=\"\">Select State</option>";
			if(null!=getStateList && getStateList.size()>0)	
			{	
				for(int i =0;i<getStateList.size(); i++)
				{
				
					Object[] data=(Object[])getStateList.get(i);
					stateList += "<option value=\"" + data[0] + "\">"
							+ data[1] + "</option>";
				
				}
			}
			out.print(stateList);
		
			
		} 
		catch (Exception e) {
			
			System.out.println("ERROR"+e.getMessage());
		}
		
	
		return null;
	}
	
	public String cityList()
	{
		//GET CITYLIST AJAX
		try {
			
			out=response.getWriter();
			String stateid= request.getParameter("paramstateid");
			strQuery="SELECT cityid ,cityname FROM citymaster WHERE stateid ="+stateid+"";
			System.out.println("GETSTATE:"+strQuery);
			getCityList=ExecuteQuery(strQuery);
			String citylist ="<option value=\"\">Select City</option>";
			if(null!=getCityList && getCityList.size()>0)
			{
				for(int i =0; i<getCityList.size(); i++)	
				{
					Object[] data=(Object[])getCityList.get(i);
					citylist += "<option value=\"" + data[0] + "\">"
							+ data[1] + "</option>";
				}
					out.print(citylist);			
			}
		} 
		
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return null;
	}
	public String getUpdatedata()
	{
		
		
		try {
			
			strQuery="SELECT countryid,countryname FROM countrymaster";
			getCountryList=ExecuteQuery(strQuery);
			System.out.println(gstinid);
			strQuery = "select * from gstinmaster where gstinid="+gstinid+"";
			System.out.println(strQuery);
			getUpdateList=ExecuteQuery(strQuery);
			System.out.println("size:::::------"+getUpdateList.size());
			Object[] data = (Object[])getUpdateList.get(0);
			String a1 = data[0].toString();
			gstinid=Long.parseLong(a1);
			gstinname=data[2].toString();
			statecode=(Integer)data[4];
			pannumber=data[5].toString();
			digit3 = data[6].toString();
			String a2 = data[7].toString();
			pincode=Long.parseLong(a2);
			address1=data[8].toString();
			address2=data[9].toString();
			address3=data[10].toString();
			contryid=(Integer)data[11];
			stateid=(Integer)data[12];
			cityid=(Integer)data[13];
			System.out.println(data[2].toString());
			strQuery="SELECT g.contryid, city.cityid,s.stateid, c.countryname,s.statename,city.cityname "+
			"FROM gstinmaster AS g"+ 
			",countrymaster AS c,citymaster AS city,statemaster AS s WHERE" +
			" g.cityid=city.cityid AND g.contryid=c.countryid AND g.stateid=s.stateid AND gstinid="+gstinid+"";  
			System.out.println(strQuery);
			getCityList=ExecuteQuery(strQuery);
			
			
		} 
		
		catch (Exception e) 
		{	
			System.out.println("Error Occure During The Update Data:--"+e.getMessage());
		}
		return "update";
	}
	public String updatedata()
	{
		Session session =HibernateSessionFactory.getSession();
		Gstinmaster gstinUpdate = new Gstinmaster();
		Transaction transaction=null;
		try {
			System.out.println("");
			transaction= session.beginTransaction();
			gstinUpdate=(Gstinmaster)session.get(Gstinmaster.class,  new Long(gstinid));
			gstinUpdate.setGstinname(gstinname);
			gstinUpdate.setStatecode(statecode);
			gstinUpdate.setPannumber(pannumber);
			gstinUpdate.setDigit3(digit3);
			gstinUpdate.setPincode(pincode);
			gstinUpdate.setAddress1(address1);
			gstinUpdate.setAddress2(address2);
			gstinUpdate.setAddress3(address3);
			gstinUpdate.setContryid(contryid);
			gstinUpdate.setStateid(stateid);
			gstinUpdate.setCityid(cityid);
			gstinUpdate.setActive("Y");
			session.update(gstinUpdate);
			session.getTransaction().commit();
			
			return "updateData";
			
		} catch (Exception e) {
			if(null!=transaction)
			{
				transaction.rollback();
				System.out.println("Error Occure During The UPDATEDATA......");
				
			} 
		}
		return "updateData";
	}
	}
		
		
	
