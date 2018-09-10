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
    width: 101%;
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
.panel {
    width: 104%;
}
</style>

</head>
<body>

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
					<input type="text" name="NAME" id="NAME" class="form-control" value="${goodsBasic.NAME }"></input>
				</div>
				<div class="form-group">
					<label>가격</label> 
					<input type="text" name="PRICE" id="PRICE" class="form-control" value="${goodsBasic.PRICE }"></input>
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
					<input type="text" name="RELATED" id="RELATED"	class="form-control" value="${goodsBasic.RELATED }"></input>
				</div>
				<div class="form-group">
					<label>상품 키워드</label> 
					<input type="text" name="KEYWORD" id="KEYWORD"
						class="form-control2" placeholder="ex) 바지,반바지,긴바지,팬츠,하의," value="${goodsBasic.KEYWORD }"></input>
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control3" rows="10" cols="90" title="내용" id="CONTENT" name="CONTENT" placeholder="상세 설명">${goodsBasic.CONTENT }</textarea>
				</div>
				<div id="AttributeDiv" class="board_view4">
							<c:forEach items="${goodsDetail }" var="attribute" varStatus="stat">
							<p id="deleteB${stat.index }">
								<span class="ATTRIBUTE_NO2" value="${attribute.ATTRIBUTE_NO }">${attribute.ATTRIBUTE_NO }</span>
							 <input type="hidden" id="ATTRIBUTE_NO2" name="ATTRIBUTE_NO2" value="${attribute.ATTRIBUTE_NO }">
							 <input type="hidden" id="GOODS_NO2" name="GOODS_NO2" value="${attribute.GOODS_NO }">
							사이즈  : <input type="text" name="size2" value="${attribute.GOODS_SIZE }" disabled>
							색상 : <input type="text" name="color2" value="${attribute.COLOR }" disabled> 
							개수 : <input type="text" name="count2" value="${attribute.COUNT }" disabled>  
							<!-- <a href='#this' id="deleteB" class='btn' name='deleteB'>삭제</a> -->
							<a href="javascript:deleteAttributeB(${stat.index });" class="btn">삭제</a>
							</p>
							</c:forEach>						
						<p>
								사이즈  : <input type="text" name="size">
								색상 : <input type="text" name="color"> 
								개수 : <input type="text" name="count">  
								<a href='#this' class='btn' name='deleteA'>삭제</a>
							</p>
							</div>
						<a href="#this" class="btn" id="addAttribute" >속성 추가</a>
				<br>
				<br>
				<a href="#this" class="btn" id="addFile">이미지 추가</a>
						<div id="fileDiv" class="board_view5">
						
						<c:forEach var="row" items="${goodsImage }" varStatus="stat">
								<p id="deleteI${stat.index}">
								<span class="UPLOAD_NO" value="${row.UPLOAD_NO }">${row.UPLOAD_NO }</span>
								<input type="hidden" id="GOODS_NO3" name="GOODS_NO3" value="${row.GOODS_NO }">
									<input type="hidden" id="UPLOAD_NO" name="UPLOAD_NO"
										value="${row.UPLOAD_NO }">${row.ORG_NAME}
									<input type="file" id="file_${var.index }"
										name="file_${stat.index }" disabled>
									 <a href="javascript:deleteUpload(${stat.index });" class='btn' >이미지삭제</a> 
										
								</p>
							</c:forEach>
							</div>
							</form:form>
		</div>
	</div>
