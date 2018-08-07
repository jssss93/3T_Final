<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>


</head>
<body>
	<h2>상품 게시판 목록</h2>
	<table width="80%" border="0" cellspacing="0" cellpadding="2">

		<tr>
			<td height="30"></td>
		</tr>
		<tr>
			<td align="center" class="text01 formbar"><h2>Goods List.</h2></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>
	
	 <table class="board_list" width="80%">
		<colgroup>
			<col width="10%" />
			<col width="*" />
			<col width="15%" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">NO</th>
				<th scope="col">IMG</th>
				<th scope="col">NAME</th>
				<th scope="col">COLOR</th>
				<th scope="col">SIZE</th>
				<th scope="col">PRICE</th>
				<th scope="col">CATEGORY</th>
				<th scope="col">REGDATE</th>
				<th scope="col">READCNT</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.GOODS_NO }</td>
							<td ><img width="50" height="50"
								src="/3T/resources/upload/${row.GOODS_FILE_SAVNAME.split(',')[0] }" />
							</td>
							<td>
								<%-- <a href="#this" name="title">${row.GOODS_NAME }</a> --%>
								<a href="/3T/goods/detail?GOODS_NO=${row.GOODS_NO }" name="title">${row.GOODS_NAME }</a>
								<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${row.GOODS_NO }">
							</td>
							<td>${row.GOODS_COLOR }</td>
							<td>${row.GOODS_PRICE }</td>
							<td>${row.GOODS_CATEGORY }</td>
							<td>${row.GOODS_TOTALCOUNT }</td>
							<td>${row.GOODS_REGDATE }</td>
							<td>${row.GOODS_READCNT }</td>
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
	<a href="#this" class="btn" id="write">글쓰기</a>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#write").on("click", function(e) { //글쓰기 버튼
				e.preventDefault();
				fn_WriteForm();
			});

			$("a[name='title']").on("click", function(e) { //제목 
				e.preventDefault();
				fn_Detail($(this));
			});
		});

		function fn_WriteForm() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/goods/Writeform' />");
			comSubmit.submit();
		}

		function fn_Detail(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/goods/detail' />");
			comSubmit.addParam("GOODS_NO", obj.parent().find("#GOODS_NO").val());
			comSubmit.submit();
		}
		function fn_search(pageNo) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/goods/list' />");
			comSubmit.addParam("currentPageNo", pageNo);
			comSubmit.submit();
		}
	</script>
</body>
</html>