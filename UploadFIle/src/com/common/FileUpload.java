package com.common;
import java.io.FileNotFoundException;
import org.hibernate.Session;
import com.java.myfile.common.OTPGenarate;
import com.java.hibernate.DAO.CrudOparation;

@SuppressWarnings("unused")
public class FileUpload extends FileUploadBin {
	Session session = HibernateSessionFactory.getSession();
	public String demo()
	{
		char[]  a = OTPGenarate.getNewOTP(8);
		System.out.println(a);
		
		return "fileupload";
	}
	public String uploadfile() throws FileNotFoundException
	{
		Photo photo = new Photo();		
		System.out.println(filepath);
		System.out.println("JDJDJDJDJD"+filepathFileName);
		for(int i=0;i<=1; i++){
		photo.setFilepath(uploadFile("user1", filepathFileName, filepath[i], "photo"));
		//saveHibernate(photo);
		CrudOparation.saveHibernateRecord(photo, session);
			}
		//saveHibernate(photo);		
	
		return  demo();
	}

}