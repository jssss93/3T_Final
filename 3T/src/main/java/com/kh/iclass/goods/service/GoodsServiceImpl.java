package com.kh.iclass.goods.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.kh.iclass.common.util.FileUtils;
import com.kh.iclass.goods.dao.GoodsDAO;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "fileUtils")
	private FileUtils fileUtils;

	@Resource(name = "goodsDAO")
	private GoodsDAO goodsDAO;

	/*
	 * @Override public List<Map<String, Object>> selectBoardList(Map<String,
	 * Object> map) throws Exception { return goodsDAO.selectBoardList(map);
	 * }
	 */
	// 위에꺼 대신에
	@Override
	public Map<String, Object> goodsList(Map<String, Object> map) throws Exception {
		return goodsDAO.selectGoodsList(map);
	}
	
	@Override
	public void goodsWrite(Map<String, Object> map, HttpServletRequest request) throws Exception {
		goodsDAO.insertGoods(map);
		/*// HttpServletRequest 그 자체로는 Multipart형식의 데이터를 조작하는데 어려움이 있기 때문에,
		// MultipartHttpServletRequset 형식으로 형변환을 하였다.
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		// 이터레이터(Iterator) 패턴을 이용하여 request에 전송된 모든 name을 이용
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		while (iterator.hasNext()) {
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			if (multipartFile.isEmpty() == false) {
				log.debug("------------- file start -------------");
				log.debug("name : " + multipartFile.getName());
				log.debug("filename : " + multipartFile.getOriginalFilename());
				log.debug("size : " + multipartFile.getSize());
				log.debug("-------------- file end --------------\n");
			}
		}*/
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
		for(int i=0, size=list.size(); i<size; i++){
			goodsDAO.insertFile(list.get(i));
		}
	}
	
	@Override
	public Map<String, Object> goodsDetail(Map<String, Object> map) throws Exception {
		// 트랜잭션으로 처리 해야 할 거 같은데?
		goodsDAO.updateReadCnt(map);
		
		Map<String, Object> resultMap = new HashMap<String,Object>();
	    Map<String, Object> tempMap = goodsDAO.selectGoodsDetail(map);
	   
	    resultMap.put("map", tempMap);
	     
	    List<Map<String,Object>> list = goodsDAO.selectFileList(map);
	    
	    resultMap.put("list", list);
	     
	    return resultMap;
	}

	@Override
	public void goodsUpdate(Map<String, Object> map, HttpServletRequest request) throws Exception {
		goodsDAO.updateGoods(map);
		
		goodsDAO.deleteFileList(map);
	    List<Map<String,Object>> list = fileUtils.parseUpdateFileInfo(map, request);
	    Map<String,Object> tempMap = null;
	    for(int i=0, size=list.size(); i<size; i++){
	        tempMap = list.get(i);
	        if(tempMap.get("IS_NEW").equals("Y")){
	            goodsDAO.insertFile(tempMap);
	        }
	        else{
	            goodsDAO.updateFile(tempMap);
	        }
	    }


	}

	@Override
	public void goodsDelete(Map<String, Object> map) throws Exception {
		goodsDAO.deleteGoods(map);
	}

	

}
