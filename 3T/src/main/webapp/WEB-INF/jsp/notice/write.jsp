<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<%@ include file="/WEB-INF/include/include-header.jspf" %>

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
</head>
<body>

<table width="60%" border="0" cellspacing="1" cellpadding="1">

		<tr>
			<td height="30"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h3><font color="#555555">NOTICE WRITE</font></h3></td>
		</tr>

		<tr>
			<td height="30">${map.CONTENT }</td>
		</tr>
	</table>
	
	<form id="frm" action="/notice/write" method="POST">
		<table>
<!-- 			<colgroup>
				<col width="15%">
				<col width="*"/>
			</colgroup> -->
			<tbody>
				<tr>
					<th scope="row">SUBJECT</th>
					<td><input type="text" id="TITLE" name="TITLE" class="wdp_90"></input></td>
				</tr>
				<tr>
					<td colspan="2" class="view_text">
						<textarea rows="20" cols="100" title="내용" id="CONTENT" name="CONTENT" value="${map.CONTENT }"></textarea>
					</td>
				</tr>
			</tbody>
		</table>
		<br>
		
<!-- 		<input type="submit" value="작성하기!!!"> -->
		
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
			comSubmit.setUrl("<c:url value='/notice/list' />");
			comSubmit.submit();
		}
		
		function fn_Write(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/notice/write' />");
			comSubmit.submit();
		}
		<textarea name="content" id="summernote" value=""></textarea>
		$('#summernote').summernote({
			lang: 'ko-KR',
		  	height: 600,                 // set editor height
		  	minHeight: null,             // set minimum height of editor
		 	maxHeight: null,             // set maximum height of editor
		 	focus: true                  // set focus to editable area after initializing summernote
		});
	</script>
</body>
</html>