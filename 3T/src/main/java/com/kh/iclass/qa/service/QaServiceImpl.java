package com.kh.iclass.qa.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.kh.iclass.qa.dao.QaDAO;


@Service("QaService")
public class QaServiceImpl implements QaService{
	
	 Logger log = Logger.getLogger(this.getClass());

	 @Resource(name="QaDAO")
	 private QaDAO QaDAO;
	//QA 리스트
	@Override
	public Map<String, Object> QaList(Map<String, Object> map) throws Exception {
	
		return QaDAO.QaList(map);
	}
	//QA 공지사항 리스트
		@Override
		public List<Map<String, Object>> QA3List(Map<String, Object> map) throws Exception {
			
			return QaDAO.QA3List(map);
		}
	//QA 쓰기
	@Override
	public void QaInsert(Map<String, Object> map) throws Exception {
		QaDAO.QaInsert(map);
	}
	//QA 상세보기
	@Override
	public Map<String, Object> QaDetail(Map<String, Object> map) throws Exception {
	
		Map<String, Object> resultMap = QaDAO.QaDetail(map);
		return resultMap;
	}
	@Override
	public Map<String, Object> QaDetail2(Map<String, Object> map) throws Exception {
	
		Map<String, Object> resultMap = QaDAO.QaDetail2(map);
		return resultMap;
	}
	//QA 수정
	@Override
	public void QaUpdate(Map<String, Object> map) throws Exception {
		
		QaDAO.QaUpdate(map);
		
	}
	//QA 삭제
	@Override
	public void QaDelete(Map<String, Object> map) throws Exception {
	
		QaDAO.QaDelete(map);
	}
	//QA 검색
	@Override
	public Map<String, Object> QaSearchList(Map<String, Object> map) throws Exception {
	
		return QaDAO.QaSearchList(map);
	}
	//QA 답글 쓰기
	@Override
	public void QaReplyInsert(Map<String, Object> map) throws Exception {
	
		QaDAO.QaReplyInsert(map);
	}
	//QA 답글 쓰기 시 RE_STEP 증가
	@Override
	public void QaUpdateReplyStep(Map<String, Object> map) throws Exception {
		
		QaDAO.QaReplyStep(map);
	}
	//QA 상품 리스트
	@Override
	public List<Map<String, Object>> QaGoodsList(Map<String, Object> map) throws Exception {
	
		return QaDAO.QaGoodsList(map);
	}
	//QA 상품 검색
	@Override
	public List<Map<String, Object>> QaGoodsSearch(Map<String, Object> map) throws Exception {
		
		return QaDAO.QaGoodsSearch(map);
	}
	//QA 상세보기에 가져올 상품정보
	@Override
	public Map<String, Object> QaGoods(Map<String, Object> map) throws Exception {
	
		Map<String, Object> resultMap = QaDAO.QaGoods(map);
		
		return resultMap;
	}
	//QA 비밀글 비밀번호 체크
	@Override
	public Map<String, Object> QaPasswdCheck(Map<String, Object> map) throws Exception {
	
		Map<String, Object> resultMap = QaDAO.QaPasswdCheck(map);
		
		return resultMap;
	}
	//QA 답변쓰기후 list로 이동할때 카테고리,비밀글여부,상품번호를 보냄
	@Override
	public Map<String, Object> QaSel(Map<String, Object> map) throws Exception {
		
		Map<String, Object> resultMap = QaDAO.QaSel(map);
		return resultMap;
	}
	
	
	@Override
	public void QaUpdateRe_level(Map<String, Object> map) throws Exception {
		
		QaDAO.QaUpdateRe_level(map);
	}
	@Override
	public Map<String, Object> QaAdminList(Map<String, Object> map) throws Exception {
		
		return QaDAO.QaAdminList(map);
	}

}