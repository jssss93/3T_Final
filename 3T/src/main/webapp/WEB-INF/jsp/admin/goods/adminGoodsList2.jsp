<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>  
<head>
<script type="text/javascript">
//주문번호 같은 열 합치는 Jquery
$( document ).ready(function() {
	$('#dataTables-example').rowspan(0);
	$('#dataTables-example').rowspan(1);
	$('#dataTables-example').rowspan(2);
	$('#dataTables-example').rowspan(3);
	$('#dataTables-example').rowspan(9);
});

$.fn.rowspan = function(colIdx, isStats) {       
	return this.each(function(){      
		var that;     
		$('tr', this).each(function(row) {      
			$('td:eq('+colIdx+')', this).filter(':visible').each(function(col) {
				
				if ($(this).html() == $(that).html()
					&& (!isStats 
							|| isStats && $(this).prev().html() == $(that).prev().html()
							)
					) {            
					rowspan = $(that).attr("rowspan") || 1;
					rowspan = Number(rowspan)+1;

					$(that).attr("rowspan",rowspan);
					
					// do your action for the colspan cell here            
					$(this).hide();
					
					//$(this).remove(); 
					// do your action for the old cell here
					
				} else {            
					that = this;         
				}          
				
				// set the that if not already set
				that = (that == null) ? this : that;      
			});     
		});    
	});  
}; 

