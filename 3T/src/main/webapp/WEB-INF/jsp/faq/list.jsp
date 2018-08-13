<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>


</head>
<body>
	<table width="70%" align="center" border="0" cellspacing="1" cellpadding="1" class="board_top">

		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h3><font color="#555555">FAQ</font></h3></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>
	
	<table width="74%" align="center" border="0" cellspacing="0" cellpadding="2" class="board_no">
               <tr align="center">
				<td width="50"><h4>NO</h4></td>
			    <td width="370"><strong></strong></td>
				</tr>			
</table>

	<table width="80%" align="center" border="0" cellspacing="0" cellpadding="2" class="board_list">
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.FAQ_NO }</td>
							<td class="title"><a href="#this" name="title">${row.TITLE }</a> <input
								type="hidden" id="FAQ_NO" value="${row.FAQ_NO }">
							</td>
							<td align=right>${row.MEMBER_ID }</td>

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


<table class="notice_button">
	<br />
	<tr>
	<td><a href="write" class="btn" >작성</a></tr>
	</tr>
	</table>
	

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
			comSubmit.setUrl("<c:url value='/faq/write' />");
			comSubmit.submit();
		}

		function fn_Detail(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/detail' />");
			comSubmit.addParam("FAQ_NO", obj.parent().find("#FAQ_NO")
					.val());
			comSubmit.submit();
		}
		function fn_search(pageNo) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/list' />");
			comSubmit.addParam("currentPageNo", pageNo);
			comSubmit.submit();
		}
	</script>
</body>
</html>