package com.kh.iclass.goods.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.iclass.common.util.AttributeUtils;
import com.kh.iclass.common.util.FileUtils;
import com.kh.iclass.goods.dao.GoodsDAO;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "fileUtils")
	private FileUtils fileUtils;
	
	@Resource(name = "attributeUtils")
	private AttributeUtils attributeUtils;
	
	@Resource(name = "goodsDAO")
	private GoodsDAO goodsDAO;

	// 위에꺼 대신에
	@Override
	public Map<String, Object> goodsList(Map<String, Object> map) throws Exception {
		return goodsDAO.selectGoodsList(map);
	}
	@Override
	public Map<String, Object> goodsCategoryList(Map<String, Object> map) throws Exception {
		return goodsDAO.selectGoodsCategoryList(map);
	}
	
	@Override
	@Transactional
	public void goodsWrite(Map<String, Object> map, HttpServletRequest request) throws Exception {
		
		goodsDAO.insertGoods(map);
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
		for(int i=0, size=list.size(); i<size; i++){
			goodsDAO.insertFile(list.get(i));
			
		
		}
		
		List<Map<String,Object>> listAttribute = AttributeUtils.parseInsertAttribute(map, request);
		for(int i=0, size=listAttribute.size(); i<size; i++){
			goodsDAO.insertAttribute(listAttribute.get(i));
			
		}
	}
	
	@Override
	public List<Map<String, Object>> selectGoodsDetail(Map<String, Object> map) throws Exception {
		/*goodsDAO.updateHitcnt(map);*/
		return goodsDAO.selectGoodsDetail(map);
	}

	@Override
	public List<Map<String, Object>> selectGoodsImage(Map<String, Object> map) throws Exception {
		return goodsDAO.selectGoodsImage(map);
	}
	
	@Override
	public List<Map<String, Object>> selectMainList(Map<String, Object> map) throws Exception {
		return goodsDAO.selectMainList(map);
	}
	
	@Override
	public List<Map<String, Object>> selectNewList(Map<String, Object> map) throws Exception {
		return goodsDAO.selectNewList(map);
	}
	
	@Override
	public List<Map<String, Object>> selectBestList(Map<String, Object> map) throws Exception {
		return goodsDAO.selectBestList(map);
	}
	
	@Override
	public Map<String, Object> selectGoodsCategory(Map<String, Object> map) throws Exception {
		return goodsDAO.selectGoodsCategory(map);
	}
	@Override
	public List<Map<String, Object>> selectGoodsBestCategory(Map<String, Object> map) throws Exception {
		return goodsDAO.selectGoodsBestCategory(map);
	}

	@Override
	public List<Map<String,Object>> selectRelatedList(Map<String, Object> map) throws Exception {
		return goodsDAO.selectRelatedList(map);
		
	}
	
	@Override
	public void deleteAttribute(Map<String, Object> map) throws Exception {
		goodsDAO.deleteAttribute(map);
	}
	
	@Override
	public void deleteUpload(Map<String, Object> map) throws Exception {
		goodsDAO.deleteUpload(map);
	}
	@Override
	@Transactional
	public void deleteGoods(Map<String, Object> map) throws Exception {
		goodsDAO.deleteGoods(map);
		goodsDAO.deleteA(map);
		goodsDAO.deleteU(map);
	}
	
	// 상품리뷰
	@Override
	public List<Map<String, Object>> selectGoodsDetail1(Map<String, Object> map) throws Exception {
			/* goodsDAO.updateHitcnt(map); */
			return goodsDAO.selectGoodsDetail1(map);
		}

		// 상품QA
	@Override
	public List<Map<String, Object>> selectGoodsDetail2(Map<String, Object> map) throws Exception {
			/* goodsDAO.updateHitcnt(map); */
			return goodsDAO.selectGoodsDetail2(map);
		}

	//조회수 증가
	@Override
	public int updateHitcnt(Map<String, Object> map) throws Exception {
			// TODO Auto-generated method stub
			return goodsDAO.updateHitcnt(map);
		}

	@Override
	@Transactional
	public void updateGoods(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		goodsDAO.updateGoods(map);
		
		List<Map<String,Object>> listAttribute = AttributeUtils.parseInsertAttribute(map, request);
		for(int i=0, size=listAttribute.size(); i<size; i++){
			goodsDAO.insertAttribute(listAttribute.get(i));
			
		}
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
		for(int i=0, size=list.size(); i<size; i++){
			goodsDAO.insertFile(list.get(i));
		}
		
		
	}
	
	@Override
	public Map<String, Object> goodsSearchList(Map<String, Object> map) throws Exception {
	   return goodsDAO.goodsSearchList(map);
	}

	@Override
	public Map<String, Object> goodsAdminSearchList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return goodsDAO.goodsAdminSearchList(map);
	}
	
	
}

