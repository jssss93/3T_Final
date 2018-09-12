<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<style>
.han {
  font: 12px 'Hind Madurai','맑은 고딕','Malgun Gothic',AppleGothic,sans-serif;
}
</style>
</head>
<body>
	<table width="70%" align="center" border="0" cellspacing="0"
		cellpadding="1" colspan="1" class="board_top">
		<br>

		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">REVIEW</font>
				</h6></td>
		</tr>
		<tr>
			<td height="50"></td>
		</tr>
	</table>
	<table width="70%" align="center" border="0" cellspacing="0"
		cellpadding="1" colspan="1" height="120" class="board_img">
		<tr>
			<td align="center" width="120"><img width="100" height="100"
				src="/3T/resources/upload/${list2.IMAGE.split(',')[0] }" /></td>
			<td>${list2.NAME }<br /> KRW&nbsp;${list2.PRICE } <br /> <br />
				&nbsp;
				<form action="/3T/goods/detail">
					<input class="btn_qa" type="submit" value="상품 상세보기▶"> <input
						type="hidden" id="GOODS_NO" name="GOODS_NO"
						value="${list2.GOODS_NO }" />
				</form>
			</td>

		</tr>
	</table>
	<body>
	<form id="frm">
		<table border="1" align="center" class="board_view2">
			<tbody>
				<tr class="board_title">
					<th scope="row">제목</th>
					<td colspan="3">${map.TITLE }</td>
				</tr>
				<tr class="board_title">
					<th scope="row">이름</th>
					<td>${map.MEMBER_ID }</td>
				</tr>
				<table class="board_content">
					<br>
					<br />
					<tr>
						<td align="center">${map.CONTENT }</td>
					</tr>
					</tbody>
				</table>
				</form>

				<table class="notice_button">
					<tr>
						<td>
							<a href="#this" class="btn btn-default2" id="list">LIST</a> 
							<c:if test="${map.MEMBER_ID==ID }">
								<a href="#this" class="btn btn-default2" id="update">UPDATE</a> 
								<a href="#this" class="btn btn-default2" id="delete">DELETE</a>
							</c:if>
						</td>
					</tr>
				</table>
				<br>
				<br>

				<form id="frm" action="/3T/review/comment" method="post">
					<c:if test="${MEMBER_ID!=null}">
					<table border="1" align="center" class="board_view2">
						<tbody>
							<tr class="board_title">
								<th scope="row">이름</th>
								<td><input type="text" id="NAME" name="NAME"></input></td>
							</tr>
							<tr class="board_title">
								<th scope="row">비밀번호</th>
								<td><input type="text" id="PASSWD" name="PASSWD"></input></td>
							<tr>
								<td colspan="2" class="board_content2"><textarea rows="5"
										cols="70" title="내용" id="CONTENT" name="CONTENT"></textarea></td>
							</tr>
							</tr>
							<input type="hidden" id="REVIEW_ORIGIN_NO"
								name="REVIEW_ORIGIN_NO" value="${map.REVIEW_NO }">
							<input type="hidden" id="REVIEW_NO" name="REVIEW_NO"
								value="${map.REVIEW_NO }">
							<input type="hidden" id="GOODS_NO" name="GOODS_NO"
								value="${list2.GOODS_NO }" />

						</tbody>

					</table>
					</c:if>
	<br>
	<table class="notice_button">
		<tr>
			<td><input class="btn btn-default2" type="submit" name="리뷰" id="리뷰"
				value="댓글작성"></td>
		</tr>
		</form>
	</table>
	<table class="board_view2">
		<c:choose>
			<c:when test="${fn:length(list) > 0}">
				<c:forEach items="${list }" var="row">
					<tr height="10" width="130" align="center">

						<form action="/3T/review/passwdCheckForm">
							<td>${row.NAME }<br /> ${row.REGDATE }
							</td>
							<td>${row.CONTENT }<br /> <br /></td> 
							<td><input class="btn" type="submit" value="삭제"></td>
							<input type="hidden" id="REVIEW_COMMENT_NO" name="REVIEW_COMMENT_NO" value="${row.REVIEW_COMMENT_NO }"> 
								<input type="hidden" id="REVIEW_NO" name="REVIEW_NO" value="${map.REVIEW_NO }">
								<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${list2.GOODS_NO }" />
						</form>
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td class="han" colspan="4">조회된 결과가 없습니다.</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
							$(document).ready(function() {
								$("#list").on("click", function(e) { //목록으로 버튼
									e.preventDefault();
									fn_openBoardList();
								});

								$("#update").on("click", function(e) {
									e.preventDefault();
									fn_openBoardUpdate();
								});
								$("#delete").on("click", function(e) { //삭제하기 버튼
									e.preventDefault();
									fn_Delete();
								});
					
							});

							function fn_openBoardList() {
								var comSubmit = new ComSubmit();
								comSubmit
										.setUrl("<c:url value='/review/list' />");
								comSubmit.submit();
							}

							function fn_openBoardUpdate() {
								var REVIEW_NO = "${map.REVIEW_NO}";
								var GOODS_NO = "${list2.GOODS_NO}"
								var comSubmit = new ComSubmit();
								comSubmit.setUrl("<c:url value='/review/updateForm' />");
								comSubmit.addParam("REVIEW_NO", REVIEW_NO);
								comSubmit.addParam("GOODS_NO",GOODS_NO);
								comSubmit.submit();
							}

							function fn_Delete() {
								var REVIEW_NO = "${map.REVIEW_NO}";
								var comSubmit = new ComSubmit();
								comSubmit
										.setUrl("<c:url value='/review/delete' />");
								comSubmit.addParam("REVIEW_NO", REVIEW_NO);
								comSubmit.submit();
							}
						
						</script>

</body></html>