<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>first</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
</head>
<body>
	<table width="100%" align="center" border="0" cellspacing="1"
		cellpadding="1" class="board_top">
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">QA</font>
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
			<td valign="middle"><strong>STATUS</strong></td>
			<td valign="middle"><strong>DATE</strong></td>
		</tr>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td align="center">${row.QA_NO }</td>

							<td align="center"><img width="50" height="50"
								src="/3T/resources/upload/${row.SAV_NAME.split(',')[0] }" /></td>
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
												</c:if> <a href="#this" name="checkpasswd">${row.TITLE }</a> <input
									type="hidden" id="QA_NO" value="${row.QA_NO }"> <input
									type="hidden" id="GOODS_NO" value="${row.GOODS_NO }"> <img
									width="15" height="20" src="/3T/resources/upload/secret.PNG" /></td>
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

							<c:if test="${row.STATUS ==1 }">
								<td align="center">공개글</td>
							</c:if>
							<c:if test="${row.STATUS ==0 }">
								<td align="center">비밀글</td>
							</c:if>
							<td align="center">${row.REGDATE }</td>
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
	<form action="/3T/qa/writeForm">
		<table class="notice_button">
			<tr>
				<td><input type="submit" class="btn" value="WRITE"></td>
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
		function fn_openPasswdCheck(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qa/passwdCheckForm' />");
			comSubmit.addParam("QA_NO", obj.parent().find("#QA_NO").val());
			comSubmit
					.addParam("GOODS_NO", obj.parent().find("#GOODS_NO").val());
			comSubmit.submit();
		}
	</script>
</body>
</html>