<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<head>
<script type="text/javascript">
//주문번호 같은 열 합치는 Jquery
$( document ).ready(function() {
	$('#dataTables-example').rowspan(0);
	$('#dataTables-example').rowspan(1);
	$('#dataTables-example').rowspan(2);
	$('#dataTables-example').rowspan(3);
	$('#dataTables-example').rowspan(4);
	$('#dataTables-example').rowspan(5);
	$('#dataTables-example').rowspan(9);
	$('#dataTables-example').rowspan(10);
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
function delchk(){
    return confirm("삭제하시겠습니까?");
    
    
}
</script>
<style type="text/css">
.paging{text-align:center;height:32px;margin-top:5px;margin-bottom:15px;}
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

<div class="row" style="padding-left:15px;width:900px;">    
	<h1 class="page-header">상품목록</h1>
</div>
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
                         [상품목록페이지] 상품을 검색, 수정, 삭제 기능하는 페이지입니다.
        </div>
        <div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row" style="margin-bottom:5px;">
						<div class="col-sm-6">
							<a href="/MODA/goods/goodsList"><button type="button" class="btn btn-outline btn-default">전체</button></a>
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--카테고리--</option>
								<option value ="/MODA/goods/goodsList?searchNum=2&isSearch=OUTER">OUTER</option>
								<option value ="/MODA/goods/goodsList?searchNum=2&isSearch=TOP">TOP</option>
								<option value ="/MODA/goods/goodsList?searchNum=2&isSearch=PANTS">PANTS</option>
								<option value ="/MODA/goods/goodsList?searchNum=2&isSearch=SHOES">SHOES</option>
								<option value ="/MODA/goods/goodsList?searchNum=2&isSearch=ACC">ACC</option>
							</select>
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--상품구분--</option>
								<option value ="/MODA/goods/goodsList?searchNum=3&isSearch=0">판매중</option>
								<option value ="/MODA/goods/goodsList?searchNum=4&isSearch=">품절상품</option>
								<option value ="/MODA/goods/goodsList?searchNum=3&isSearch=1">비활성화</option>
							</select>			
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--상품정렬--</option>
								<option value ="/MODA/goods/goodsList?searchNum=5&isSearch=GOODS_AMOUNT">판매수량순</option>
								<option value ="/MODA/goods/goodsList?searchNum=6&isSearch=GOODS_COUNT">조회순</option>
							</select>											
						</div>
						<div class="col-sm-6" style="text-align:right;">
							<div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">총 상품수 : ${totalCount}</div>
						</div>
						
					</div>
					<div class="row">
						<div class="col-sm-12">
							<table
								class="table  table-bordered table-hover dataTable no-footer"
								id="dataTables-example" role="grid"
								aria-describedby="dataTables-example_info">
								<thead>
									<tr role="row" style="vertical-align:middle;">
										<th style="width: 5%; text-align:center;vertical-align:middle;">상품번호</th>
										<th style="width: 8%; text-align:center;vertical-align:middle;">상품 사진</th>										
										<th style="width: 7%; text-align:center;vertical-align:middle;">카테고리</th>
										<th style="width: 20%; text-align:center;vertical-align:middle;">상품명</th>
										<th style="width: 8%; text-align:center;vertical-align:middle;">가격</th>
										<th style="width: 7%; text-align:center;vertical-align:middle;">색상</th>
										<th style="width: 6%; text-align:center;vertical-align:middle;">사이즈</th>
										<th style="width: 12%; text-align:center;vertical-align:middle;">등록일자</th>									
										<th style="width: 13%; text-align:center;vertical-align:middle;">관리</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="goodsList"  items="${list}" varStatus="stat">
								<c:url var="viewURL" value="/goods/goodsModifyForm" >
									<c:param name="GOODS_NUMBER" value="${goodsList.GOODS_NUMBER }" />
								</c:url>									
									<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">${goodsList.GOODS_NO}</td>										
										<td style="text-align:center;vertical-align:middle;"><img src="/MODA/file/goodsFile/${goodsList.GOODS_THUMBNAIL}" width="60" height="60" alt=""  onerror="this.src='/MODA/file/noimg_130.gif'" /></td>
										<td style="text-align:center;vertical-align:middle;">${goodsList.CATEGORY}</td>
										<td style="text-align:center;vertical-align:middle;">${goodsList.NAME}</td>
										<td style="text-align:center;vertical-align:middle;">${goodsList.PRICE}</td>
										<td style="text-align:center;vertical-align:middle;">${goodsList.GOODS_COLOR}</td>
										<td style="text-align:center;vertical-align:middle;">${goodsList.GOODS_SIZE}</td>
										<td style="text-align:center;vertical-align:middle;"><fmt:formatDate value="${goodsList.REGDATE}" pattern="YY.MM.dd HH:mm" /></td>										
										<td style="text-align:center;vertical-align:middle;">
											<a href="${viewURL}"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png"></a>&nbsp;&nbsp;
										<c:url var="viewURL2" value="/goods/goodsDelete" >
											<c:param name="GOODS_NUMBER" value="${goodsList.GOODS_NUMBER }" />							
										</c:url>	
										 <a href="${viewURL2}"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png" onclick="return delchk()"></a><div style='display:none;'>${goodsList.GOODS_NUMBER}</div></td>									
									</tr>
								</c:forEach>
								<!--  등록된 상품이 없을때 -->
									<c:if test="${fn:length(goodsList) le 0}">
										<tr><td colspan="11" style="text-align:center;">등록된 상품이 없습니다</td></tr>
									</c:if> 
								</tbody>
							</table>
						</div>
					</div>
					<div class="paging">
						${pagingHtml}
					</div>
					<div class="row">
							<div style="text-align:center;">
								<div id="dataTables-example_filter" class="dataTables_filter">
									<form action="">
									<select class="form-control" name="searchNum" id="searchNum">
										<option value="0">상품명</option>
										<option value="1">상품번호</option>
									</select>
										<input class="form-control" type="text" name="isSearch" id="isSearch"/>
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