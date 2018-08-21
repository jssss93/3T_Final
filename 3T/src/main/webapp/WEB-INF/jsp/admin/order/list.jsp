<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<head>
<script type="text/javascript"> 
//주문번호 같은 열 합치는 Jquery
/* $( document ).ready(function() {
	$('#dataTables-example').rowspan(0);
	$('#dataTables-example').rowspan(1);
	$('#dataTables-example').rowspan(2); 
	$('#dataTables-example').rowspan(3);
	$('#dataTables-example').rowspan(4);
	$('#dataTables-example').rowspan(5); 
	$('#dataTables-example').rowspan(9);
	$('#dataTables-example').rowspan(10);
	


}); */
$(window).load(function () {
    $(".gubun").each(function () {
        var rows = $(".gubun:contains('" + $(this).text() + "')");
        if (rows.length > 1) {
          rows.eq(0).attr("rowspan", rows.length);
          rows.not(":eq(0)").remove();
        }
    });
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
	<h1 class="page-header">주문 목록</h1>
</div>

<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
                         [주문 목록페이지] 주문을 관리 하는 페이지입니다.
        </div>
        <div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row">
						<div class="col-sm-12">
							<table class="table  table-bordered table-hover dataTable no-footer"id="dataTables-example" role="grid"	aria-describedby="dataTables-example_info">
								<thead>
									<tr role="row" style="vertical-align:middle;">
										<th style="width: 7%; text-align:center;vertical-align:middle;">NO[DATE]</th>
										<th style="width: 4%; text-align:center;vertical-align:middle;">MEMBER_ID</th>
										<th style="width: 5%; text-align:center;vertical-align:middle;">IMAGE</th>
										<th style="width: 10%; text-align:center;vertical-align:middle;">TITLE</th>
										<th style="width: 20%; text-align:center;vertical-align:middle;">PRODUCT INFO</th>
										<th style="width: 5%; text-align:center;vertical-align:middle;">PRICE</th>
										<th style="width: 5%; text-align:center;vertical-align:middle;">QUANTITY</th>
										<th style="width: 10%; text-align:center;vertical-align:middle;">STATE</th>
										<th style="width: 8%; text-align:center;vertical-align:middle;">TOTAL</th>										
										<th style="width: 13%; text-align:center;vertical-align:middle;">SETTING</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="list"  items="${list}" varStatus="stat">
										<input type="hidden" name="ORDER_NO" value="${list.ORDER_NO }">
										<tr class="gradeA even" role="row">
											<td style="text-align:center;vertical-align:middle;" class="gubun">2018-0${list.ORDER_NO}<br>[${list.REGDATE }]</td>
											<td style="text-align:center;vertical-align:middle;">${list.MEMBER_ID}</td>
											<td style="text-align:center;vertical-align:middle;"><img width="50" height="50" src="/3T/resources/upload/${list.IMAGE.split(',')[0] }" /></td>		
											<td style="text-align:center;vertical-align:middle;">${list.NAME}</td>										
											<td style="text-align:center;vertical-align:middle;">${list.CONTENT}</td>	
											<td style="text-align:center;vertical-align:middle;">${list.PRICE}</td>
											<td style="text-align:center;vertical-align:middle;">${list.COUNT}</td>
											<td style="text-align:center;vertical-align:middle;">
												<c:choose>
													<c:when test="${list.STATE==0 }">입금확인중	</c:when>
													<c:when test="${list.STATE==1 }">배송준비중</c:when>
													<c:when test="${list.STATE==2 }">배송중</c:when>
													<c:otherwise>배송완료</c:otherwise>
												</c:choose>
											</td>
											<td style="text-align:center;vertical-align:middle;">${list.PRICE*list.COUNT}</td>
											<td style="text-align:center;vertical-align:middle;">
												<input type="hidden" name="ORDER_NO" value="${list.ORDER_NO }">
												<c:url var="update" value="/admin/order/updateForm"><c:param name="ORDER_NO" value="${list.ORDER_NO }"/></c:url>
												<c:url var="delete" value="/admin/order/delete"><c:param name="ORDER_NO" value="${list.ORDER_NO }" /></c:url>
												<c:url var="stateup" value="/admin/order/stateup"><c:param name="ORDER_NO" value="${list.ORDER_NO }" /><c:param name="STATE" value="${list.STATE }" /></c:url>
												<a href="${update}"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png"></a>&nbsp;&nbsp;
												<a href="${delete}"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png"></a>&nbsp;&nbsp;
												<c:choose>
													<c:when test="${list.STATE==0 }"><a href="${stateup }"> >>배송준비중 </a></c:when>
													<c:when test="${list.STATE==1 }"><a href="${stateup }"> >>배송중 </a></c:when>
													<c:when test="${list.STATE==2 }"><a href="${stateup }"> >>배송완료</a></c:when>
												</c:choose>
											</td>
										</tr>
										
									</c:forEach>
									<c:if test="${fn:length(list) le 0}">
										<tr><td colspan="11" style="text-align:center;">등록된 주문이 없습니다</td></tr>
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
		</div>
	</div>
</div>