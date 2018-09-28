package com.kh.iclass.qa;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class QaController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "QaService")
	private QaService QaService;

	//QA 리스트
	@RequestMapping(value = "/qa/list")
	public ModelAndView qaBoardList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("qa/list");
		
		List<Map<String, Object>> list = null;
		//QA 공지사항 리스트
		list = QaService.QA3List(commandMap.getMap());
		
		Map<String, Object> resultMap = null;
		//검색정보가 들어왔을때 리스트와 안들어왔을 때 리스트
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			resultMap = QaService.QaList(commandMap.getMap());
		else
			resultMap = QaService.QaSearchList(commandMap.getMap());
		
		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));

		mv.addObject("list", resultMap.get("result"));
		
		mv.addObject("QA3list", list);

		return mv;
	}
	//QA 쓰기 폼
	@RequestMapping(value = "/qa/writeForm")
	public ModelAndView qaWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("qa/write");

		System.out.println("qaWriteForm : " + commandMap.getMap());
		//상품번호가 안들어왔을 때 폼 그냥 실행 , 상품번호가 들어왔을 때 상품정보 보여줌
		if(commandMap.get("GOODS_NO") == null)	
			mv.addObject("IDX",request.getSession().getAttribute("MEMBER_ID"));
		
		if (commandMap.get("GOODS_NO") != null) {
		Map<String, Object> map = QaService.QaGoods(commandMap.getMap());
		mv.addObject("IDX",request.getSession().getAttribute("MEMBER_ID"));
		
		mv.addObject("list", map);
		return mv;
		}
		
		return mv;
	}
	//QA 쓰기
	@RequestMapping(value = "qa/write")
	public ModelAndView qaInsert(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qa/list");
		System.out.println("qaWrite : " + commandMap.getMap());

		QaService.QaInsert(commandMap.getMap());

		return mv;
	}

	// QA 답변 폼
	@RequestMapping(value = "/qa/writeReplyForm")
	public ModelAndView qaReplyWrite(HttpServletRequest request, CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("qa/writeReply");

		System.out.println("qaUpdateForm : " + commandMap.getMap());

		mv.addObject("REF", commandMap.getMap());

		return mv;
	}

	// QA 답변
	@RequestMapping(value = "/qa/writeReply")
	public ModelAndView qaReplyInsert(HttpServletRequest request, CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qa/list");
		//리스트로 리다이렉트시 보낼 정보
		Map<String, Object> map = QaService.QaSel(commandMap.getMap());
		System.out.println("qaWriteReply : " + commandMap.getMap());

		commandMap.putAll(map);
		commandMap.put("RE_STEP", 1);
		//답변 쓰기
		QaService.QaReplyInsert(commandMap.getMap());

		return mv;
	}
	//QA 상세보기
	@RequestMapping(value = "/qa/detail")
	public ModelAndView qaDetail(CommandMap commandMap , HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("qa/detail");
		commandMap.put("MEMBER_NAME", request.getSession().getAttribute("MEMBER_ID"));
		System.out.println("qaDetail : " + commandMap.getMap());
		//상품정보
		Map<String, Object> map1 = QaService.QaGoods(commandMap.getMap());
		//qa상세보기 정보
		Map<String, Object> map = QaService.QaDetail(commandMap.getMap());
		
		mv.addObject("ID",commandMap.get("MEMBER_NAME"));
		mv.addObject("map", map);
		mv.addObject("list", map1);

		return mv;
	}
	//QA 수정 폼
	@RequestMapping(value = "/qa/updateForm")
	public ModelAndView qaUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("qa/write");
		
		System.out.println("qaUpdateForm : " + commandMap.getMap());
		Map<String, Object> map1 = QaService.QaGoods(commandMap.getMap());
		Map<String, Object> map = QaService.QaDetail(commandMap.getMap());
		mv.addObject("list",map1);
		mv.addObject("map", map);

		return mv;
	}
	//QA 수정
	@RequestMapping(value = "/qa/update")
	public ModelAndView qaUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qa/detail");

		System.out.println("qaUpdate : " + commandMap.getMap());
		QaService.QaUpdate(commandMap.getMap());

		mv.addObject("QA_NO", commandMap.get("QA_NO"));
		mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));
		return mv;
	}
	//QA 삭제
	@RequestMapping(value = "/qa/delete")
	public ModelAndView qaDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qa/list");
		System.out.println("qaDelete : " + commandMap.getMap());

		QaService.QaDelete(commandMap.getMap());
		

		return mv;
	}
	//QA 상품정보 리스트,검색
	@RequestMapping(value = "/qa/qaGoodsSelect")
	public ModelAndView qaGoodsBoardList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/qa/qaGoodsList");

		List<Map<String, Object>> list = null;
		System.out.println("qaGoodsBoardList : " + commandMap.getMap());
		//검색정보가 들어왔을때 리스트와 안들어왔을 때 상품리스트
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			list = QaService.QaGoodsList(commandMap.getMap());
		else
			list = QaService.QaGoodsSearch(commandMap.getMap());

		mv.addObject("list", list);

		return mv;
	}
	//QA 상품 선택시 처리
	@RequestMapping(value = "/qa/qaGoodsSuccess")
	public ModelAndView qaGoodsSuccess(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("qa/qaGoodsListSuccess");

		System.out.println("qaGoodsSuccess : " + commandMap.getMap());

		mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));

		return mv;
	}
	//QA 비밀글 비밀번호 체크 폼
	@RequestMapping(value = "/qa/passwdCheckForm")
	public ModelAndView qaPasswdCheckForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("qa/passwdCheckForm");

		System.out.println("qaPasswdCheckForm : " + commandMap.getMap());

		mv.addObject("list", commandMap.getMap());

		return mv;
	}
	//QA 비밀글 비밀번호 체크 처리
	@RequestMapping(value = "/qa/passwdCheckSuccess")
	public ModelAndView qaPasswdCheck(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qa/detail");

		System.out.println("qaPasswdCheck : " + commandMap.getMap());

		Map<String, Object> map = QaService.QaPasswdCheck(commandMap.getMap());

		mv.addObject("GOODS_NO", map.get("GOODS_NO"));
		mv.addObject("QA_NO", commandMap.get("QA_NO"));
		mv.addObject("list", map);
		return mv;
	}
}