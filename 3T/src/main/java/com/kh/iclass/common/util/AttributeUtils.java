package com.kh.iclass.common.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.iclass.common.map.CommandMap;

//@Component 어노테이션을 이용하여 이 객체의 관리를 스프링이 담당하도록 할 계획이다.
@Component("attributeUtils")
public class AttributeUtils {
	
	//상품 등록수정
	public static List<Map<String, Object>> parseInsertAttribute(Map<String, Object> map, HttpServletRequest request)
			throws Exception {
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;

		String[] size = multipartHttpServletRequest.getParameterValues("size");
		String[] color = multipartHttpServletRequest.getParameterValues("color");
		String[] count = multipartHttpServletRequest.getParameterValues("count");
		
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		Map<String, Object> listMap = null;

		Object goods_no = map.get("GOODS_NO");
		
		for(int i=0;i<size.length;i++) {
			listMap = new HashMap<String, Object>();
			listMap.put("GOODS_NO", goods_no);
			listMap.put("GOODS_SIZE", size[i]);
			listMap.put("COLOR", color[i]);
			listMap.put("COUNT", count[i]);
			list.add(listMap);
		}

		return list;
	}
	
	//상품 등록수정
		@SuppressWarnings("unchecked")
		public static List<Map<String, Object>> parseInsertAttribute2(CommandMap commandMap, HttpServletRequest request)
				throws Exception {
			
			List<Map<String, Object>> addCartList = new ArrayList<Map<String, Object>>();
			
			List<String> AttrList=new ArrayList<>();
			List<String> CountList=new ArrayList<>();
			
			CountList= (List<String>) commandMap.getList("ea[]");
			AttrList= (List<String>) commandMap.getList("attribute_no[]");
			
			for(int i=0;i<AttrList.size();i++) {
				Map<String, Object> listMap = new HashMap<String, Object>();
				
				listMap.put("GOODS_NO",		commandMap.get("GOODS_NO"));
				listMap.put("COUNT",		CountList.get(i));
				listMap.put("ATTRIBUTE_NO", AttrList.get(i));
				listMap.put("MEMBER_ID", 	request.getSession().getAttribute("MEMBER_ID"));
				addCartList.add(listMap);
			}

			return addCartList;
		}

}
