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
	<h2>메세지</h2>
	<table width="80%" border="0" cellspacing="0" cellpadding="2">

		<tr>
			<td height="30"></td>
		</tr>
		<tr>
			<td align="center" class="text01 formbar"><h2>mymessage</h2></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>


	</table>
	<table class="board_list" width="80%">
		<colgroup>
			<col width="10%" />
			<col width="*" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">메세지번호</th>
				<th scope="col">내용</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list}" var="row">
						<tr>
							<td>${row.MESSAGE_NO }</td>
							<td>${row.CONTENT}</td>
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
	<a class="btn" data-toggle="modal" data-target="#myModal">WRITE</a>
	<a href="/3T/member/mypage" class="btn">MY PAGE</a>

	<div class="modal fade" id="myModal">
		<form action="/3T/member/sendmessage">
			<table width="70%" align="center" border="0" cellspacing="0"
				cellpadding="1" colspan="1" class="board_top2">
				<br>
				<tr>
					<td height="50"></td>
				</tr>
				<tr>
					<td align="left" class="text01 formbar"><h6>
							<font color="#555555">MESSAGE</font>
						</h6></td>
				</tr>

				<tr>
					<td height="50"></td>
				</tr>
			</table>

			<table class="board_view6">
				<colgroup>
					<col width="15%">
					<col width="*" />
				</colgroup>
				<tbody>
					<tr>
						<!-- <th scope="row">메세지내용</th> -->
						<td align="center" colspan="2" class="view_text"><textarea
								rows="16" cols="80" title="내용" id="CONTENT" name="CONTENT"></textarea></td>
					</tr>

				</tbody>
			</table>

			<table class="notice_button2">
				<tr>
					<td>
						<!-- <a href="#this" class="btn" id="write">작성하기</a>  --> <a
						href="#this" class="btn" id="list">목록으로</a> <input class="btn"
						type="submit" value="작성완료">
					</td>
				</tr>
			</table>
		</form>



	</div>

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
            comSubmit.setUrl("<c:url value='/member/messageWrite' />");
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