package com.kh.iclass.admin.goods;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AdminGoodsService {

	// 상품 리스트
	public List<Map<String, Object>> goodsList(Map<String, Object> map) throws Exception;

	// 전체 상품 수
	public Integer goodsCount() throws Exception;

	// 상품 등록
	public void insertGoods(Map<String, Object> map, HttpServletRequest request) throws Exception;

	//상품 이미지 정보
	public List<Map<String, Object>> modifyGoodsFormImage(Map<String, Object> map) throws Exception;
	
	// 상품 수정 폼으로 이동
	public List<Map<String, Object>> modifyGoodsForm(Map<String, Object> map) throws Exception;

	// 상품 수정
	public void modifyGoods(Map<String, Object> map, HttpServletRequest request) throws Exception;

	// 상품 삭제
	public void deleteGoods(Map<String, Object> map) throws Exception;
	
	//주문 취소시 상품 수량 복구
	public void addAmount(Map<String, Object> map) throws Exception;

	// 상품 검색(상품 이름)
	public List<Map<String, Object>> adminGoodsSearch0(String isSearch) throws Exception;

	// 상품 검색(상품 번호)
	public List<Map<String, Object>> adminGoodsSearch1(String isSearch) throws Exception;

	// 상품 검색(카테고리 검색)
	public List<Map<String, Object>> adminGoodsSearch2(String isSearch) throws Exception;

	// 상품 검색(판매 활성화 or 비활성화 구분)
	public List<Map<String, Object>> adminGoodsSearch3(String isSearch) throws Exception;

	// 상품 검색(재고가 0인 상품)
	public List<Map<String, Object>> adminGoodsSearch4(String isSearch) throws Exception;

	// 상품 정렬(판매량순)
	public List<Map<String, Object>> adminGoodsSearch5(String isSearch) throws Exception;

	// 상품 정렬(조회순)
	public List<Map<String, Object>> adminGoodsSearch6(String isSearch) throws Exception;
}
