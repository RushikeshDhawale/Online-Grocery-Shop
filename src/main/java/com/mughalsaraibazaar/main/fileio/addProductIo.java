package com.mughalsaraibazaar.main.fileio;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.springframework.web.multipart.MultipartFile;

public class addProductIo {

	private String result;
	private FileOutputStream fos;
	private InputStream is;
	
	
	@SuppressWarnings("finally")
	public String writeProduct(String realPath, String finalFileName, MultipartFile f) throws IOException {
		// TODO Auto-generated method stub
		try {
			
			 is = f.getInputStream();
			 byte b[] = new byte[is.available()];
			 is.read(b);
			 
			 fos = new FileOutputStream(realPath);
			 fos.write(b);
			 
			 result = "Saved";
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			result = "Failed";
			
		}
		finally {
			
			 fos.close();
			 is.close();
			return result;
			 
		}
		
	}
}
