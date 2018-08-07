package com.kh.iclass.common.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartHttpServletRequest;

//@Component 어노테이션을 이용하여 이 객체의 관리를 스프링이 담당하도록 할 계획이다.
@Component("attributeUtils")
public class AttributeUtils {

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
/*
	public List<Map<String, Object>> parseUpdateFileInfo(Map<String, Object> map, HttpServletRequest request)
			throws Exception {
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();

		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		Map<String, Object> listMap = null;

		String goods_no = (String) map.get("GOODS_NO");
		String requestName = null;
		String idx = null;

		while (iterator.hasNext()) {
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			if (multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				storedFileName = CommonUtils.getRandomString() + originalFileExtension;

				multipartFile.transferTo(new File(filePath + storedFileName));

				listMap = new HashMap<String, Object>();
				listMap.put("IS_NEW", "Y");
				listMap.put("GOODS_NO", goods_no);
				listMap.put("FILE_ORG_NAME", originalFileName);
				listMap.put("FILE_SAV_NAME", storedFileName);
				listMap.put("FILE_SIZE", multipartFile.getSize());
				list.add(listMap);
			} else {
				requestName = multipartFile.getName();
				idx = "GOODS_NO_" + requestName.substring(requestName.indexOf("_") + 1);
				if (map.containsKey(idx) == true && map.get(idx) != null) {
					listMap = new HashMap<String, Object>();
					listMap.put("IS_NEW", "N");
					listMap.put("GOODS_NO", map.get(idx));
					list.add(listMap);
				}
			}
		}
		return list;
	}*/

}
