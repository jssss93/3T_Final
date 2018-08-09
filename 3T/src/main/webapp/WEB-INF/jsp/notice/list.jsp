<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>


</head>
<body>
	<table width="60%" border="0" cellspacing="0" cellpadding="1" colspan="1" class="board_top">

		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h3><font color="#555555">NOTICE</font></h3><p>3T의 공지사항입니다 :) 확인해주세요!</p></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>

<table width="60%" border="0" cellspacing="0" cellpadding="2" class="board_no">
               <tr align="center">
				<td width="50"><h4>NO</h4></td>
			    <td width="370"><strong></strong></td>
				</tr>			
</table>
	<table width="60%" border="0" cellspacing="0" cellpadding="2" class="board_list">
 		<!-- <colgroup>
			<col width="10%" />
			<col width="*" />
			<col width="15%" />
			<col width="20%" />
		</colgroup> -->
<!-- 		<thead> -->
<!-- 				<tr> -->
<!-- 				<th scope="col">NOTICE_NO</th> -->
<!-- 				<th scope="col">TITLE</th> -->
<!-- 				<th scope="col">MEMBER_ID</th> -->
<!-- 				<tr bgcolor="#777777"> -->
<!-- 			<td height="1" colspan="3"></td> -->
<!-- 			</tr> -->
<!-- 		</thead> -->
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.NOTICE_NO }</td>							
							<td><a href="#this" name="title">${row.TITLE }</a> <input
								type="hidden" id="NOTICE_NO" value="${row.NOTICE_NO }">
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


	<br />
	 <a href="write" class="btn" >작성</a>

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