$.fn.colspan = function(rowIdx) {
	return this.each(function(){
		
		var that;
		$('tr', this).filter(":eq("+rowIdx+")").each(function(row) {
			$(this).find('th').filter(':visible').each(function(col) {
				if ($(this).html() == $(that).html()) {
					colspan = $(that).attr("colSpan") || 1;
					colspan = Number(colspan)+1;
					
					$(that).attr("colSpan",colspan);
					$(this).hide(); // .remove();
				} else {
					that = this;
				}
				
				// set the that if not already set
				that = (that == null) ? this : that;
				
			});
		});
	});
}
function delchk(){
    return confirm("삭제하시겠습니까?");
    
    
}
</script>
<style type="text/css">
.pad_5 {padding: 5px;}
.paging{text-align:center;margin-top:5px;margin-bottom:15px;}
.paging a,
.paging strong{display:inline-block;width:36px;height:32px;line-height:28px;font-size:14px;border:1px solid #e0e0e0;margin-left:5px;
-webkit-border-radius:3px;
   -moz-border-radius:3px;
		border-radius:3px;
-webkit-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
	-moz-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
		  box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
}
.paging a:first-child{margin-left:0;}
.paging strong{color:#fff;background:#337AB7;border:1px solid #337AB7;}
.paging .page_arw{font-size:11px;line-height:30px;}
</style> 
</head>
<body id="body1" name="body1" style="float: left;">
<div  style="align:left;float: left;">

<div class="row" style="padding-left:15px;width:900px;">    
	<h1 class="page-header">상품목록</h1>
</div>
<div class="row" style="align:left;">
	<div class="panel panel-default">
		<div class="panel-heading">
                         [상품목록페이지] 상품을 검색, 수정, 삭제 기능하는 페이지입니다.
        </div>
        <div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<form id="goodslist" name="goodslist" method="get" enctype="multipart/form-data">
					<div class="row" style="margin-bottom:5px;align: left;">
						<div class="col-sm-6">
							<a href="/3T/admin/goods/list"><button type="button" class="btn btn-outline btn-default">전체</button></a>
							<select class="form-control" name="CATEGORY" id="CATEGORY" onchange="cateChange()">		
								<option value ="<%=request.getParameter("CATEGORY") %>" selected="<%=request.getParameter("CATEGORY") %>"><%=request.getParameter("CATEGORY") %></option>
								<option value ="">--카테고리--</option>
								<option value ="OUTER">OUTER</option>
								<option value ="SUIT">SUIT</option>
								<option value ="TOP">TOP</option>
								<option value ="SHIRT">SHIRT</option>
								<option value ="KNIT">KNIT</option>
								<option value ="BOTTOM">BOTTOM</option>
								<option value ="SHOES">SHOES</option>
								<option value ="ACC">ACC</option>
							</select>
							<select class="form-control" name="CATEGORY1" id="CATEGORY1" onchange="cateChange()">
								<option value ="<%=request.getParameter("CATEGORY1") %>" selected="<%=request.getParameter("CATEGORY1") %>"><%=request.getParameter("CATEGORY1") %></option>
								<option value ="--상품구분--">--상품구분--</option>
								<option value ="판매중">판매중</option>
								<option value ="품절상품">품절상품</option>
							</select>			
							<select class="form-control" name="CATEGORY2" id="CATEGORY2" onchange="cateChange()">
								<option value ="<%=request.getParameter("CATEGORY2") %>" selected="<%=request.getParameter("CATEGORY2") %>"><%=request.getParameter("CATEGORY2") %></option>
								<option value ="--상품정렬--">--상품정렬--</option>
								<option value ="이름순">이름순</option>
								<option value ="낮은가격순">낮은 가격순</option>
								<option value ="높은가격순">높은 가격순</option>
								<option value ="조회순">조회순</option>
							</select>											
						</div>
						
						
					</div>
					</form>
					<fieldset id="changelist">
					<div id="body" style="float: left;">
					<div class="row"  >
						<div class="col-sm-12">
							<table
								class="table  table-bordered table-hover dataTable no-footer"
								id="dataTables-example" role="grid"
								aria-describedby="dataTables-example_info">
								<thead>
									<tr role="row" style="vertical-align:middle;">
										<th style="width: 5%; text-align:center;vertical-align:middle;">상품번호</th>
										<th style="width: 20%; text-align:center;vertical-align:middle;">상품명</th>
										<th style="width: 7%; text-align:center;vertical-align:middle;">카테고리</th>
										<th style="width: 8%; text-align:center;vertical-align:middle;">상품 사진</th>										
										<th style="width: 8%; text-align:center;vertical-align:middle;">가격</th>
										<th style="width: 7%; text-align:center;vertical-align:middle;">색상</th>
										<th style="width: 6%; text-align:center;vertical-align:middle;">사이즈</th>
										<th style="width: 6%; text-align:center;vertical-align:middle;">수량</th>
										<th style="width: 12%; text-align:center;vertical-align:middle;">등록일자</th>									
										<th style="width: 13%; text-align:center;vertical-align:middle;">관리</th>
									</tr>
								</thead>
								<tbody >
								<c:choose>
									<c:when test="${fn:length(list) > 0 }">
									<c:forEach var="goodsList"  items="${list}" varStatus="stat">
									
										<tr class="gradeA even" role="row">
											<td style="text-align:center;vertical-align:middle;">${goodsList.GOODS_NO}</td>	
											<td style="text-align:center;vertical-align:middle;">${goodsList.NAME}</td>	
											<td style="text-align:center;vertical-align:middle;">${goodsList.CATEGORY}<input type="hidden" value="${goodsList.GOODS_NO }"></td>								
											<td style="text-align:center;vertical-align:middle;"><img src="/3T/resources/upload/${goodsList.IMAGE.split(',')[0]}" width="60" height="60" alt=""  onerror="상품 이미지가 없습니다." /></td>
												<td style="text-align:center;vertical-align:middle;"><fmt:formatNumber value="${goodsList.PRICE}" pattern="#,###" /></td>
											<td style="text-align:center;vertical-align:middle;">${goodsList.COLOR}</td>
											<td style="text-align:center;vertical-align:middle;">${goodsList.GOODS_SIZE}</td>
											<td style="text-align:center;vertical-align:middle;">${goodsList.COUNT}</td>
											<td style="text-align:center;vertical-align:middle;"><fmt:formatDate value="${goodsList.REGDATE}" pattern="yyyy.MM.dd" /></td>										
											<td style="text-align:center;vertical-align:middle;"><input type="hidden" value="${goodsList.GOODS_NO }" />
												<a href="/3T/admin/goods/updateForm?GOODS_NO=${goodsList.GOODS_NO }"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png"></a>&nbsp;&nbsp;
												<a href="/3T/admin/goods/deleteGoods?GOODS_NO=${goodsList.GOODS_NO }"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png"></a>
											</td>
										</tr>
										
									</c:forEach>
								</c:when>
								<c:otherwise>
								<!--  등록된 상품이 없을때 -->
									
										<tr><td colspan="11" style="text-align:center;">등록된 상품이 없습니다</td></tr>
									
								</c:otherwise>
							</c:choose>
								</tbody>
							</table>
						</div>
							<div class="paging" align="center">
								<c:if test="${not empty paginationInfo}">
									<ui:pagination paginationInfo="${paginationInfo}" type="text"
									jsFunction="fn_search" />
								</c:if>
								<input type="hidden" id="currentPageNo" name="currentPageNo" />
							</div>
						</div>
							<%@ include file="/WEB-INF/include/include-body.jspf"%>
								<script type="text/javascript">
									function fn_search(pageNo) {
										var comSubmit = new ComSubmit();
										comSubmit
												.setUrl("<c:url value='/admin/goods/cateList' />");
										comSubmit.addParam("currentPageNo",
												pageNo);
									 	comSubmit.addParam("CATEGORY" ,$("#CATEGORY option:selected").val());
									 	comSubmit.addParam("CATEGORY1" ,$("#CATEGORY1 option:selected").val());
									 	comSubmit.addParam("CATEGORY2" ,$("#CATEGORY2 option:selected").val());
										comSubmit.submit();
									}
								</script>
							</div>
						</fieldset>
					
					
					
					<div class="row">
							<div style="text-align:center;">
								<div id="dataTables-example_filter" class="dataTables_filter">
								<form action="/3T/admin/goods/list">
									<select class="form-control" name="SearchNum" id="SearchNum">
								<option value="NAME">상품명</option>
								<option value="PRICE">상품 가격</option>
								<option value="COLOR">상품 색상</option>
								<option value="GOODS_SIZE">상품 사이즈</option>
								<option value="COUNT">상품 수량</option>
								
									</select>
										<input class="form-control" type="text" name="SearchKeyword" id="SearchKeyword"/>
										<span>
										<button type="submit" class="btn btn-default">검색</button>
										</span>
									</form>
								</div>							
							</div>
							
					</div>
				</div>
			</div>
			<!-- /.table-responsive -->							
		</div>
	</div>
        <!-- /.panel -->   
</div>
</div>
</body>

<script>
/* $(document).ready(function() {
	$("#CATEGORY").on("click", function(e) { //글쓰기 버튼
		e.preventDefault();
		fn_WriteForm();
	});

	$("a[name='title']").on("click", function(e) { //상세보기
		e.preventDefault();
		fn_Detail($(this));
	}); 
}); */ 
   
function cateChange() {
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("<c:url value='/admin/goods/cateList' />");
	comSubmit.addParam("CATEGORY", $("#CATEGORY option:selected").val());
	comSubmit.addParam("CATEGORY1", $("#CATEGORY1 option:selected").val());
	comSubmit.addParam("CATEGORY2", $("#CATEGORY2 option:selected").val());
	comSubmit.submit();
}

/* function ajaxStart(){
    
	var params = $("#goodslist").serialize();
	console.log(params);
       $.ajax({
            url: "/3T/admin/goods/list2",
            type : "post",
            data: params,
            success:function(data){
            	$("#changelist").html(data);
            	console.log("date?"+data); 
            },
            error: function(){
            	alert("ajax 통신 error");
            }
         });  
       
      
   } */

   /* function ajaxStart(){
	      
		var target = document.getElementById("select");
    	var targetText=  target.options[target.selectedIndex].text;     // 옵션 text 값
    	console.log(targetText);
    	 
	        $.ajaxSettings.traditional = true;//배열 형태로 서버쪽 전송을 위한 설정
	       
	        
	       $.ajax({
	            url: "/3T/admin/goods/listOfOuter",
	            type : "post",
	            data: {"CATEGORY":targetText},
	            success:function(data){
	            	console.log(data);
	            	$("#body").html(data); 
	            }
	         });  
	       
	      
	   } */      
         
      /* /*** ranking 가격bar 마우스를 뗄 경우 이벤트 발생 ***/
     /*  $( "#price-range-slider" ).slider({
           stop: function() {
              ajaxList();
            console.log("다다다");
            //솔트(2);
           }
      }); */


   


</script>