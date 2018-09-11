<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>first</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>



</head>
<body>
	<body>
		<table width="70%" align="center" border="0" cellspacing="1" cellpadding="1" class="board_top">
		<br>
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">MYBOARD</font><span><p>ㅣ 내가쓴 게시판의 게시글입니다.</p></span>
				</h6></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td>
			
				<select name="BoardType" id="BoardType" onchange="location.href='/3T/member/myboard?sel='+this.value" style="width: 100px; height: 30px;" class="btn">
					<option value="0" <c:if test="${sel eq 0}">selected</c:if>>QNA</option>
					<option value="1" <c:if test="${sel eq 1}">selected</c:if>>Review</option>
					<option value="2" <c:if test="${sel eq 2 || sel eq null}">selected</c:if>>ALL</option>
				</select>
			</td>
		</tr>
	</table>
	<%-- <table width="100%" align="center" border="0" cellspacing="1"
		cellpadding="1" class="board_top">
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">MY BOARD</font>
				</h6></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
		
		<tr>
			<td>
			
				<select name="BoardType" id="BoardType" onchange="location.href='/3T/member/myboard?sel='+this.value" style="width: 100px; height: 30px;" class="btn">
					<option value="0" <c:if test="${sel eq 0}">selected</c:if>>QNA</option>
					<option value="1" <c:if test="${sel eq 1}">selected</c:if>>Review</option>
					<option value="2" <c:if test="${sel eq 2 || sel eq null}">selected</c:if>>ALL</option>
				</select>
			</td>
		</tr>
		
	</table> --%>
	<table width="80%" border="0" cellspacing="0"
		cellpadding="2" class="board_review4">
		<tr>
			<td valign="middle"><strong>NO</strong>
			<td valign="middle"><strong>SUBJECT</strong>
			<td valign="middle"><strong>NAME</strong>
			<td valign="middle"><strong>DATE</strong>
		</tr>
		<!-- <table class="board_review3" width="80%">
    <colgroup>
        <col width="10%"/>
        <col width="*"/>
        <col width="15%"/>
        <col width="20%"/>
    </colgroup>
    <thead>
        <tr>
            <th scope="col">글번호</th>
            <th scope="col">제목</th>
            <th scope="col">작성자</th>
            <th scope="col">작성일</th>
         
        </tr>
    </thead> -->
    <tbody>
        <c:choose>
            <c:when test="${sel eq 1}">
                <c:forEach items="${list2 }" var="row">
                    <tr>
                        <td>${row.REVIEW_NO }</td>
                         <td>
                                <a href="#this" name="title">${row.TITLE }</a>
                                <input type="hidden" id="REVIEW_NO" value="${row.REVIEW_NO }">
                            </td>
                        <td>${row.MEMBER_ID }</td>
                        <td>${row.REGDATE }</td>
                    </tr>
                </c:forEach>
            </c:when>
            <c:when test="${sel eq 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.QA_NO }</td>
							<td>
								<a href="#this" name="title">${row.TITLE }</a>
								<input type="hidden" id="QA_NO" value="${row.QA_NO }"></td>
							<td>${row.MEMBER_ID }</td>
							<td>${row.REGDATE }</td>
						</tr>
					</c:forEach>
				</c:when>
				 <c:when test="${sel eq 2 || sel eq null}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.QA_NO }</td>
							<td class="title">
								<a href="#this" name="title">${row.TITLE }</a>
								<input type="hidden" id="QA_NO" value="${row.QA_NO }"></td>
							<td>${row.MEMBER_ID }</td>
							<td>${row.REGDATE }</td>
						</tr>
					</c:forEach>
					<c:forEach items="${list2 }" var="row2">
                    <tr>
                        <td>${row2.REVIEW_NO }</td>
                         <td class="title">
                                <a href="#this" name="title">${row2.TITLE }</a>
                                <input type="hidden" id="REVIEW_NO" value="${row2.REVIEW_NO }">
                            </td>
                        <td>${row2.MEMBER_ID }</td>
                        <td>${row2.REGDATE }</td>
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

	<br />
	
	
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