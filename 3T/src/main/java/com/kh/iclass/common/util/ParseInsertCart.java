package com.kh.iclass.common.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

import com.kh.iclass.common.map.CommandMap;

//@Component 어노테이션을 이용하여 이 객체의 관리를 스프링이 담당하도록 할 계획이다.
@Component("CartUtils")
public class ParseInsertCart {
	
	//상품 등록수정
	@SuppressWarnings("unchecked")
	public static List<Map<String, Object>> parseInsertAttribute2(CommandMap commandMap, HttpServletRequest request)
			throws Exception {
			
		List<Map<String, Object>> addCartList = new ArrayList<Map<String, Object>>();
			
		List<String> AttrList=new ArrayList<>();
		List<String> CountList=new ArrayList<>();
		
		String[] attribute_no=(String[]) commandMap.getList("attribute_no[]").get(0);
		String[] ea=(String[]) commandMap.getList("ea[]").get(0);
		
		for(int i=0;i<attribute_no.length;i++) {
			AttrList.add(attribute_no[i]);
			CountList.add(ea[i]);
		}
		
		
			
		for(int i=0;i<AttrList.size();i++) {
			Map<String, Object> listMap = new HashMap<String, Object>();
				
			listMap.put("GOODS_NO",		commandMap.get("GOODS_NO"));
			listMap.put("COUNT",		CountList.get(i));
			listMap.put("ATTRIBUTE_NO", AttrList.get(i));
			listMap.put("MEMBER_ID", 	request.getSession().getAttribute("MEMBER_ID"));
			System.out.println(i +"번째 들어갈 목록,:"+listMap);
			
			addCartList.add(listMap);
		}

		return addCartList;
	}

}
