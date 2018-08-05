package com.kh.iclass.notice.service;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.kh.iclass.notice.dao.NoticeDAO;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "noticeDAO")
	private NoticeDAO noticeDAO;

	/*
	 * @Override public List<Map<String, Object>> selectBoardList(Map<String,
	 * Object> map) throws Exception { return sampleDAO.selectBoardList(map);
	 * 
	 * }
	 */
	// 위에꺼 대신에
	@Override
	public Map<String, Object> NoticeList(Map<String, Object> map) throws Exception {
		return noticeDAO.NoticeList(map);
	}

	@Override
	public Map<String, Object> NoticeDetail(Map<String, Object> map) throws Exception {

		Map<String, Object> resultMap = noticeDAO.NoticeDetail(map);
		return resultMap;
	}

	@Override
	public void NoticeUpdate(Map<String, Object> map) throws Exception {
		noticeDAO.NoticeUpdate(map);
	}

	@Override
	public void NoticeDelete(Map<String, Object> map) throws Exception {
		noticeDAO.NoticeDelete(map);
	}

	@Override
	public void NoticeInsert(Map<String, Object> map) throws Exception {
		noticeDAO.NoticeInsert(map);
	}

	@Override
	public void NoticeReadCntUp(Map<String, Object> map) throws Exception {
		// 트랜잭션으로 처리 해야 할 거 같은데?
		noticeDAO.UpdateReadCnt(map);
	}

}
