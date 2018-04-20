package com.common;

import java.io.File;
import java.io.FileInputStream;

public class ORGFileUploadBin extends ORGDAO {
	
	 public Integer id;
     File filepath ;
     String filepathFileName;
     public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public File getFilepath() {
		return filepath;
	}
	public void setFilepath(File filepath) {
		this.filepath = filepath;
	}
	public String getFilepathFileName() {
		return filepathFileName;
	}
	public void setFilepathFileName(String filepathFileName) {
		this.filepathFileName = filepathFileName;
	}
	
	
	
     

}
