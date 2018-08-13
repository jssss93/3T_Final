<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>first</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
</head>
<body>
<table width="70%" align="center" border="0" cellspacing="1" cellpadding="1" class="board_top">

		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h3><font color="#555555">REVIEW</font></h3></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>
	<table width="65%" align="center" border="0" cellspacing="0" cellpadding="2" class="board_review1">
               <tr>
			   <td valign="middle"><strong>NO</strong></td>
               <td valign="middle"><strong>TITLE</strong></td>
               <td valign="middle"><strong>NAME</strong></td>
               <td valign="middle"><strong>CONTENT</strong></td>
               <td valign="middle"><strong>DATE</strong></td>
			</tr>
<!-- <table width="60%" border="0" cellspacing="0" cellpadding="2" class="board_no">
    <colgroup>
        <col width="10%"/>
        <col width="*"/>
        <col width="15%"/>
        <col width="20%"/>
        <col width="20%"/>
    </colgroup>
    <thead>
        <tr>
            <th scope="col">글번호</th>
            <th scope="col">제목</th>
            <th scope="col">작성자</th>
            <th scope="col">내용</th>
            <th scope="col">작성일</th>
         
        </tr>
    </thead>
    </table> -->
    <tbody>
        <c:choose>
            <c:when test="${fn:length(list) > 0}">
                <c:forEach items="${list }" var="row">
                    <tr>
                        <td>${row.REVIEW_NO }</td>
                         <td>
                                <a href="#this" name="title">${row.TITLE }</a>
                                <input type="hidden" id="REVIEW_NO" value="${row.REVIEW_NO }">
                            </td>
                        <td>${row.MEMBER_ID }</td>
                        <td>${row.CONTENT }</td>
                        <td>${row.REGDATE }</td>
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
 <br/>
    <a href="#this" class="btn" id="write">글쓰기</a>
    
    <%@ include file="/WEB-INF/include/include-body.jspf" %>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#write").on("click", function(e){ //글쓰기 버튼
                e.preventDefault();
                fn_openBoardWrite();
            }); 
            
            $("a[name='title']").on("click", function(e){ //제목 
                e.preventDefault();
                fn_openBoardDetail($(this));
            });
        });
             
       
            function fn_openBoardWrite(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/review/writeForm' />");
            comSubmit.submit();
        }
            function fn_openBoardDetail(obj){
                var comSubmit = new ComSubmit();
                comSubmit.setUrl("<c:url value='/review/detail' />");
                comSubmit.addParam("REVIEW_NO", obj.parent().find("#REVIEW_NO").val());
                comSubmit.submit();
            }
         
        
    </script>
</body>
</html>