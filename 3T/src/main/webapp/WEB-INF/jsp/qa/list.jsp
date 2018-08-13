<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
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
			<td align="left" class="text01 formbar"><h3><font color="#555555">QA</font></h3></td>
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
	<!-- <table width="74%" align="center" border="0" cellspacing="2" cellpadding="2" class="board_no">
	   <colgroup>
			  <col width="10%"/>
              <col width="10%"/>
              <col width="15%"/>
              <col width="20%"/>
              <col width="20%"/>
		</colgroup>
		 <thead>
			<tr>
				<th scope="col">NO</th>
				<th scope="col">TITLE</th>
				<th scope="col">NAME</th>
				<th scope="col">CONTENT</th>
				<th scope="col">DATE</th>

			</tr>
		</thead>
		</table> -->
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.QA_NO }</td>
							<td><c:if test="${row.RE_STEP ==1 }">
												→[답변] &nbsp;
												</c:if><a href="#this" name="title">${row.TITLE }</a>
								<input type="hidden" id="QA_NO" value="${row.QA_NO }"></td>
							<td>${row.MEMBER_ID }</td>
							<td>${row.CONTENT }</td>
							<td>${row.REGDATE }</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="5">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>

		</tbody>
	</table>
	<br />
	<form action="/3T/qa/list">
		<select name="SearchNum" id="SearchNum" style="width: 100px; height: 30px;" >
					<option value="MEMBER_ID">작성자</option>
					<option value="TITLE">제목</option>
					<option value="CONTENT">내용</option>
				</select>
				
				<input type="text" name="SearchKeyword" id="SearchKeyword" style="margin-left:15px;width:200px;height:36px;border-radius :5px 5px 5px 5px;"/>            
                                 
            
                                    <input type="submit" value="검색">
                                    </form>
							
	
	<br />
	<a href="#this" class="btn" id="write">글쓰기</a>


	<%@ include file="/WEB-INF/include/include-body.jspf"%>
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
        	
            function fn_openBoardWrite(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/qa/writeForm' />");
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