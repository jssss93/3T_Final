package com.kh.iclass.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminController {
	
	@RequestMapping(value = "/admin/main")
	public String main() {
		return "main.adminMain";
	}
}
