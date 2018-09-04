package com.kh.iclass.common.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

import com.kh.iclass.common.map.CommandMap;

@Component("WishNoUtil")
public class WishNoUtil {
	
	public static List<String> parseInsertcart(CommandMap commandMap, HttpServletRequest request)
			throws Exception {
		
		List<String> list = new ArrayList<String>();
		/*Map<String, Object> listMap = null;*/
		
		String[] selected = request.getParameterValues("selected");
		
		if(selected!=null) {

			for (int i = 0; i < selected.length; i++) {
				/*listMap = new HashMap<String, Object>();*/
				
				/*String wish_No;*/
	
				System.out.println("selected" + i + ":" + selected[i]);
				System.out.println("selected[i].split(\",\")[3]:" + selected[i].split(",")[3]);
				
				/*listMap.put("wish_No", selected[i].split(",")[3]);*/
				
				list.add(selected[i].split(",")[3]);
	
				/*list.add(listMap);*/
				
			}
		}else {
			
		}

		return list;
	}

}
