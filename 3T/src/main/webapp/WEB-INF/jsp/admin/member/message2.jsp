<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>first</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>


<style>
.board_review3 {
    width: 80%;
    font-family: FontAwesome;
    valign: middle;
    border-top: 2px solid #ffffff;
    border-bottom: 1px solid #eeeeee;
}


</style>

</head>
<body>
	<table width="100%" align="center" border="0" cellspacing="1"
		cellpadding="1" class="board_top">
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">MESSAGE</font>
				</h6></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
		
		
	</table>
	<table width="80%" border="0" cellspacing="0"
		cellpadding="2" class="board_review3">
		<tr>
			<td valign="middle"><strong>메세지번호</strong>
			<td valign="middle"><strong>내용</strong>
			<td valign="middle"><strong>보낸이</strong>
		</tr>
    <tbody>
        <c:choose>
            <c:when test="${fn:length(list) > 0}">
                <c:forEach items="${list}" var="row">
                    <tr>
                        <td>${row.MESSAGE_NO }</td>
                        <td>${row.CONTENT}</td>
                        <td>
                        	${row.SENDMEMBER}
                        	<form action="/3T/admin/member/messageWrite">
                        		<input type="submit" value="답장">
                       			<input type="hidden" id="SENDMEMBER" name="SENDMEMBER" value="${row.SENDMEMBER}"/>
                        	</form>
                        	
                        </td>
                       
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
	    <br>
		<a href="#this" class="btn" id="write">글쓰기</a>
		
	<br />
	<!-- <form action="/3T/qa/list">
		<select name="SearchNum" id="SearchNum" style="width: 100px; height: 30px;" >
					<option value="MEMBER_ID">작성자</option>
					<option value="TITLE">제목</option>
					<option value="CONTENT">내용</option>
				</select>
				
				<input type="text" name="SearchKeyword" id="SearchKeyword" style="margin-left:15px;width:200px;height:36px;border-radius :5px 5px 5px 5px;"/>            
                                 
            
                                    <input type="submit" value="검색">
                                    </form>
							
	
	<br />
	<a href="#this" class="btn" id="write">글쓰기</a> -->


	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
        $(document).ready(function(){
            $("#write").on("click", function(e){ //글쓰기 버튼
                e.preventDefault();
                fn_openMessageWrite();
            }); 
            
            $("a[name='title']").on("click", function(e){ //제목 
                e.preventDefault();
                fn_openBoardDetail($(this));
            });
            $("#search").on("click", function(e){ //검색 버튼
                e.preventDefault();
                fn_openSearchList();
            }); 
        });
             
        function fn_openSearchList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/qa/list' />");
            comSubmit.addParam("SearchNum", obj.parent().find("#SearchNum").val());
            comSubmit.addParam("SearchKeyword", obj.parent().find("#SearchKeyword").val());
            comSubmit.submit();
        }
        	
            function fn_openMessageWrite(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/mypage/messageWrite' />");
            comSubmit.submit();
        	}
            function fn_openBoardDetail(obj){
                var comSubmit = new ComSubmit();
                comSubmit.setUrl("<c:url value='/qa/detail' />");
                comSubmit.addParam("QA_NO", obj.parent().find("#QA_NO").val());
                comSubmit.submit();
            }
         
        
    </script>
</body>
</html>