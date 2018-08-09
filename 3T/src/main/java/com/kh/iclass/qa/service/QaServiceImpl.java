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
	@Override
	public List<Map<String, Object>> QaList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return QaDAO.QaList(map);
	}
	@Override
	public void QaInsert(Map<String, Object> map) throws Exception {
		QaDAO.QaInsert(map);
	}
	@Override
	public Map<String, Object> QaDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> resultMap = QaDAO.QaDetail(map);
		return resultMap;
	}
	@Override
	public void QaUpdate(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		QaDAO.QaUpdate(map);
		
	}
	@Override
	public void QaDelete(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		QaDAO.QaDelete(map);
	}
	@Override
	public List<Map<String, Object>> QaSearchList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return QaDAO.QaSearchList(map);
	}
	@Override
	public void QaReplyInsert(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		QaDAO.QaReplyInsert(map);
	}
	@Override
	public void QaUpdateReplyStep(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		QaDAO.QaReplyStep(map);
	}
	
	
	
	

	
}