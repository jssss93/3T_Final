<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
	<form id="frm">
    <table class="board_view">
        <colgroup>
            <col width="15%"/>
            <col width="35%"/>
            <col width="15%"/>
            <col width="35%"/>
        </colgroup>
        <caption>게시글 상세</caption>
        <tbody>
            <tr>
                <th scope="row">글 번호</th>
                <td>${map.REVIEW_NO }</td>
            </tr>
            <tr>
                <th scope="row">작성자</th>
                <td>${map.MEMBER_ID }</td>
                <th scope="row">작성시간</th>
                <td>${map.REGDATE }</td>
            </tr>
            <tr>
                <th scope="row">제목</th>
                <td colspan="3">${map.TITLE }</td>
            </tr>
            <tr>
                <td colspan="4">${map.CONTENT }</td>
            </tr>
        </tbody>
    </table>
     </form>
    <a href="#this" class="btn" id="list">목록으로</a>
    <a href="#this" class="btn" id="update">수정하기</a>
    <a href="#this" class="btn" id="delete">삭제하기</a>
    
    <tr bgcolor="#777777">
			<td colspan="2" height="1"></td>
		</tr>
		<tr>
			<td colspan="2" height="10"></td>
		</tr>
	
			<form id="frm" action="/3T/review/comment" method="post">
				<table>
					<tbody>
						<tr>
							<th scope="row">이름</th>
							<td><input type="text" id="NAME" name="NAME"
								class="wdp_90"></input></td>
						</tr>
						<tr>
							<th scope="row">비밀번호</th>
							<td><input type="text" id="PASSWD" name="PASSWD"
								class="wdp_90"></input></td>
						</tr>
						<tr>
							<td colspan="2" class="view_text"><textarea rows="3"
									cols="50" title="내용" id="CONTENT" name="CONTENT"></textarea></td>
						</tr>
						<input type="hidden" id="REVIEW_ORIGIN_NO" name="REVIEW_ORIGIN_NO" value="${map.REVIEW_NO }">
						<input type="hidden" id="REVIEW_NO" name="REVIEW_NO" value="${map.REVIEW_NO }">
					</tbody>	
				
	</table>
	<input type="submit" name="리뷰" id="리뷰" value="리뷰작성">
	</form>
	<table>
	 <c:choose>
            <c:when test="${fn:length(list) > 0}">
                <c:forEach items="${list }" var="row">
                    <tr height="10" width="130" align="center">
                        
                      	<form action="/3T/review/commentDelete">
	                        <td>${row.NAME }<br/>
	                        ${row.REGDATE }</td>
	                        <td>${row.CONTENT }<br/><br/></td>
	                        <input type="hidden" id="REVIEW_COMMENT_NO" name="REVIEW_COMMENT_NO" value="${row.REVIEW_COMMENT_NO }">
							<input type="hidden" id="REVIEW_NO" name="REVIEW_NO" value="${map.REVIEW_NO }">
	                        <td><input type="submit" value="삭제"></td>
	                        
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
     
    <%@ include file="/WEB-INF/include/include-body.jspf" %>
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