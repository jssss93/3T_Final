package com.kh.iclass.admin.goods;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository("adminGoodsDAO")
public class AdminGoodsDAO extends AbstractDAO {

   // 상품 리스트
   @SuppressWarnings("unchecked")
   public List<Map<String, Object>> goodsList(Map<String, Object> map) throws Exception {
      return (List<Map<String, Object>>) selectList("adminGoods.selectAdminGoodsList", map);
   }

   // 전체 상품수
   public int goodsCount() throws Exception {
      return (int) selectOne("adminGoods.countAdminGoods");
   }

   // 상품 등록
   public void insertGoods(Map<String, Object> map) throws Exception {
      insert("adminGoods.insertAdminGoods", map);
   }

   // 이미지 등록
   public void insertGoodsImage(Map<String, Object> map) throws Exception {
      insert("adminGoods.insertAdminGoodsImage", map);
   }

   // 썸네일 이미지 등록
   public void insertGoodsThumnail(Map<String, Object> map) throws Exception {
      update("adminGoods.insertGoodsThumbnail", map);
   }

   // 상품 세분화 등록
   public void insertGoodsKind(Map<String, Object> map) throws Exception {
      insert("adminGoods.insertAdminGoodsKinds", map);
   }

   // 상품 수정 폼으로 이동(데이터 들고감)
   @SuppressWarnings("unchecked")
   public List<Map<String, Object>> modifyGoodsForm(Map<String, Object> map) throws Exception {
      return (List<Map<String, Object>>) selectList("adminGoods.selectOneGoods", map);
   }

   // 상품 이미지 정보
   @SuppressWarnings("unchecked")
   public List<Map<String, Object>> modifyGoodsFormImage(Map<String, Object> map) throws Exception {
      return (List<Map<String, Object>>) selectList("adminGoods.selectOneGoodsImage", map);
   }

   // 상품 수정
   public void modifyGoods(Map<String, Object> map) throws Exception {
      update("adminGoods.modifyGoods", map);
   }

   // 상품 종류 수정
   public void modifyGoodsKind(Map<String, Object> map) throws Exception {
      update("adminGoods.modifyGoodsKinds", map);
   }

   // 상품 이미지 수정
   public void modifyGoodsImage(Map<String, Object> map) throws Exception {
      update("adminGoods.modifyGoodsImage", map);
   }

   // 주문취소시 상품 수량 복구
   public void addAmount(Map<String, Object> map) throws Exception {
      update("adminGoods.addAmount", map);
   }

   // 상품 종류 삭제
   public void deleteGoodsKind(Map<String, Object> map) throws Exception {
      delete("adminGoods.deleteGoodsKinds", map);
   }

   // 상품 이미지 삭제
   public void deleteGoodsImage(Map<String, Object> map) throws Exception {
      delete("adminGoods.deleteGoodsImage", map);
   }

   // 상품 삭제
   public void deleteGoods(Map<String, Object> map) throws Exception {
      delete("adminGoods.deleteAdminGoods", map);
   }

   // 상품 검색(상품 이름)
   @SuppressWarnings("unchecked")
   public List<Map<String, Object>> adminGoodsSearch0(String isSearch) throws Exception {
      return (List<Map<String, Object>>) selectList("adminGoods.adminGoodsSearch0", isSearch);
   }

   // 상품 검색(상품 번호)
   @SuppressWarnings("unchecked")
   public List<Map<String, Object>> adminGoodsSearch1(String isSearch) throws Exception {
      return (List<Map<String, Object>>) selectList("adminGoods.adminGoodsSearch1", isSearch);
   }

   // 상품 검색(카테고리 검색)
   @SuppressWarnings("unchecked")
   public List<Map<String, Object>> adminGoodsSearch2(String isSearch) throws Exception {
      return (List<Map<String, Object>>) selectList("adminGoods.adminGoodsSearch2", isSearch);
   }

   // 상품 검색(판매 활성화 or 비활성화 구분)
   @SuppressWarnings("unchecked")
   public List<Map<String, Object>> adminGoodsSearch3(String isSearch) throws Exception {
      return (List<Map<String, Object>>) selectList("adminGoods.adminGoodsSearch3", isSearch);
   }

   // 상품 검색(재고0 품절상태)
   @SuppressWarnings("unchecked")
   public List<Map<String, Object>> adminGoodsSearch4(String isSearch) throws Exception {
      return (List<Map<String, Object>>) selectList("adminGoods.adminGoodsSearch4");
   }

   // 상품 검색(판매량 많은 순)
   @SuppressWarnings("unchecked")
   public List<Map<String, Object>> adminGoodsSearch5(String isSearch) throws Exception {
      return (List<Map<String, Object>>) selectList("adminGoods.adminGoodsSearch5", isSearch);
   }
   
   // 상품 검색(조회수 많은 순)
   @SuppressWarnings("unchecked")
   public List<Map<String, Object>> adminGoodsSearch6(String isSearch) throws Exception {
      return (List<Map<String, Object>>) selectList("adminGoods.adminGoodsSearch6", isSearch);
   }
}