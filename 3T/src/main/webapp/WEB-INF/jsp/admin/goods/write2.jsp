<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<form id="frm" action="/goods/write" method="POST" enctype="multipart/form-data">

		<table class="board_view">
			<colgroup>
				<col width="15%">
				<col width="*" />
			</colgroup>
			<caption>상품 작성</caption>
			<tbody>
				<tr>
					<th scope="row">상품명</th>
					<td><input type="text" name="NAME" id="NAME"
						class="wdp_90"></input></td>
				</tr>
				<tr>
					<th scope="row">카테고리</th>
					<td><input type="text" name="CATEGORY"
						class="wdp_90"></input></td>
				</tr>
				<tr>
					<th scope="row">상품가격</th>
					<td><input type="text" name="PRICE"
						class="wdp_90"></input></td>
				</tr>
				<tr>
					<th scope="row">관련상품번호</th>
					<td><input type="text" name="RELATED"
						class="wdp_90"></input></td>
				</tr>
				<tr>
					<th scope="row">상품 키워드</th>
					<td><input type="text" name="KEYWORD"
						class="wdp_90" value="ex) 바지,반바지,긴바지,팬츠,하의,"></input></td>
				</tr>
				
				<tr>
					<td colspan="2" class="view_text"><textarea rows="20"
							cols="100" title="내용" name="CONTENT"></textarea>
					</td>
				</tr>
				
				
			</tbody>
		</table>
		
		<!-- 상품 파일 입력 -->
		<div id="fileDiv">
			<p>
				<input type="file"  name="file_0"><a href="#this" class="btn" id="deleteF" name="deleteF">이미지삭제</a>
			</p>
		</div>
		<a href="#this" class="btn" id="addFile">파일 추가</a> 
		
		<!--속성 -->
		<div id="AttributeDiv">
			<p>
				사이즈  : <input type="text" name="size">
				색상 : <input type="text" name="color"> 
				개수 : <input type="text" name="count">  
				<a href="#this"	class="btn" id="deleteA" name="deleteA">삭제</a>
			</p>
		</div>
		<a href="#this" class="btn" id="addAttribute">속성 추가</a> 

		<input type="submit" value="전송">
		
		
		
		<a href="#this"	class="btn" id="write">작성하기</a> 
		<a href="#this" class="btn" id="list">목록으로</a>
	</form>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		var gfv_count = 1;
		var gat_count = 1;
		$(document).ready(function() {
			$("#list").on("click", function(e) { //목록으로 버튼
				e.preventDefault();
				fn_List();
			});
			$("#write").on("click", function(e) { //작성하기 버튼
				e.preventDefault();
				fn_Write();
			});
			$("#addFile").on("click", function(e){ //파일 추가 버튼
                e.preventDefault();
                fn_addFile();
            });
            $("a[name='deleteF']").on("click", function(e){ //파일삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });
            
            $("#addAttribute").on("click", function(e){ //속성 추가 버튼
                e.preventDefault();
                fn_addAttribute();
            });
            $("a[name='deleteA']").on("click", function(e){ //속성삭제 버튼
                e.preventDefault();
                fn_deleteAttribute($(this));
            });
		});

		function fn_List() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/goods/list' />");
			comSubmit.submit();
		}

		function fn_Write() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/goods/write' />");
			comSubmit.submit();
		}
		function fn_addFile(){
            var str = "<p><input type='file' name='file_"+(gfv_count++)+"'><a href='#this' class='btn' name='deleteF'>이미지삭제</a></p>";
            $("#fileDiv").append(str);
            $("a[name='deleteF']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });
        }
		function fn_addAttribute(){
            var str = "";
            str=+"<p> 사이즈  : <input type='text' name='size'>"
            str=+"색상 : <input type='text' name='color'>"
			str=+"개수 : <input type='text' name='count'>"
            str=+"<a href='#this' class='btn' name='deleteA'>삭제</a></p>";
			
            $("#AttributeDiv").append(str);
            $("a[name='deleteA']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteAttribute($(this));
            });
        }
		function fn_deleteAttribute(obj){
	            obj.parent().remove();
	       }
        function fn_deleteFile(obj){
            obj.parent().remove();
        }

	</script>
</body>
</html>