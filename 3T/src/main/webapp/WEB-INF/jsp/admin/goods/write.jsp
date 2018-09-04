<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<title>상품 등록</title>
<style type="text/css">
.page-header{
border-bottom: 1px solid #fff;
}
.form-control {
    display: block;
    width: 40%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.form-control2 {
    display: block;
    width: 50%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.form-control3 {
    display: block;
    width: 100%;
    height: 200px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.board_view4 input{
    margin: 0 5 0 0;
}
.board_view5{
/* border: 1px solid #f2f2f2 !important; */
}
.board_view5 input {
    table-layout: fixed;
    /* border: 1px solid #f2f2f2 !important; */
    line-height: 180%;
    padding: 5 0 10 10;
}
.board_view4 p {
    width: 100%;
    padding: 10px 0 8px 2px;
    border-right: 1px solid #fff;
    font-family: 'Lato', 'Nanum Gothic';
    font-size: 12px;
    text-transform: uppercase;
    background-color: #fff;
    text-align: left;
    font-weight: normal;
    vertical-align: middle;
}
</style>

</head>
<body>
 <script type="text/javascript">
	  function check() {

		var f = document.Reg_form; 
	
		if (f.NAME.value == "") {
			alert("상품명를 입력해주십시오");
			f.NAME.focus();
			return false;
		}
		if (f.PRICE.value == "") {
			alert("가격를 입력해주십시오");
			f.PRICE.focus();
			return false;
		}
		if (f.RELATED.value == "") {
			alert("RELATED를 입력해주십시오");
			f.RELATED.focus();
			return false;
		}
		if (f.KEYWORD.value == "") {
			alert("KEYWORD를 입력해주십시오");
			f.KEYWORD.focus();
			return false;
		}
		if (f.CONTENT.value == "") {
			alert("CONTENT를 입력해주십시오");
			f.CONTENT.focus();
			return false;
		}
		if (f.size.value == "") {
			alert("size를 입력해주십시오");
			f.size.focus();
			return false;
		}
		if (f.color.value == "") {
			alert("color를 입력해주십시오");
			f.color.focus();
			return false;
		}
		if (f.count.value == "") {
			alert("count를 입력해주십시오");
			f.count.focus();
			return false;
		}
		
		
	}   
</script>
<div class="row" style="padding-left: 15px; width: 700px;">
	<h1 class="page-header">상품등록</h1>
</div>
<form action="/3T/goods/write" id="frm" name="Reg_form"  enctype="multipart/form-data" onsubmit="return check();"  method="post">
<div class="row" style="padding-left: 15px; width: 700px;">
	<div class="panel panel-default">
		<div class="panel-heading">상품 등록 페이지입니다.</div>
		<div class="panel-body">
			            <form:form id="frm" name="frm" action="frm" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label>상품명</label> 
					<input type="text" class="form-control" name="NAME" />
				</div>
				<div class="form-group">
					<label>가격</label> 
					<input type="text" class="form-control" name="PRICE" />
				</div>
			 	<div class="form-group">
					<label>카테고리</label> 
					<select name="CATEGORY" class="form-control" >
							<OPTION value='OUTER'>OUTER</OPTION>
							<OPTION value='SUIT'>SUIT</OPTION>
							<OPTION value='TOP'>TOP</OPTION>
							<OPTION value='SHIRT'>SHIRT</OPTION>
							<OPTION value='KNIT'>KNIT</OPTION>
							<OPTION value='BOTTOM'>BOTTOM</OPTION>
							<OPTION value='SHOES'>SHOES</OPTION>
							<OPTION value='ACC'>ACC</OPTION>	 
						</select>
				</div>
				<%-- <c:if test="${qnaDetail.GOODS_NUMBER ne null }"> --%>
				<div class="form-group">
					<label>관련상품번호</label> 
					<input type="text" class="form-control" name="RELATED" />
				</div>
				<div class="form-group">
					<label>상품 키워드</label> 
					<input type="text" class="form-control2" name="KEYWORD" placeholder="ex) 바지,반바지,긴바지,팬츠,하의,"/>
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control3" rows="10" cols="170" title="내용" name="CONTENT" placeholder="상세 설명">${map.CONTENT}</textarea>
				</div>
				<div class="board_view4" id="AttributeDiv">
					<p>
								사이즈  : <input type="text" name="size">
								색상 : <input type="text" name="color"> 
								개수 : <input type="text" name="count">  
							</p>
				</div>
				<a href="#this" class="btn" id="addAttribute" >속성 추가</a>
				<br>
				<br>
				<div id="fileDiv" class="board_view5">
				<p>
							<input type="file" id="IMAGE" name="IMAGE">
							
							</p>
						</div>
						<a href="#this" class="btn" id="addFile">이미지 추가</a>
						
						<br/><br/>
						<input type="submit" class="btn" value="작성">
					<a href="#this" class="btn btn-outline btn-default" id="list">목록으로</a>
			</form:form>
		</div>
	</div>
</div>
</form>	
	
	
	
	
	
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