<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
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
                <td>${map.QA_NO }</td>
                
               
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
     
    <a href="#this" class="btn" id="list">목록으로</a>
    <a href="#this" class="btn" id="update">수정하기</a>
    <a href="#this" class="btn" id="delete">삭제하기</a>
    <a href="#this"  name="writeReply">답변달기</a>
    <input type="hidden" id="QA_NO" value="${map.QA_NO }">
     
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
            $("a[name='writeReply']").on("click", function(e) { 
				e.preventDefault();
				fn_WriteReply();
            
			});
		});
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/qa/list' />");
            comSubmit.submit();
        }
         
        function fn_openBoardUpdate(){
            var QA_NO = "${map.QA_NO}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/qa/updateForm' />");
            comSubmit.addParam("QA_NO", QA_NO);
            comSubmit.submit();
        }
        
        function fn_Delete() {  	
			var comSubmit = new ComSubmit();
			comSubmit.addParam("QA_NO", $("#QA_NO").val());
			comSubmit.setUrl("<c:url value='/qa/delete' />");
			comSubmit.submit();
		}
        function fn_WriteReply(){
        	var comSubmit = new ComSubmit();
        	comSubmit.addParam("QA_NO", $("#QA_NO").val());
            comSubmit.setUrl("<c:url value='/qa/writeReplyForm' />");
            comSubmit.submit();
        	}
    </script>
</body>
</html>