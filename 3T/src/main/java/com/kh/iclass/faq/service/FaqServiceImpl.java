package com.kh.iclass.faq.service;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.kh.iclass.faq.dao.FaqDAO;

@Service("faqService")
public class FaqServiceImpl implements FaqService {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "faqDAO")
	private FaqDAO faqDAO;
	//faq 리스트
	@Override
	public Map<String, Object> FaqList(Map<String, Object> map) throws Exception {
		return faqDAO.FaqList(map);
	}
	//faq 상세보기
	@Override
	public Map<String, Object> FaqDetail(Map<String, Object> map) throws Exception {

		Map<String, Object> resultMap = faqDAO.FaqDetail(map);
		return resultMap;
	}
	//faq 수정
	@Override
	public void FaqUpdate(Map<String, Object> map) throws Exception {
		faqDAO.FaqUpdate(map);
	}
	//faq 삭제
	@Override
	public void FaqDelete(Map<String, Object> map) throws Exception {
		faqDAO.FaqDelete(map);
	}
	//faq 쓰기
	@Override
	public void FaqInsert(Map<String, Object> map) throws Exception {
		faqDAO.FaqInsert(map);
	}
	//faq 검색
	@Override
	public Map<String, Object> FaqSearchList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return faqDAO.FaqSearchList(map);
	}

	/*@Override
	public void FaqReadCntUp(Map<String, Object> map) throws Exception {
		faqDAO.UpdateReadCnt(map);
	}*/
	
}
