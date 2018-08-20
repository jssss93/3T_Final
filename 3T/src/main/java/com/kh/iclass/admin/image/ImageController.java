package com.kh.iclass.admin.image;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ImageController {

	@Resource(name = "image")
	ImageService imageService;
	
	@RequestMapping(value="/image/body", method=RequestMethod.POST)
	@ResponseBody
	public String uploadImage(MultipartFile file, HttpServletRequest request) throws Exception {
		return imageService.uploadImage(request, file);
	}
	
	@RequestMapping(value="/image/frontImage", method=RequestMethod.POST)
	public String uploadFrontImage(MultipartFile[] frontImage, HttpServletRequest request) throws Exception {
		if(imageService.uploadFrontImage(request, frontImage).equals("SUCCESS"))
			return "redirect:/admin/frontImageForm";
		else 
			return "error/500";
	}
	
}
