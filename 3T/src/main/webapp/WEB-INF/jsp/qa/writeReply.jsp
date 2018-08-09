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
				<col width="15%">
				<col width="*"/>
			</colgroup>
			<caption>게시글 작성</caption>
			<tbody>
				<tr>
                    <th scope="row">제목</th>
                    <td>
                    <input type="text" id="TITLE" name="TITLE" class="wdp_90" ></input></td>
                </tr>
                
                <tr>
                    <th scope="row">이름</th>
                    <td><input type="text" id="MEMBER_ID" name="MEMBER_ID" class="wdp_90"></input></td>
                </tr>
                
                <tr>
                    <th scope="row">비밀번호</th>
                    <td><input type="text" id="PASSWD" name="PASSWD" class="wdp_90"></input></td>
                </tr>
                
                
                <tr>
                    <td colspan="2" class="view_text">
                        <textarea rows="20" cols="100" title="내용" id="CONTENT" name="CONTENT"></textarea>
                    </td>
                </tr>
                <tr>
               <%-- <td> <input type="text" id="REF" name="REF" class="wdp_90" value="${REF.QA_NO }"></input></td> --%>
              <td> <input type="hidden" id="REF" name="REF" value="${REF.QA_NO }"></td>
             <%--  <td><input type="hidden" id="QA_NO" name="QA_NO" value="${map.QA_NO }"></td> --%>
                </tr> 
			</tbody>
		</table>
		
		<a href="#this" class="btn" id="write">작성하기</a>
		
		<a href="#this" class="btn" id="list">목록으로</a>
	</form>
	
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_List();
			});
			
			$("#write").on("click", function(e){ //작성하기 버튼
				e.preventDefault();
				fn_Write();
			});
		});
		
		function fn_List(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qa/list' />");
			comSubmit.submit();
		}
		
		function fn_Write(){
			
			var comSubmit = new ComSubmit("frm");	 
			comSubmit.setUrl("<c:url value='/qa/writeReply' />");
			comSubmit.submit();
		}
	</script>
</body>
</html>