package com.kh.iclass.qa.service;

import java.util.List;
import java.util.Map;


public interface QaService {
		//QA 리스트
	 	List<Map<String, Object>> QaList(Map<String, Object> map) throws Exception;
	 	//QA 관리자 
	 			List<Map<String, Object>> QaAdminList(Map<String, Object> map) throws Exception;
	 	//QA 쓰기
	 	void QaInsert(Map<String, Object> map) throws Exception;
	 	//QA 상세보기
	 	Map<String, Object> QaDetail(Map<String, Object> map) throws Exception;
	 	Map<String, Object> QaDetail2(Map<String, Object> map) throws Exception;
	 	//QA 수정
		void QaUpdate(Map<String, Object> map) throws Exception;
		//QA 삭제
		void QaDelete(Map<String, Object> map) throws Exception;
		//QA검색
		List<Map<String, Object>> QaSearchList(Map<String, Object>map)throws Exception;
		//QA 답글 쓰기
		void QaReplyInsert(Map<String, Object> map) throws Exception;
		//QA 답글 쓰기 시 RE_STEP 증가
		void QaUpdateReplyStep(Map<String, Object> map) throws Exception;
		//QA 상품 리스트
		List<Map<String, Object>> QaGoodsList(Map<String, Object> map) throws Exception;
		//QA 상품 검색
		List<Map<String, Object>> QaGoodsSearch(Map<String, Object>map)throws Exception;
		//QA 상세보기에 가져올 상품정보
		Map<String, Object> QaGoods(Map<String, Object> map) throws Exception;
		//QA 비밀글 비밀번호 체크
		Map<String, Object> QaPasswdCheck(Map<String, Object> map) throws Exception;
		//QA 답변쓰기후 list로 이동할때 카테고리,비밀글여부,상품번호를 보냄
		Map<String, Object> QaSel(Map<String, Object> map) throws Exception;
		
		//QA 수정
		void QaUpdateRe_level(Map<String, Object> map) throws Exception;
}