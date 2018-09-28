package com.kh.iclass.notice;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "noticeDAO")
	private NoticeDAO noticeDAO;
	//공지사항 리스트
	@Override
	public Map<String, Object> NoticeList(Map<String, Object> map) throws Exception {
		return noticeDAO.NoticeList(map);
	}
	//공지사항 리스트
	@Override
	public Map<String, Object> NoticeAllList(Map<String, Object> map) throws Exception {
		return noticeDAO.NoticeAllList(map);
	}
	//공지사항의 공지사항 리스트
	@Override
	public List<Map<String, Object>> notice1List(Map<String, Object> map) throws Exception {
		return noticeDAO.notice1List(map);
	}
	//공지사항 상세보기
	@Override
	public Map<String, Object> NoticeDetail(Map<String, Object> map) throws Exception {

		Map<String, Object> resultMap = noticeDAO.NoticeDetail(map);
		return resultMap;
	}
	//공지사항 수정
	@Override
	public void NoticeUpdate(Map<String, Object> map) throws Exception {
		noticeDAO.NoticeUpdate(map);
	}
	//공지사항 삭제
	@Override
	public void NoticeDelete(Map<String, Object> map) throws Exception {
		noticeDAO.NoticeDelete(map);
	}
	//공지사항 쓰기
	@Override
	public void NoticeInsert(Map<String, Object> map) throws Exception {
		noticeDAO.NoticeInsert(map);
	}
	//공지사항 조회수
	@Override
	public void NoticeReadCntUp(Map<String, Object> map) throws Exception {
		noticeDAO.UpdateReadCnt(map);
	}
	//공지사항 검색
	@Override
	public Map<String, Object> NoticeSearchList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.NoticeSearchList(map);
	}
	

}
