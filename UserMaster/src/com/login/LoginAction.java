package com.login;

import javax.servlet.http.HttpSession;

public class LoginAction extends LoginActionBin {
	
public String data()
{
	return "input";
}
public String logincheck()
{
	try 
	 {	
	 HttpSession httpSession =request.getSession(true);
	 
	 System.out.println("LOGIN METHOD EXECUTE PROPARLITY............");
	// String loginQuery ="select usertype,userloginname,userpassword from usermaster where userloginname='"+userloginname+"' AND userpassword='"+userpassword+"'";
	 
	 String loginQuery= "SELECT usertype,userloginname,userpassword FROM usermaster WHERE userloginname LIKE BINARY '%"+userloginname+"%' AND userpassword LIKE BINARY '%"+userpassword+"%'";
	 
	 
	 
	 System.out.println(loginQuery);
	 
	 loginList =ExecuteQuery(loginQuery);
	 
	 System.out.println("LOGIN SIZE:--:"+loginList.size());
	 
	 if(null!=loginList && loginList.size()>0)
		 
	 {
		 System.out.println("LOGIN SIZE:--:"+loginList.size());
		 Object[] data = (Object[]) loginList.get(0);
		 
		 if("U".equals(data[0].toString()))
		 {
			 httpSession.setAttribute("USER", userloginname);
			 System.out.println("USER LOGIN EXECUTE.....");
			 return "loginaction";
		 }
		 else if("A".equals(data[0].toString()))
		 {
			 httpSession.setAttribute("USER", userloginname);
			 System.out.println("ADMIN LOGIN EXECUTE.....");
			 return "loginaction";
		 }
		 
		 else
		 {
			 return data();
		 }
		 
	 }
	 else
	 {
		 	return data();
	 }
} 
catch (Exception e) {	
	
	System.out.println(e.getMessage());
}

	return null;
}


public String lout()
{
	request.getSession(true).invalidate();
	return data();
}



}
