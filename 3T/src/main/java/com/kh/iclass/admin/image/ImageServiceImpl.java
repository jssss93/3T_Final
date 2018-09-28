package com.kh.iclass.admin.image;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service("image")
public class ImageServiceImpl implements ImageService {

	@Override
	public String uploadImage(HttpServletRequest request ,MultipartFile file) throws Exception {
		final String filePath = "C:\\git\\3T_Final\\3T\\src\\main\\webapp\\resources\\upload\\";
		
		UUID uuid = UUID.randomUUID();
		
		String fileName = uuid.toString();
		String uploadPath = request.getSession().getServletContext().getRealPath("/");
		String attachPath = "resources/upload/";
		
		System.out.println("uploadpath:"+uploadPath);
		System.out.println("uploadpath+attachPath:"+uploadPath+attachPath);
		
		//uploadpath:C:\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\3T\
		//uploadpath+attachPath:C:\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\3T\resources/upload/
		
		//서버에 직접 저장?
		File newFile = new File(uploadPath + attachPath + fileName);
		
		try(OutputStream out = new FileOutputStream(newFile)) {
			out.write(file.getBytes());
		} 
		
		return fileName;
	}
	
	@Override
	public String uploadFrontImage(HttpServletRequest request ,MultipartFile[] frontImages) throws Exception {
		String uploadPath = request.getSession().getServletContext().getRealPath("/");
		String attachPath = "3T/resources/img/";
		
		for(int i=1; i<=3; i++) {
			String fileName = "frontImage" + i + ".jpg";
			File newFile = new File(uploadPath + attachPath + fileName);

			try(OutputStream out = new FileOutputStream(newFile)) {
				out.write(frontImages[i-1].getBytes());
			} 
		}
		
		return "SUCCESS";
	}
}
