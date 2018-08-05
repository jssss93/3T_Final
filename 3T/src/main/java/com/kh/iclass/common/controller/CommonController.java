package com.kh.iclass.common.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.common.service.CommonService;

@Controller
public class CommonController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "commonService")
	private CommonService commonService;

	@RequestMapping(value = "/common/downloadFile")
	public void downloadFile(CommandMap commandMap, HttpServletResponse response,HttpServletRequest request) throws Exception {

		Map<String, Object> map = commonService.selectFileInfo(commandMap.getMap());
		String storedFileName = (String) map.get("FILE_SAV_NAME");
		String originalFileName = (String) map.get("FILE_ORG_NAME");
		
		//상대경로 설정
		String downloadPath= request.getSession().getServletContext().getRealPath("/resources/images/");
		// 실제로 파일이 저장된 위치에서 해당 첨부파일을 읽어서 byte[] 형태로 변환.
		// commons.io 사용
		byte fileByte[] = FileUtils.readFileToByteArray(new File(downloadPath + storedFileName));

		// 읽어들인 파일정보를 화면에서 다운로드 할 수 있도록 변환 ~5Line
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		//Content-Disposition >> attachment 는 multipart-from/data 로 설정되어있다는뜻 즉 형태를 나타냄
		//fileNmae >> 첨부파일의 이름을 지정해주는 역할을 수행 및 파일명 인코딩 (한글파일명일경우 깨짐 방지)
		response.setHeader("Content-Disposition",
				"attachment; fileName=\"" + URLEncoder.encode(originalFileName, "UTF-8") + "\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.getOutputStream().write(fileByte);

		
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}

}
