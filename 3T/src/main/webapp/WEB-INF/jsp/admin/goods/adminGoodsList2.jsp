<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>  
<!DOCTYPE html>
<html>
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
												<td style="text-align:center;vertical-align:middle;">${goodsList.PRICE}</td>
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
										comSubmit.setUrl("<c:url value='/admin/goods/list2' />");
										comSubmit.addParam("currentPageNo",pageNo);
										comSubmit.addParam("CATEGORY", $("#CATEGORY option:selected").val());
										comSubmit.addParam("CATEGORY1",$("#CATEGORY1 option:selected").val());
										comSubmit.addParam("CATEGORY2",$("#CATEGORY2 option:selected").val());
										comSubmit.submit();
									}
								</script>
							</div>
</body>
</html>