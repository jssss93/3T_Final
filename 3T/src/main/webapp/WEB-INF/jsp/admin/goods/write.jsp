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
		<table class="board_view2"> 
			<!-- <colgroup>
				<col width="15%">
				<col width="*"/>
			</colgroup> -->
			<caption>상품 등록</caption>
			<tbody>
				<tr>
					<th scope="row">상품명</th>
					<td><input type="text" name="NAME" class="wdp_90"></input></td>
				</tr>
				<tr>
					<th scope="row">가격</th>
					<td><input type="text" name="PRICE" class="wdp_90"></input></td>
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
				<tr>
					<th scope="row">관련상품번호</th>
					<td><input type="text" name="RELATED"	class="wdp_90"></input></td>
				</tr>
				<tr>
					<th scope="row">상품 키워드</th>
					<td><input type="text" name="KEYWORD"
						class="wdp_90" placeholder="ex) 바지,반바지,긴바지,팬츠,하의,"></input></td>
				</tr>
				<tr>
					<td colspan="2" class="view_text">
						<textarea rows="10" cols="170" title="내용" name="CONTENT" placeholder="상세 설명"></textarea>
					</td>
				</tr> 
				<tr>
					<td>
						<!--속성 -->
						<div id="AttributeDiv">
							<p>
								사이즈  : <input type="text" name="size">
								색상 : <input type="text" name="color"> 
								개수 : <input type="text" name="count">  
							</p>
							
						</div>
						<a href="#this" class="btn" id="addAttribute" >속성 추가</a>  
					</td>
				</tr>
				<!-- <tr>
					<td colspan="2">
					<a href="#this" class="btn" id="addAttribute">속성 추가</a><br/>
						<div id="AttributeDiv">
							<p>
							<select name="COLOR" size="1">
								<OPTION value=''>COLOR</OPTION>
								<OPTION value='BLACK'>BLACK</OPTION>
								<OPTION value='GRAY'>GRAY</OPTION>
								<OPTION value='BROWN'>BROWN</OPTION>
								<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
								<OPTION value='PINK'>PINK</OPTION>
								<OPTION value='PURPLE'>PURPLE</OPTION>
								<OPTION value='WHITE'>WHITE</OPTION>
								<OPTION value='NAVY'>NAVY</OPTION>
								<OPTION value='BLUE'>BLUE</OPTION>
								<OPTION value='GREEN'>GREEN</OPTION>
								<OPTION value='YELLOW'>YELLOW</OPTION>
								<OPTION value='RED'>RED</OPTION>
								<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
								<OPTION value='BEIGE'>BEIGE</OPTION>
							</select>
							
							<select name="SIZE" size="1">
								<OPTION value=''>SIZE</OPTION>
								<OPTION value='M'>M</OPTION>
								<OPTION value='L'>L</OPTION>
								<OPTION value='XL'>XL</OPTION>
								<OPTION value='Free'>Free</OPTION>
									 
							</select>
							
							<input type="text" placeholder='수량' name="COUNT" size="1">
							<a href="#this" class="btn" id="deleteA" name="deleteA">삭제</a>
							</p>
						</div>
					</td>
				</tr> -->
				<tr>
					<td colspan="2">
					
					<a href="#this" class="btn" id="addFile">이미지 추가</a>
						<div id="fileDiv">
							<p>
							<input type="file" id="IMAGE" name="IMAGE">
							<a href="#this" class="btn" id="delete" name="delete">삭제</a>
							</p>
						</div>
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
	        var str = "<p><input type='file' name='file_"+(gfv_count++)+"'><a href='#this' class='btn' name='deleteF'>이미지삭제</a></p>";
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
	        obj.parent().remove();
	    }
	</script>
</body>
</html>