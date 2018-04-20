package com.efive.gstmaster.master;
import java.io.PrintWriter;
import org.hibernate.Session;
import org.json.JSONObject;
import com.efive.gstmaster.hibernate.Gstinmaster;
import com.efive.gstmaster.hibernate.HibernateSessionFactory;

public class GstinAction extends GstinActionBin {
			
				Session session = HibernateSessionFactory.getSession();
				Gstinmaster gstinmaster = new Gstinmaster();
				PrintWriter out =null;
				JSONObject object = new  JSONObject();
		
				
			
		public String gstinMaster()
		{
			//get CountryList
			
			strQuery="SELECT countryid,countryname FROM countrymaster";
			getCountryList=ExecuteQuery(strQuery);
			
			return "gstinmaster";		
		}
			
		public String  addGstinClient()
		{ 	
			
			System.out.println(" Request To Add New Gstin Client .......... ");
			Gstinmaster gstinmaster = new Gstinmaster();
			
				try
				{
					
					if(gstinid!=null && gstinid.longValue()>0)
					{
							
							gstinmaster=(Gstinmaster)session.get(Gstinmaster.class, new Long(gstinid));
							System.out.println("UPDATE METHOD EXECUTE PROPARLY...........");
					
							if(null!=gstinname && gstinname.length()>0)
							{
								gstinmaster.setGstinname(gstinname.trim());
							}
							
							if(null!=statecode)
							{
								gstinmaster.setStatecode(statecode);
							}
							
							if(null!=pannumber && pannumber.length()>0)
							{
								gstinmaster.setPannumber(pannumber.trim());
							}
							
							
							if(null!=digit3 && digit3.length()>0)
							{
								gstinmaster.setDigit3(digit3.trim());
							}
							
							
							if(null!=pincode && pincode.longValue()>0)
							{
								gstinmaster.setPincode(pincode);
							}
							
							if(null!=statecode && null!=pannumber && null!=digit3)
							{
					 			gstinmaster.setGstinno(statecode+""+pannumber.trim()+""+digit3.trim());
							}
							
							if(null!=address1 && address1.length()>0)
							{
								gstinmaster.setAddress1(address1);
							}
							
							
							if(null!=address2 && address2.length()>0)
							{
								gstinmaster.setAddress2(address2);
							}
							
							
							if(null!=address3 && address3.length()>0)
							{
								gstinmaster.setAddress3(address3);
							}
							
							
							if(null!=address1 && null!=address2 && null!=address3)
							{
					 			gstinmaster.setAddress(address1+""+address2+""+address3);
							}
							
							
							if(null!=contryid && contryid.longValue()>0)
							{
								gstinmaster.setContryid(contryid);
							}
							
							
							if(null!=stateid && stateid.longValue()>0)
							{
								gstinmaster.setStateid(stateid);
							}
							
							
							if(null!=cityid && cityid.longValue()>0)
							{
								gstinmaster.setCityid(cityid);
							}
							
							
							
							if(null!=active)
					 		{
								gstinmaster.setActive("Y");
					 		}
							
							
							else
								
					 		{
								gstinmaster.setActive("N");
					 		}
							
							updateDataHibernate(gstinmaster);
							
					 		
					}
					
				else{
					
							System.out.println(" Add New Gstin Client");
							if(null!=gstinname && gstinname.length()>0)
							{
					 			gstinmaster.setGstinname(gstinname.trim());
							}
					 		
					 		if(null!=statecode && null!=pannumber && null!=digit3)
							{
					 			gstinmaster.setGstinno(statecode+""+pannumber.trim()+""+digit3.trim());
							}
					 		
					 		if(null!=address1 && null!=address2 && null!=address3)
							{
					 			gstinmaster.setAddress(address1+""+address2+""+address3);
							}
					 		
					 		if(null!=statecode && statecode.longValue()>0)
							{
					 			gstinmaster.setStatecode(statecode);
							}
					 		
					 		if(null!=pannumber && pannumber.length()>0)
							{
					 			gstinmaster.setPannumber(pannumber);
							}
					 		
					 		if(null!=digit3 && digit3.length()>0)
							{
					 			gstinmaster.setDigit3(digit3);
							}
					 		
					 		if(null!=pincode && pincode.longValue()>0)
							{
					 			gstinmaster.setPincode(pincode);
							}
					 		
					 		if(null!=address1 && address1.length()>0)
							{
					 			gstinmaster.setAddress1(address1);
							}
					 		
					 		if(null!=address2 && address2.length()>0)
							{
					 			gstinmaster.setAddress2(address2);
							}
					 		
					 		if(null!=address3 && address3.length()>0)
							{
					 			gstinmaster.setAddress3(address3);
							}
					 		
					 		if(null!=contryid && contryid.longValue()>0)
							{
					 			gstinmaster.setContryid(contryid);
							}
					 		
					 		if(null!=stateid && stateid.longValue()>0)
							{
					 			gstinmaster.setStateid(stateid);
							}
					 		
					 		if(null!=cityid && cityid.longValue()>0)
							{
					 			gstinmaster.setCityid(cityid);
							}
					 		
					 		if(null!=active)
					 		{
					 			gstinmaster.setActive("Y");
					 		}
					 		else
					 		
					 		{
					 			gstinmaster.setActive("N");
					 		}
					 		
					 		saveDataHibernate(gstinmaster);
					 		
		
				 		return "addgstinclient";
				 		
						}
			 	 } 
			 catch (Exception e) 
			     { 
						System.out.println("ERROR OCCURE DURING ADD NEW CLIENT..!");
						System.out.println(e.getMessage());
						e.printStackTrace();
					}
				return "addgstinclient";
			}
		
		
		
		
		public String updateGstinClient()
		{
			System.out.println("GETID:"+gstinid);
			
			if(gstinid!=null && gstinid.longValue()>0)
			{
					
					gstinmaster=(Gstinmaster)session.get(Gstinmaster.class, new Long(gstinid));
					System.out.println("UPDATE METHOD EXECUTE PROPARLY...........");
			
					if(null!=gstinname && gstinname.length()>0)
					{
						gstinmaster.setGstinname(gstinname.trim());
					}
					
					if(null!=statecode)
					{
						gstinmaster.setStatecode(statecode);
					}
					
					if(null!=pannumber && pannumber.length()>0)
					{
						gstinmaster.setPannumber(pannumber.trim());
					}
					
					
					if(null!=digit3 && digit3.length()>0)
					{
						gstinmaster.setDigit3(digit3.trim());
					}
					
					
					if(null!=pincode && pincode.longValue()>0)
					{
						gstinmaster.setPincode(pincode);
					}
					
					if(null!=statecode && null!=pannumber && null!=digit3)
					{
			 			gstinmaster.setGstinno(statecode+""+pannumber.trim()+""+digit3.trim());
					}
					
					if(null!=address1 && address1.length()>0)
					{
						gstinmaster.setAddress1(address1);
					}
					
					
					if(null!=address2 && address2.length()>0)
					{
						gstinmaster.setAddress2(address2);
					}
					
					
					if(null!=address3 && address3.length()>0)
					{
						gstinmaster.setAddress3(address3);
					}
					
					
					if(null!=address1 && null!=address2 && null!=address3)
					{
			 			gstinmaster.setAddress(address1+""+address2+""+address3);
					}
					
					
					if(null!=contryid && contryid.longValue()>0)
					{
						gstinmaster.setContryid(contryid);
					}
					
					
					if(null!=stateid && stateid.longValue()>0)
					{
						gstinmaster.setStateid(stateid);
					}
					
					
					if(null!=cityid && cityid.longValue()>0)
					{
						gstinmaster.setCityid(cityid);
					}
					
					
					
					if(null!=active)
			 		{
						gstinmaster.setActive("Y");
			 		}
					
					
					else
						
			 		{
						gstinmaster.setActive("N");
			 		}
					
					updateDataHibernate(gstinmaster);
					
			 		
			}
			
			return "updategstinclient";
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
		
		public String getListASC()
		
		{
			try 
			{
				out = response.getWriter();
			System.out.println("GETLIST METHOD EXECUTE");
			//getList
			
				strQuery="SELECT  g.gstinid,g.gstinname,g.gstinno,g.address,g.pincode,c.countryname," +
				"s.statename,city.cityname ,g.active FROM gstinmaster AS g"+ 
				",countrymaster AS c,citymaster AS city,statemaster AS s WHERE " +
				"g.cityid=city.cityid AND g.contryid=c.countryid AND g.stateid=s.stateid  ORDER BY gstinid ASC";
				System.out.println(strQuery);
				getDataList=ExecuteQuery(strQuery);	
				
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
				System.out.println("Error occure During Sorting"+e.getMessage());
				
			}
				
				
				
				
		return "master1";
		}		
		
		
		public String getListDESC() 
		{
			System.out.println("GETLIST METHOD EXECUTE");
			//getList
			
				strQuery="SELECT  g.gstinid,g.gstinname,g.gstinno,g.address,g.pincode,c.countryname," +
				"s.statename,city.cityname ,g.active FROM gstinmaster AS g"+ 
				",countrymaster AS c,citymaster AS city,statemaster AS s WHERE " +
				"g.cityid=city.cityid AND g.contryid=c.countryid AND g.stateid=s.stateid ORDER BY gstinid DESC";
				
				
				
				System.out.println(strQuery);
				getDataList=ExecuteQuery(strQuery);
				
			return "master1";
		}		
		
			
		public String deleteGstinClient()
			{
				
				gstinmaster=(Gstinmaster)session.get(Gstinmaster.class, new Long(gstinid));
				
				try
				{
					System.out.println("GET GSITN ID FOR DELETION:"+gstinid);
					gstinmaster.setActive("N");
					updateDataHibernate(gstinmaster);
					System.out.println("GET GSITN ID FOR DELETION:"+gstinid);
					return "deletegstinclient";
					
				} 
				catch (Exception e) 
				{
					System.out.println(e.getMessage());
					e.printStackTrace();
				}
				return "deletegstinclient";
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
			
			
			
			public String checkDuplication()
			{
				System.out.println("GET GSTION NUMBER IS:"+gstinno);
				
				try 
				{
					out = response.getWriter();
					String scode = request.getParameter("paramscode");
					String pno = request.getParameter("parampanno");
					String d3 = request.getParameter("paramdigit3");
					
			
						
					System.out.println("checkDuplication()");
					strQuery = "SELECT gstinno FROM  gstinmaster WHERE gstinno = '"+scode+pno+d3+"'";
					System.out.println(strQuery);
					checkDupList =ExecuteQuery(strQuery);
					System.out.println("checkDupListSIZE:----"+checkDupList.size());
					if(null!=checkDupList && checkDupList.size()>0)
						
						{
						
							out.print("Y");	
							
						}
					
					else
						{
						
							out.print("N");	
							
						}
			
				}
				catch (Exception e) 
				{
					
							System.out.println("Error Occure.."+e.getMessage());
							e.printStackTrace();
						
				}
				
				return null;
			
		}
			public String getUpdatedata()
			{
				
				try {
					
							strQuery="SELECT countryid,countryname FROM countrymaster";
							getCountryList=ExecuteQuery(strQuery); // get All Country List
							
							System.out.println(gstinid);
							strQuery = "select * from gstinmaster where gstinid="+gstinid+"";
							
							System.out.println(strQuery);
							getUpdateList=ExecuteQuery(strQuery);   //get List .....
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
							active = data[14].toString();
							
							
							System.out.println(active);
							
							strQuery="SELECT g.contryid, city.cityid,s.stateid, c.countryname,s.statename,city.cityname "+
							"FROM gstinmaster AS g"+ 
							",countrymaster AS c,citymaster AS city,statemaster AS s WHERE" +
							" g.cityid=city.cityid AND g.contryid=c.countryid AND g.stateid=s.stateid AND gstinid="+gstinid+"";  
							
							System.out.println(strQuery);
							getCityList=ExecuteQuery(strQuery);	
							
							strQuery="select stateid ,statename from statemaster";
							System.out.println(strQuery);
							getCSCityList1 =ExecuteQuery(strQuery);
							
							strQuery="select cityid ,cityname from citymaster where stateid="+stateid+"";
							System.out.println(strQuery);
							getCSCityList2 =ExecuteQuery(strQuery);
							
							
							
							
							
							//GET LIST CONTRY AND CITY AND STATE
							
							
							return "update";
							
					
					
				} 
				
				catch (Exception e) 
				{	
					System.out.println("Error Occure During The Update Data:--"+e.getMessage());
					e.printStackTrace();
				}
				return "update";
			}

		public String CountryStateCityList()
		{
			try {
				
				out=response.getWriter();
				String scode= request.getParameter("paramscode");
				System.out.println("GETSCODE:"+scode);
				String strQuery2=" select s.stateid,c.cityid From citymaster as c," +
									    " statemaster as s,countrymaster as co where c.stateid=s.stateid " +
									    " and c.countryid = co.countryid  and s.stateid = "+scode+" ";
				
				
				System.out.println(strQuery2);
				
				//String strQuery2="select stateid,statename from statemaster where stateid ="+scode+" ";
				String strQuery1="select stateid,statename from statemaster ";
				strQuery="select  *  from countrymaster";
				String strQuery3="select c.cityid,c.cityname From citymaster as c," +
						"statemaster as s,countrymaster as co where c.stateid=s.stateid " +
						" and c.countryid = co.countryid  and s.stateid = "+scode+" ";
				
				System.out.println("COUNTRY STATE AND CITY:"+strQuery);
				
				getCSCityList = ExecuteQuery(strQuery);               
				getCSCityList1=ExecuteQuery(strQuery1);			 				
				getCSCityList2=ExecuteQuery(strQuery2); 	
				getCSCityList3=ExecuteQuery(strQuery3); 				
				Object[] data1 = (Object[])getCSCityList2.get(0);
				
				String  contryList="",
				stateList="",
				cityList="<option value=\"\">Select City</option>";
				
				/*if(null!=getCSCityList && getCSCityList.size()>0)
				{*/
				
					for(int i =0; i<getCSCityList.size(); i++)	
					
					{
						
						Object[] data=(Object[])getCSCityList.get(i);	
						contryList+="<option selected value="+data[0]+">"+data[1]+"</option>";
					
					}
					
					
					for(int i =0; i<getCSCityList1.size(); i++)	
					{
						
						Object[] data=(Object[])getCSCityList1.get(i);
						
						if(data[0]==data1[0])
						{
							stateList+="<option selected value="+data[0]+">"+data[1]+"</option>";
						}
						else
						{
							stateList+="<option  value="+data[0]+">"+data[1]+"</option>";
						}
					}
					for(int i =0; i<getCSCityList3.size(); i++)	
					{
						
						Object[] data=(Object[])getCSCityList3.get(i);
						
							
							cityList+="<option value="+data[0]+">"+data[1]+"</option>";
						}
						
					
						out.print(contryList+"#"+stateList+"#"+cityList);	
			} 
			
			catch (Exception e)
			{
				System.out.println(e.getMessage());
			}
			
			return null;
			
		}

		
			
}
				
				
			
