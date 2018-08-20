<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
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
				src="/3T/resources/upload/${list2.SAV_NAME.split(',')[0] }" /></td>
			<td>${list2.NAME }<br /> KRW&nbsp;${list2.PRICE } <br /> <br />
				<input class="btn" type="button" name="button" value="상품정보 선택 ▶"
				onclick="javascript:open_win_noresizable('reviewGoodsSelect', write)" />&nbsp;
				<input class="btn" type="button" name="button" value="상품 상세보기▶">
				<input type="hidden" id="GOODS_NO" name="GOODS_NO"
				value="${list2.GOODS_NO }" />

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
						<td><a href="#this" class="btn" id="list">목록으로</a> <a
							href="#this" class="btn" id="update">수정하기</a> <a href="#this"
							class="btn" id="delete">삭제하기</a></td>
					</tr>
				</table>
				<br>
				<br>

				<form id="frm" action="/3T/review/comment" method="post">
					<table border="1" align="center" class="board_view2">
						<table>
							<tbody>
								<tr class="board_title">
									<th scope="row">이름</th>
									<td><input type="text" id="NAME" name="NAME"></input></td>
								</tr>
								<tr class="board_title">
									<th scope="row">비밀번호</th>
									<td><input type="text" id="PASSWD" name="PASSWD"></input></td>
								</tr>
								<tr>
									<td colspan="2" class="board_content2"><textarea rows="25"
											cols="248" title="내용" id="CONTENT" name="CONTENT"></textarea></td>
								</tr>
								<input type="hidden" id="REVIEW_ORIGIN_NO"
									name="REVIEW_ORIGIN_NO" value="${map.REVIEW_NO }">
								<input type="hidden" id="REVIEW_NO" name="REVIEW_NO"
									value="${map.REVIEW_NO }">
							</tbody>

						</table>
						<br>
						<table class="notice_button">
							<tr>
								<td><input class="btn" type="submit" name="리뷰" id="리뷰"
									value="리뷰작성"></td>
							</tr>
							</form>
						</table>
						<table class="board_view2">
							<c:choose>
								<c:when test="${fn:length(list) > 0}">
									<c:forEach items="${list }" var="row">
										<tr height="10" width="130" align="center">

											<form action="/3T/review/commentDelete">
												<td>${row.NAME }<br /> ${row.REGDATE }
												</td>
												<td>${row.CONTENT }<br /> <br /></td> <input type="hidden"
													id="REVIEW_COMMENT_NO" name="REVIEW_COMMENT_NO"
													value="${row.REVIEW_COMMENT_NO }"> <input
													type="hidden" id="REVIEW_NO" name="REVIEW_NO"
													value="${map.REVIEW_NO }">
												<td><input class="btn" type="submit" value="삭제"></td>

											</form>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="4">조회된 결과가 없습니다.</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</table>
						<!-- <a href="#this" class="btn" id="writeComment">리뷰작성</a> -->
						<!-- <a href="#this" class="btn" id="deleteComment">리뷰삭제</a> -->

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
								/*  $("#WriteComment").on("click", function(e) { //댓글 작성 버튼
								 e.preventDefault();
								 fn_ReviewInsertComment();
								}); */

							});

							function fn_openBoardList() {
								var comSubmit = new ComSubmit();
								comSubmit
										.setUrl("<c:url value='/review/list' />");
								comSubmit.submit();
							}

							function fn_openBoardUpdate() {
								var REVIEW_NO = "${map.REVIEW_NO}";
								var comSubmit = new ComSubmit();
								comSubmit
										.setUrl("<c:url value='/review/updateForm' />");
								comSubmit.addParam("REVIEW_NO", REVIEW_NO);
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
							/* function fn_ReviewInsertComment(){
							   var comSubmit = new ComSubmit("frm");    
							 comSubmit.setUrl("<c:url value='/review/comment' />");
							 comSubmit.submit();
							} */
						</script>
</body>
</html>