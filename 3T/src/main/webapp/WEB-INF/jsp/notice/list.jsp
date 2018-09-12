<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>


</head>
<body>
	<table width="70%" align="center" border="0" cellspacing="1"
		cellpadding="1" class="board_top">
		<br>
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">NOTICE</font><span><p>ㅣ 3T의
							공지사항입니다 :) 확인해주세요</p></span>
				</h6></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<table width="80%" border="0" cellspacing="0"
		cellpadding="2" class="board_review3">
		<tr>
			<td valign="middle"><strong>NO</strong>
			</th>
		</tr>
		<tbody>
		<c:forEach items="${notice1list }" var="row1">
			<tr>
				<td><strong>&nbsp;&nbsp;☆</strong></td>
				<td class="subject"><a href="#this" name="title"><strong>${row1.TITLE }</strong></a>
					<input type="hidden" id="NOTICE_NO" value="${row1.NOTICE_NO }">
				</td>
			</tr>
		</c:forEach>
		
		
		
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.NOTICE_NO }</td>
							<td class="subject"><a href="#this" name="title">${row.TITLE }</a>
								<input type="hidden" id="NOTICE_NO" value="${row.NOTICE_NO }">
							</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>

	<c:if test="${not empty paginationInfo}">
		<ui:pagination paginationInfo="${paginationInfo}" type="text"
			jsFunction="fn_search" />
	</c:if>
	<input type="hidden" id="currentPageNo" name="currentPageNo" />

	<input type="hidden" id="NOTICE_NO" name="NOTICE_NO"
		value="${Detail.NOTICE_NO}">
	<br> 
	 <br />
	<form action="/3T/notice/list">
		<select class="btn"name="SearchNum" id="SearchNum"
			style="width: 100px; height: 30px;">
			<option value="TITLE">제목</option>
			<option value="CONTENT">내용</option>
		</select> <input class="btn" type="text" name="SearchKeyword" id="SearchKeyword"
			style="margin-left: 15px; width: 200px; height: 36px; border-radius: 5px 5px 5px 5px;" />
		<input class="btn" type="submit" value="검색">
	</form>


	<br />

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#write").on("click", function(e) { //글쓰기 버튼
				e.preventDefault();
				fn_WriteForm();
			});

			$("a[name='title']").on("click", function(e) { //상세보기
				e.preventDefault();
				fn_Detail($(this));
			});
		});

		function fn_WriteForm() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/notice/write' />");
			comSubmit.submit();
		}

		function fn_Detail(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/notice/detail' />");
			comSubmit.addParam("NOTICE_NO", obj.parent().find("#NOTICE_NO")
					.val());
			comSubmit.submit();
		}
		function fn_search(pageNo) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/notice/list' />");
			comSubmit.addParam("currentPageNo", pageNo);
			comSubmit.submit();
		}
	</script>
</body>
</html>