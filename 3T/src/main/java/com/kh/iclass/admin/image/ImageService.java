package com.kh.iclass.admin.image;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface ImageService {

	public String uploadImage(HttpServletRequest request, MultipartFile file) throws Exception;
	
	public String uploadFrontImage(HttpServletRequest request ,MultipartFile[] frontImages) throws Exception;
}
