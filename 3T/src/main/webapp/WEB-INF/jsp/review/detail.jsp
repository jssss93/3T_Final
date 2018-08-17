<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<table width="70%" align="center" border="0" cellspacing="0"
	cellpadding="1" colspan="1" class="board_top">
	<br>
	<tr>
		<td height="50"></td>
	</tr>
	<tr>
		<td align="left" class="text01 formbar"><h6>
				<font color="#000000">REVIEW</font><span> ㅣ </span>
			</h6></td>
	</tr>

	<tr>
		<td height="50"></td>
	</tr>
</table>
<body>
	<form id="frm">
		<table border="1" align="center" class="board_view2">
			<colgroup>
				<col width="15%" />
				<col width="35%" />
				<col width="15%" />
				<col width="35%" />
			</colgroup>
			<tbody>
				<tr class="board_title">
					<th scope="row">NO</th>
					<td>${map.REVIEW_NO }</td>
				</tr>
				<tr class="board_title">
					<th scope="row">NAME</th>
					<td>${map.MEMBER_ID }</td>
				</tr>
				<tr class="board_title">
					<th scope="row">DATE</th>
					<td>${map.REGDATE }</td>
				</tr>
				<tr class="board_title">
					<th scope="row">SUBJECT</th>
					<td colspan="3">${map.TITLE }</td>
				</tr>
				<table class="board_content">
					<br>
					<br />
					<tr>
						<td align="center">${map.CONTENT }</td>
					</tr>
				</table>
			</tbody>
		</table>
	</form>
	<br>

	<table class="notice_button">
		<tr>
			<td><a href="#this" class="btn" id="list">LIST</a> <a
				href="#this" class="btn" id="update">UPDATE</a> <a href="#this"
				class="btn" id="delete">DELETE</a></td>
		</tr>
	</table>
	<br>


	<form id="frm" action="/3T/review/comment" method="post">
		<table border="1" align="center" class="board_view2">
			<tbody>
				<tr class="board_title">
					<th scope="row">NAME</th>
					<td><input type="text" id="NAME" name="NAME"></input></td>
				</tr>
				<tr class="board_title">
					<th scope="row">PASSWORD</th>
					<td><input type="text" id="PASSWD" name="PASSWD"></input></td>
				</tr>
				<tr>
					<td colspan="2" class="board_content2"><textarea rows="20"
							cols="145" title="내용" id="CONTENT" name="CONTENT"></textarea></td>
				</tr>
				<input type="hidden" id="REVIEW_ORIGIN_NO" name="REVIEW_ORIGIN_NO"
					value="${map.REVIEW_NO }">
				<input type="hidden" id="REVIEW_NO" name="REVIEW_NO"
					value="${map.REVIEW_NO }">
			</tbody>

		</table>
		<br>
		<table class="notice_button">
			<tr>
				<td><input type="submit" class="btn" name="리뷰" id="리뷰"
					value="RIVEW ANSWER"></td>
			</tr>
		</table>
	</form>
	<table>
		<c:choose>
			<c:when test="${fn:length(list) > 0}">
				<c:forEach items="${list }" var="row">
					<tr height="10" width="130" align="center">

						<form action="/3T/review/commentDelete">
							<td>${row.NAME }<br /> ${row.REGDATE }
							</td>
							<td>${row.CONTENT }<br />
							<br /></td> <input type="hidden" id="REVIEW_COMMENT_NO"
								name="REVIEW_COMMENT_NO" value="${row.REVIEW_COMMENT_NO }">
							<input type="hidden" id="REVIEW_NO" name="REVIEW_NO"
								value="${map.REVIEW_NO }">
					</tr>
	</table>
	<table class="notice_button">
		<tr>
			<td><input type="submit" class="btn" value="DELETE"></td>

			</form>
		</tr>
		</c:forEach>
		</c:when>
		<c:otherwise>
			<tr>
				<td>조회된 결과가 없습니다.</td>
			</tr>
		</c:otherwise>
		</c:choose>
	</table>
	<!-- <a href="#this" class="btn" id="writeComment">리뷰작성</a> -->
	<!-- <a href="#this" class="btn" id="deleteComment">리뷰삭제</a> -->

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#update").on("click", function(e){
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
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/review/list' />");
            comSubmit.submit();
        }
         
        function fn_openBoardUpdate(){
            var REVIEW_NO = "${map.REVIEW_NO}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/review/updateForm' />");
            comSubmit.addParam("REVIEW_NO", REVIEW_NO);
            comSubmit.submit();
        }
        
        function fn_Delete() {
			var REVIEW_NO = "${map.REVIEW_NO}";
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/review/delete' />");
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