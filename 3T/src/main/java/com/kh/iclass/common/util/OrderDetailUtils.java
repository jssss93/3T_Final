package com.kh.iclass.common.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

@Component("OrderDetailUtils")
public class OrderDetailUtils {

	public static List<Map<String, Object>> parseInsertOrderDetail(Map<String, Object> map, HttpServletRequest request)
			throws Exception {
		
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		Map<String, Object> listMap = null;
		
		String[] selected = request.getParameterValues("selected");
		
		if(selected!=null) {

			Object Order_No = map.get("ORDER_NO");
	
			for (int i = 0; i < selected.length; i++) {
				listMap = new HashMap<String, Object>();
	
				System.out.println("selected" + i + ":" + selected[i]);
				System.out.println("selected[i].split(\",\")[0]:" + selected[i].split(",")[0]);
				System.out.println("selected[i].split(\",\")[1]:" + selected[i].split(",")[1]);
				System.out.println("selected[i].split(\",\")[2]:" + selected[i].split(",")[2]);
				System.out.println("Order_No:" + Order_No);
	
				listMap.put("ATTRIBUTE_NO", selected[i].split(",")[0]);
				listMap.put("GOODS_NO", selected[i].split(",")[1]);
				listMap.put("COUNT", selected[i].split(",")[2]);
				listMap.put("ORDER_NO", Order_No);
	
				list.add(listMap);
	
			}
		}else {
			
		}

		return list;
	}
}
