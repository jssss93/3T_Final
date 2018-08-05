package com.kh.iclass.common.util;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

//@Component 어노테이션을 이용하여 이 객체의 관리를 스프링이 담당하도록 할 계획이다.
@Component("fileUtils")
public class FileUtils {
	private static final String filePath = "C:\\3T\\src\\main\\webapp\\resources\\images\\";

	public List<Map<String, Object>> parseInsertFileInfo(Map<String, Object> map, HttpServletRequest request)
			throws Exception {
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();

		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		// 다중 파일 전송을 위한 ArrayList로 구성
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		Map<String, Object> listMap = null;

		String goods_no = (String) map.get("GOODS_NO");

		// 경로에 폴더가 없으면 폴더생성.
		File file = new File(filePath);
		if (file.exists() == false) {
			file.mkdirs();
		}

		while (iterator.hasNext()) {
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			if (multipartFile.isEmpty() == false) {

				// 파일 정보를 받아서 새로운 이름으로 변경.
				originalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));

				// 32자리 랜덤인 파일 이름 생성.+원본파일 확장자
				storedFileName = CommonUtils.getRandomString() + originalFileExtension;

				// multipartFile.transferTo() 메서드를 이용하여 지정된 경로에 파일을 생성
				file = new File(filePath + storedFileName);
				multipartFile.transferTo(file);

				// 49~54번째 줄은 위에서 만든 정보를 list에 추가하는 부분이다.
				listMap = new HashMap<String, Object>();
				listMap.put("GOODS_NO", goods_no);
				listMap.put("FILE_ORG_NAME", originalFileName);
				listMap.put("FILE_SAV_NAME", storedFileName);
				listMap.put("FILE_SIZE", multipartFile.getSize());
				list.add(listMap);
			}
		}
		return list;
	}

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
	}

}