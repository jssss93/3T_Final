package com.kh.iclass.common.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

import com.kh.iclass.common.map.CommandMap;

@Component("WishUtils")
public class ParseInsertWish {
	
	//상품 등록수정
		public static List<Map<String, Object>> parseInsertAttribute3(CommandMap commandMap, HttpServletRequest request)
				throws Exception {
				
			List<Map<String, Object>> addwWishList = new ArrayList<Map<String, Object>>();
				
			List<String> AttrList=new ArrayList<>();
			
			String[] attribute_no=(String[]) commandMap.getList("attribute_no[]").get(0);
			
			for(int i=0;i<attribute_no.length;i++) {
				AttrList.add(attribute_no[i]);
			}
			
			
				
			for(int i=0;i<AttrList.size();i++) {
				Map<String, Object> listMap = new HashMap<String, Object>();
					
				listMap.put("GOODS_NO",		commandMap.get("GOODS_NO"));
				listMap.put("MEMBER_ID", 	request.getSession().getAttribute("MEMBER_ID"));
				listMap.put("ATTRIBUTE_NO", AttrList.get(i));
				System.out.println(i +"번째 들어갈 목록,:"+listMap);
				
				addwWishList.add(listMap);
			}

			return addwWishList;
		}

}