</div>
</form>
	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn btn-success" id="update">저장하기</a>
	<a href="#this" class="btn" id="delete">삭제하기</a>
	<br>
	<br>
	
	
	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	
	<script type="text/javascript">
	
	var gfv_count = 1;
	
		var gat_count = 1;
		$(document).ready(function() {
			$("#list").on("click", function(e) { //목록으로 버튼
				e.preventDefault();
				fn_List();
			});
			$("#update").on("click", function(e) { //작성하기 버튼
				e.preventDefault();
				fn_update();
			});
			$("#addFile").on("click", function(e){ //파일 추가 버튼
	            e.preventDefault();
	            fn_addFile();
	        });
	        $("a[name='deleteF_"+(gfv_count)+"']").on("click", function(e){ //파일삭제 버튼
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
	        /* $("a[name='deleteB']").on("click", function(){ //속성삭제 버튼
	        	e.preventDefault();
	            fn_deleteAttribute($(this));
	        }); */
	        /* $("a[name='deleteC']").on("click", function(e){ //속성삭제 버튼
	            e.preventDefault();
	            fn_deleteUploadC($(this));
	        }); */
		});
	
		function fn_List() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/admin/goods/list' />");
			comSubmit.submit();
		}
	
		function fn_update() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/admin/goods/update' />");
			
			comSubmit.submit();
		}
		function fn_addFile(){
	        var str = "<p><tr><td><input type='file' name='file_"+(gfv_count)+"'></td><td><a href='#this' class='btn' name='deleteF_"+(gfv_count)+"'>삭제</a></td></tr></p>";
	        $("#fileDiv").append(str);
	        $("a[name='deleteF_"+(gfv_count)+"'").on("click", function(e){ //삭제 버튼
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
	    /* function fn_deleteAttributeB(obj){
	    	var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/admin/goods/deleteAttribute' />");
			comSubmit.addParam("ATTRIBUTE_NO", obj.parent().find("#ATTRIBUTE_NO").val());
			comSubmit.addParam("GOODS_NO", obj.parent().find("#GOODS_NO2").val());
			comSubmit.submit();
       } */
	     /* function fn_deleteUploadC(obj){
	    	var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/admin/goods/deleteUpload' />");
			comSubmit.addParam("UPLOAD_NO", obj.parent().find("#UPLOAD_NO").val());
			comSubmit.addParam("GOODS_NO", obj.parent().find("#GOODS_NO3").val());
			comSubmit.submit();
       } */
       /* function fn_deleteAttributeB(obj){
	    	$.ajax({
	        url: "/admin/goods/deleteAttribute",
	        type:"post", 
	        data: {"ATTRIBUTE_NO": $("#ATTRIBUTE_NO")},
	        success: function(){
	        alert("속성삭제");
	        }
	    });
	  } */
	  /* $("#deleteB").click(function(){
		  $.ajax({
		        url: "/3T/admin/goods/deleteAttribute",
		        type:"POST", 
		        data: ({"ATTRIBUTE_NO": $("#ATTRIBUTE_NO")}),
		        success: function(){
		        alert("속성삭제");
		        },
		        error: function() {
		            alert("error");
		        }
		    });
		});
	   */
	  function deleteAttributeB(index) {
		var index = index;
		var f = document.frm;
		var ATTRIBUTE_NO = $(".ATTRIBUTE_NO2").eq(index).attr("value");
		console.log(ATTRIBUTE_NO);
		var GOODS_NO = f.GOODS_NO.value;
		  $.ajax({
		        url: "/3T/admin/goods/deleteAttribute",
		        type:"POST", 
		        data: ({
		        	ATTRIBUTE_NO : ATTRIBUTE_NO,
		        	GOODS_NO : GOODS_NO
		        	}),
		        success: function (){
		        alert("속성삭제");
		        $("#deleteB"+index).remove();
		        },
		        error: function() {
		            alert("error");
		        }
		    });
		
	  }
		
	   function deleteUpload(index) {
			var index = index;
			var f = document.frm;
			var UPLOAD_NO = $(".UPLOAD_NO").eq(index).attr("value");
			console.log(UPLOAD_NO);
			var GOODS_NO = f.GOODS_NO.value;
			  $.ajax({
			        url: "/3T/admin/goods/deleteUpload",
			        type:"POST", 
			        data: ({
			        	UPLOAD_NO : UPLOAD_NO,
			        	GOODS_NO : GOODS_NO
			        	}),
			        success: function (){	
			        alert("이미지삭제");
			        $("#deleteI"+index).remove();
			        },
			        error: function() {
			            alert("error");
			        }
			    });
		  }
	</script>
</body>
</html>