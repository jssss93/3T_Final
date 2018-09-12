<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>first</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<style>
.board_review3 td {
    font-family: Lato;
    font-size: 11px;
    font-style: normal;
    font-weight: normal;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    vertical-align: middle;
    text-align: center;
    border-top: 1px solid rgb(204, 204, 204);
    padding: 10px 0px;
    border-bottom: 1px solid rgb(204, 204, 204);
}
</style>
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
					<font color="#000000">QA</font><span></span>
				</h6></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>
	<table width="100%" align="center" border="0" cellspacing="0"
		cellpadding="2" class="board_review3">
		<tr>
			<td valign="middle"><strong>NO</strong></td>
			<td valign="middle"><strong>ITEM</strong></td>
			<td valign="middle"><strong>CATEGORY</strong></td>
			<td valign="middle"><strong>SUBJECT</strong></td>
			<td valign="middle"><strong>NAME</strong></td>
			<!-- <td valign="middle"><strong>STATUS</strong></td> -->
			<td valign="middle"><strong>DATE</strong></td>
		</tr>
		<tbody>
			<c:forEach items="${QA3list }" var="row3">
						<tr>
							<td align="center"><strong>&nbsp;&nbsp;☆</strong></td>

							<td></td>
							<td><strong>공지사항</strong></td>
							<td>
								<div>
									<a href="#this" name="title2"><strong>${row3.TITLE }</strong></a>
									<input type="hidden" id="NOTICE_NO" name="NOTICE_NO" value="${row3.NOTICE_NO }">
								</div>
							</td>
							<td align="center"><strong>${row3.MEMBER_ID }</strong></td>
							<!-- <td align="center"></td> -->
							<td align="center"><strong><fmt:formatDate value="${row3.REGDATE }" pattern="yyyy.MM.dd" /></strong></td>
						</tr>
					</c:forEach>
		
		
		
		
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td align="center">${row.QA_NO }</td>

							<td align="center"><img width="50" height="50"
								src="/3T/resources/upload/${row.IMAGE.split(',')[0] }" /></td>
							<td align="center"><c:if test="${row.CATEGORY == 1 }">
								상품문의
							</c:if> <c:if test="${row.CATEGORY == 2 }">
								배송문의
							</c:if> <c:if test="${row.CATEGORY == 3 }">
								입금확인문의
							</c:if> <c:if test="${row.CATEGORY == 4 }">
								기타문의
							</c:if></td>
							<c:if test="${row.STATUS == 0 }">
								<td><div>${row.NAME }</div> <br />
								<c:if test="${row.RE_STEP ==1 }">
												→[답변] &nbsp;
								</c:if> 
									<a href="#this" name="checkpasswd">${row.TITLE }</a> 
									<input type="hidden" id="QA_NO" value="${row.QA_NO }"> 
									<input type="hidden" id="GOODS_NO" value="${row.GOODS_NO }"> 
									<img width="15" height="20" src="/3T/resources/images/secret.PNG" />
								</td>
							</c:if>

							<c:if test="${row.STATUS == 1 }">
								<td><div>${row.NAME }</div> <br /> <c:if
										test="${row.RE_STEP ==1 }">
												→[답변] &nbsp;
												</c:if> <a href="#this" name="title">${row.TITLE }</a> <input
									type="hidden" id="QA_NO" value="${row.QA_NO }"> <input
									type="hidden" id="GOODS_NO" value="${row.GOODS_NO }"></td>
							</c:if>
							<td align="center">${row.MEMBER_ID }</td>

							<%-- <c:if test="${row.STATUS ==1 }">
								<td align="center">공개글</td>
							</c:if>
							<c:if test="${row.STATUS ==0 }">
								<td align="center">비밀글</td>
							</c:if> --%>
							<td align="center"><fmt:formatDate value="${row.REGDATE }" pattern="yyyy.MM.dd" /></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="5">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>

		</tbody>
	</table>
	<br>
	<!-- 상품 디테일에서 GOODS_NO 보내서 쓰기 -->
	<c:if test="${not empty paginationInfo}">
		<ui:pagination paginationInfo="${paginationInfo}" type="text"
			jsFunction="fn_search" />
	</c:if>
	<input type="hidden" id="currentPageNo" name="currentPageNo" />
	<form action="/3T/qa/writeForm">
		<table class="notice_button">
			<tr>
				<td><input type="submit" class="btn btn-default2" value="WRITE"></td>
			</tr>
		</table>
	</form>
	<br />
	<form action="/3T/qa/list">

		<select class="btn" name="SearchNum" id="SearchNum"
			style="width: 100px; height: 30px;">
			<option value="MEMBER_ID">NAME</option>
			<option value="TITLE">TITLE</option>
			<option value="CONTENT">CONTENT</option>
		</select> <input type="text" class="btn" name="SearchKeyword"
			id="SearchKeyword"
			style="margin-left: 15px; width: 200px; height: 36px; border-radius: 5px 5px 5px 5px;" />


		<input class="btn" type="submit" value="검색">
	</form>


	<br />

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#write").on("click", function(e) { //글쓰기 버튼
				e.preventDefault();
				fn_openBoardWrite();
			});

			$("a[name='title']").on("click", function(e) { //제목 
				e.preventDefault();
				fn_openBoardDetail($(this));
			});
			$("a[name='title2']").on("click", function(e) { //제목 
				e.preventDefault();
				fn_openBoardDetail2($(this));
			});
			$("#search").on("click", function(e) { //검색 버튼
				e.preventDefault();
				fn_openSearchList();
			});
			 $("a[name='checkpasswd']").on("click", function(e){ //제목 
	                e.preventDefault();
	                fn_openPasswdCheck($(this));
	            });
		});

		
		function fn_openSearchList() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qa/list' />");
			comSubmit.addParam("SearchNum", obj.parent().find("#SearchNum").val());
			comSubmit.addParam("SearchKeyword", obj.parent().find("#SearchKeyword").val());
			comSubmit.submit();
		}

		function fn_openBoardWrite() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qa/writeForm' />");

			comSubmit.submit();
		}
		function fn_openBoardDetail(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qa/detail' />");
			comSubmit.addParam("QA_NO", obj.parent().find("#QA_NO").val());
			comSubmit
					.addParam("GOODS_NO", obj.parent().find("#GOODS_NO").val());
			comSubmit.submit();
		}
		function fn_openBoardDetail2(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/notice/detail' />");
			comSubmit.addParam("NOTICE_NO", obj.parent().find("#NOTICE_NO").val());
			comSubmit.submit();
		}
		function fn_openPasswdCheck(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qa/passwdCheckForm' />");
			comSubmit.addParam("QA_NO", obj.parent().find("#QA_NO").val());
			comSubmit
					.addParam("GOODS_NO", obj.parent().find("#GOODS_NO").val());
			comSubmit.submit();
		}
		function fn_search(pageNo) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qa/list' />");
			comSubmit.addParam("currentPageNo", pageNo);
			comSubmit.submit();
		}
	</script>
</body>
</html>