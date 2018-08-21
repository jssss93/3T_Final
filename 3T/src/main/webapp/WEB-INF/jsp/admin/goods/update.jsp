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
	<form id="frm" name="frm" enctype="multipart/form-data">
	<input type="hidden" name="GOODS_NO" id="GOODS_NO" value="${goodsBasic.GOODS_NO }">
		<table class="board_view">
			<colgroup>
				<col width="15%">
				<col width="*"/>
			</colgroup>
			<caption>상품 등록</caption>
			<tbody>
				<tr>
					<th scope="row">상품명</th>
					<td><input type="text" name="NAME" id="NAME" class="wdp_90" value="${goodsBasic.NAME }"></input></td>
				</tr>
				<tr>
					<th scope="row">가격</th>
					<td><input type="text" name="PRICE" id="PRICE" class="wdp_90" value="${goodsBasic.PRICE }"></input></td>
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
					<td><input type="text" name="RELATED" id="RELATED"	class="wdp_90" value="${goodsBasic.RELATED }"></input></td>
				</tr>
				<tr>
					<th scope="row">상품 키워드</th>
					<td><input type="text" name="KEYWORD" id="KEYWORD"
						class="wdp_90" placeholder="ex) 바지,반바지,긴바지,팬츠,하의," value="${goodsBasic.KEYWORD }"></input></td>
				</tr>
				<tr>
					<td colspan="2" class="view_text">
						<textarea rows="10" cols="170" title="내용" id="CONTENT" name="CONTENT" placeholder="상세 설명">${goodsBasic.CONTENT }</textarea>
					</td>
				</tr> 
	
				<tr>
					<td>
						<!--속성 -->
						<div id="AttributeDiv">
							<c:forEach items="${goodsDetail }" var="attribute" varStatus="stat">
							<p>
								<span class="ATTRIBUTE_NO2" value="${attribute.ATTRIBUTE_NO }">${attribute.ATTRIBUTE_NO }</span>
							 <input type="hidden" id="ATTRIBUTE_NO2" name="ATTRIBUTE_NO2" value="${attribute.ATTRIBUTE_NO }">
							 <input type="hidden" id="GOODS_NO2" name="GOODS_NO2" value="${attribute.GOODS_NO }">
							사이즈  : <input type="text" name="size2" value="${attribute.GOODS_SIZE }" disabled>
							색상 : <input type="text" name="color2" value="${attribute.COLOR }" disabled> 
							개수 : <input type="text" name="count2" value="${attribute.COUNT }" disabled>  
							<!-- <a href='#this' id="deleteB" class='btn' name='deleteB'>삭제</a> -->
							<a href="javascript:deleteAttributeB(${stat.index });" class="btn" >삭제</a>
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
					</td>
				</tr>
				<tr>
					<td colspan="2">
					
					<a href="#this" class="btn" id="addFile">이미지 추가</a>
						<div id="fileDiv">
						
						<c:forEach var="row" items="${goodsImage }" varStatus="var">
								<p>
								<input type="hidden" id="GOODS_NO3" name="GOODS_NO3" value="${row.GOODS_NO }">
									<input type="hidden" id="UPLOAD_NO" name="UPLOAD_NO"
										value="${row.UPLOAD_NO }">${row.ORG_NAME}
									<input type="file" id="file_${var.index }"
										name="file_${var.index }" disabled>
										<a href='#this' class='btn' name='deleteC' id="deleteC">이미지삭제</a>
										
								</p>
							</c:forEach>
							
						
						
						
							<p>
							<input type="file" id="IMAGE" name="IMAGE">
							<a href="#this" class="btn" id="deleteF" name="deleteF">삭제</a>
							</p>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		
		<br/><br/>
		<a href="#this" class="btn" id="update">수정하기</a>
		<a href="#this" class="btn" id="list">목록으로</a>
	</form>
	<br/>
	<br/>
	
	
	
	
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
	        /* $("a[name='deleteB']").on("click", function(e){ //속성삭제 버튼
	            e.preventDefault();
	            fn_deleteAttributeB($(this));
	        }); */
	        $("a[name='deleteC']").on("click", function(e){ //속성삭제 버튼
	            e.preventDefault();
	            fn_deleteUploadC($(this));
	        });
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
	        var str = "<p><input type='file' name='file_"+(gfv_count)+"'><a href='#this' class='btn' name='deleteF_"+(gfv_count)+"'>삭제</a></p>";
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
	        obj.parent().remove();
	    }
	    /* function fn_deleteAttributeB(obj){
	    	var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/admin/goods/deleteAttribute' />");
			comSubmit.addParam("ATTRIBUTE_NO", obj.parent().find("#ATTRIBUTE_NO").val());
			comSubmit.addParam("GOODS_NO", obj.parent().find("#GOODS_NO2").val());
			comSubmit.submit();
       } */
	    function fn_deleteUploadC(obj){
	    	var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/admin/goods/deleteUpload' />");
			comSubmit.addParam("UPLOAD_NO", obj.parent().find("#UPLOAD_NO").val());
			comSubmit.addParam("GOODS_NO", obj.parent().find("#GOODS_NO3").val());
			comSubmit.submit();
       }
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
		        success: function(){

		        alert("속성삭제");
		        obj.parent().remove();
		        },
		        error: function() {
		            alert("error");
		        }
		    });
	  }
	</script>
</body>
</html>