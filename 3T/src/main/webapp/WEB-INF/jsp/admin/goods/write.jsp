<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<title>상품 등록</title>


</head>
<body>

<div class="row" style="padding-left:15px;width:900px;">
	<h1 class="page-header">상품등록</h1>
</div>
	<form id="frm"  enctype="multipart/form-data">
		<table class="board_view3" border="1">
			<!-- <colgroup>
				<col width="15%">
				<col width="*"/>
			</colgroup> -->
			<caption>상품 등록</caption>
			<tbody>
				<tr>
					<th scope="row">상품명</th>
					<td><input type="text" name="NAME"></input></td>
				</tr>
				<tr>
					<th scope="row">가격</th>
					<td><input type="text" name="PRICE"></input></td>
				</tr>
				<tr>
					<th scope="row">카테고리</th>
					<td>
						<select name="CATEGORY" >
							<OPTION value='OUTER'>OUTER</OPTION>
							<OPTION value='SUIT'>SUIT</OPTION>
							<OPTION value='TOP'>TOP</OPTION>
							<OPTION value='SHIRT'>SHIRT</OPTION>
							<OPTION value='KNIT'>KNIT</OPTION>
							<OPTION value='BOTTOM'>BOTTOM</OPTION>
							<OPTION value='SHOES'>SHOES</OPTION>
							<OPTION value='ACC'>ACC</OPTION>	 
						</select>
					</td>
				</tr>
				<tr class="board_title">
					<th scope="row">관련상품번호</th>
					<td><input type="text" name="RELATED"	class="wdp_20"></input></td>
				</tr>
				<tr class="board_title">
					<th scope="row">상품 키워드</th>
					<td><input type="text" name="KEYWORD"
						class="wdp_20" placeholder="ex) 바지,반바지,긴바지,팬츠,하의,"></input></td>
				</tr>
				<tr>
					<td colspan="1" class="board_content2">
						<textarea rows="20" cols="170" title="내용" name="CONTENT" placeholder="상세 설명"></textarea>
					</td>
				</tr> 
				<tr>
					<td>
						<!--속성 -->
						<div id="AttributeDiv" class="board_view4">
							<p>
								사이즈  : <input type="text" name="size">
								색상 : <input type="text" name="color"> 
								개수 : <input type="text" name="count">  
							</p>
							
						</div>
						<a href="#this" class="btn" id="addAttribute" >속성 추가</a>  
					</td>
				</tr>
				<tr>
					<td colspan="2">
					
						<div id="fileDiv" class="board_view4">
							<p>
							<input type="file" id="IMAGE" name="IMAGE">
							
							</p>
						</div>
						<a href="#this" class="btn" id="addFile">이미지 추가</a>
					</td>
				</tr>
			</tbody>
		</table>
		
		<br/><br/>
		<a href="#this" class="btn" id="write">작성하기</a>
		<a href="#this" class="btn" id="list">목록으로</a>
	</form>
	<br/>
	<br/>
	
	
	
	
	
	
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
	        var str = "<p name='file_"+(gfv_count++)+"'><tr><td><input type='file' name='file_"+(gfv_count++)+"'></td><td><a href='#this' class='btn' name='deleteF'>이미지삭제</a></td></tr></p>";
	        $("#fileDiv").append(str);
	        $("a[name='deleteF']").on("click", function(e){ //삭제 버튼
	            e.preventDefault();
	            fn_deleteFile($(this));
	        });
	    }
		function fn_addAttribute(){
            var str = "";
            str=str+"<p> 사이즈  : <input type='text' name='size'>"
            str=str+"색상 : <input type='text' name='color'>"
			str=str+"개수 : <input type='text' name='count'>"
            str=str+"<a href='#this' class='btn' name='deleteA'>삭제</a></p>";
			
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
	        obj.parent().parent().remove();
	    }
	</script>
</body>
</html>