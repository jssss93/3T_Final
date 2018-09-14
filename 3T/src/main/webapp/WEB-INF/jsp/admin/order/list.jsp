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
}); 
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
				<div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
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
									
										
										
										<tr class="gradeA even" role="row">
											<td style="text-align:center;vertical-align:middle;" class="gubun">2018-0${list.ORDER_NO}<br><fmt:formatDate value="${list.REGDATE}" pattern="yyyy.MM.dd" /></td>
											<td style="text-align:center;vertical-align:middle;">${list.MEMBER_ID}</td>
											<td style="text-align:center;vertical-align:middle;"><img width="50" height="50" src="/3T/resources/upload/${list.IMAGE.split(',')[0] }" /></td>		
											<td style="text-align:center;vertical-align:middle;">${list.NAME}</td>										
											<td style="text-align:center;vertical-align:middle;">${list.CONTENT}...<br>[${list.COLOR }/${list.GOODS_SIZE }]</td>	
											<td style="text-align:center;vertical-align:middle;"><fmt:formatNumber value="${list.PRICE }" pattern="#,###" /></td>
											<td style="text-align:center;vertical-align:middle;">${list.COUNT}</td>
											<td style="text-align:center;vertical-align:middle;">
												
												<c:choose>
													<c:when test="${list.STATE==0 }">입금확인중	</c:when>
													<c:when test="${list.STATE==1 }">배송준비중</c:when>
													<c:when test="${list.STATE==2 }">배송중</c:when>
													<c:when test="${list.STATE==3 }">배송완료</c:when>
													<c:when test="${list.STATE==4 }">교환확인중</c:when>
													<c:when test="${list.STATE==5 }">교환준비중</c:when>
													<c:when test="${list.STATE==6 }">교환중</c:when>
													<c:when test="${list.STATE==7 }">교환완료</c:when>
													<c:when test="${list.STATE==8 }">환불물품확인중</c:when>
													<c:when test="${list.STATE==9 }">환불완료</c:when>
													
												</c:choose>
											</td>
											<td style="text-align:center;vertical-align:middle;"><fmt:formatNumber value="${list.PRICE*list.COUNT}" pattern="#,###" /></td>
											<td style="text-align:center;vertical-align:middle;"> 
												<%-- <input type="hidden" name="ORDER_NO" value="${list.ORDER_NO }">
												<input type="hidden" name="ORDER_DETAIL_NO" value="${list.ORDER_DETAIL_NO }"> --%>
												<c:url var="update" value="/admin/order/updateForm">
													<c:param name="ORDER_NO" value="${list.ORDER_NO }"/>
													<c:param name="ORDER_DETAIL_NO" value="${list.ORDER_DETAIL_NO }"/>
													<c:param name="REGDATE" value="${list.REGDATE }"/>
												</c:url>
												<c:url var="delete" value="/admin/order/delete"><c:param name="ORDER_NO" value="${list.ORDER_NO }" /></c:url>
												<c:url var="stateup" value="/admin/order/stateup"><c:param name="ORDER_NO" value="${list.ORDER_NO }" /><c:param name="STATE" value="${list.STATE }" /></c:url>
												<c:url var="statechange" value="/admin/order/statechange"><c:param name="ORDER_NO" value="${list.ORDER_NO }" /><c:param name="STATE" value="${list.STATE }" /></c:url>
												<c:url var="staterefund" value="/admin/order/state9"><c:param name="ORDER_NO" value="${list.ORDER_NO }" /><c:param name="STATE" value="${list.STATE }" /></c:url>
												<c:url var="state8" value="/admin/order/state8"><c:param name="ORDER_NO" value="${list.ORDER_NO }" /></c:url>
												
												<a href="${update}"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png"></a>&nbsp;&nbsp;
												<a href="${delete}"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png"></a>&nbsp;&nbsp;
												<c:choose>
													<c:when test="${list.STATE==0 }"><a href="${stateup }"> >>배송준비중 </a></c:when>
													<c:when test="${list.STATE==1 }"><a href="${stateup }"> >>배송중 </a></c:when>
													<c:when test="${list.STATE==2 }"><a href="${stateup }"> >>배송완료</a></c:when>
													<c:when test="${list.STATE==3 }">
														<a href="${state8 }"> 	>>환불처리</a>/
														<a href="${stateup }"> 	>>교환처리</a>
													</c:when>
													
													<c:when test="${list.STATE==4 }"><a href="${statechange }"> >>교환준비중</a></c:when>
													<c:when test="${list.STATE==5 }"><a href="${statechange }"> >>교환중</a></c:when>
													<c:when test="${list.STATE==6 }"><a href="${statechange }"> >>교환완료</a></c:when>
													
													<c:when test="${list.STATE==8 }"><a href="${staterefund }"> >>환불완료</a></c:when>
													
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
					
					<div class="paging" align="center">
						<c:if test="${not empty paginationInfo}">
							<ui:pagination paginationInfo="${paginationInfo}" type="text"
								jsFunction="fn_search" />
						</c:if>
						<input type="hidden" id="currentPageNo" name="currentPageNo" />
					</div>
					<br>
					<div class="row">
							<div style="text-align:center;">
								<div id="dataTables-example_filter" class="dataTables_filter">
										<form action="/3T/admin/order/orderlist">
									<select class="form-control" name="SearchNum" id="SearchNum">
								<option value="ORDER_NO">주문번호</option>
								<option value="MEMBER_ID">회원 ID</option>
								<option value="NAME">상품이름</option>
								<option value="COLOR">상품 색깔</option>
								<option value="GOODS_SIZE">상품 사이즈</option>
								
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
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/include/include-body.jspf"%>
<script type="text/javascript">

function fn_search(pageNo) {
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("<c:url value='/admin/order/orderlist' />");
	comSubmit.addParam("currentPageNo", pageNo);
	comSubmit.submit();
}
</script>