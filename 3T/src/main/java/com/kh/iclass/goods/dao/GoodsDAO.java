package com.kh.iclass.goods.dao;

import java.util.Map;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository("goodsDAO")
public class GoodsDAO extends AbstractDAO{

	/*@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("sample.selectBoardList", map);
	}*/
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectGoodsList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("goods.selectList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMainList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("goods.selectGoodsList",map);
	}
	//카테고리 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectGoodsCategory(Map<String, Object> map) throws Exception{
		return selectList("goods.selectGoodsCategory",map);
	}
	//상품정보
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectGoodsDetail(Map<String, Object> map) throws Exception{
		return selectList("goods.selectGoodsDetail",map);
	}
	
	//상품이미지
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectGoodsImage(Map<String, Object> map) throws Exception{
		return selectList("goods.selectGoodsImage",map);
	}
	//조회수증가
	public void updateHitcnt(Map<String, Object> map) throws Exception{
		update("goods.updateHitcnt",map);
	}
		/*
	public void updateReadCnt(Map<String, Object> map) throws Exception{
		update("goods.updateReadCnt", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectGoodsDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("goods.selectDetail", map);
	}
	
	public void updateGoods(Map<String, Object> map) throws Exception{
		update("goods.update", map);
	}

	public void deleteGoods(Map<String, Object> map) throws Exception{
		update("goods.delete", map);
	}*/
		
	public void insertGoods(Map<String, Object> map) throws Exception{
		insert("goods.insert", map);
	}
	public void insertAttribute(Map<String, Object> map) throws Exception{
		insert("goods.insertAttribute", map);
	}
	public void insertFile(Map<String, Object> map) throws Exception{
	    insert("goods.insertUpload", map);
	}
	/*@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("goods.selectFileList", map);
	}
	public void deleteFileList(Map<String, Object> map) throws Exception{
	    update("goods.deleteFileList", map);
	}
	 
	public void updateFile(Map<String, Object> map) throws Exception{
	    update("goods.updateFile", map);
	}*/



	

}
