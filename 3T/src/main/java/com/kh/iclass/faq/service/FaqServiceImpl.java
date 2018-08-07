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

	@Override
	public Map<String, Object> FaqList(Map<String, Object> map) throws Exception {
		return faqDAO.FaqList(map);
	}

	@Override
	public Map<String, Object> FaqDetail(Map<String, Object> map) throws Exception {

		Map<String, Object> resultMap = faqDAO.FaqDetail(map);
		return resultMap;
	}

	@Override
	public void FaqUpdate(Map<String, Object> map) throws Exception {
		faqDAO.FaqUpdate(map);
	}

	@Override
	public void FaqDelete(Map<String, Object> map) throws Exception {
		faqDAO.FaqDelete(map);
	}

	@Override
	public void FaqInsert(Map<String, Object> map) throws Exception {
		faqDAO.FaqInsert(map);
	}

	/*@Override
	public void FaqReadCntUp(Map<String, Object> map) throws Exception {
		faqDAO.UpdateReadCnt(map);
	}*/

}
