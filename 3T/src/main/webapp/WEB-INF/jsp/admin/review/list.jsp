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
});
 */

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
	<h1 class="page-header">REVIEW 목록</h1>
</div>

<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
                         [REVIEW 목록페이지] REVIEW를 관리 하는 페이지입니다.
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
										<th style="width: 5%; text-align:center;vertical-align:middle;">NO</th>
										<th style="width: 8%; text-align:center;vertical-align:middle;">TITLE</th>										
										<th style="width: 7%; text-align:center;vertical-align:middle;">WRITER</th>
										<th style="width: 20%; text-align:center;vertical-align:middle;">DATE</th>
										<!-- <th style="width: 8%; text-align:center;vertical-align:middle;">STATUS</th> -->
										<th style="width: 13%; text-align:center;vertical-align:middle;">SETTING</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="list"  items="${list}" varStatus="stat">
										<input type="hidden" name="REVIEW_NO" value="${list.REVIEW_NO }">
										<tr class="gradeA even" role="row">
											<td style="text-align:center;vertical-align:middle;">${list.REVIEW_NO}</td>
											<td style="text-align:center;vertical-align:middle;"><%-- <c:if test="${list.RE_STEP ==1 }">
												→[답변] &nbsp;
												</c:if> --%>
											${list.TITLE}</td>										
											<td style="text-align:center;vertical-align:middle;">${list.MEMBER_ID}</td>
											<td style="text-align:center;vertical-align:middle;"><fmt:formatDate value="${list.REGDATE}" pattern="YY.MM.dd HH:mm" /></td>
											<%-- <td style="text-align:center;vertical-align:middle;"><c:if test="${list.RE_STEP ==1 }">답변완료</c:if> </td>	 --%>
																					
											<td style="text-align:center;vertical-align:middle;">
											<input type="hidden" name="REVIEW_NO" value="${list.REVIEW_NO }">
											
											<c:url var="detail" value="/admin/review/detail">
													<c:param name="REVIEW_NO" value="${list.REVIEW_NO }" />
											</c:url>
											<c:url var="delete" value="/admin/review/adminDelete">
													<c:param name="REVIEW_NO" value="${list.REVIEW_NO }" />
											</c:url>
											
											<a href="${detail}"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png"></a>&nbsp;&nbsp;
											<a href="${delete}"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png"></a>&nbsp;&nbsp;
											<a href="공지/미공지 스왑해주는 매핑경로"><input type="button" value="미공지"></a>
										</tr>
										
									</c:forEach>
								<!--  등록된 상품이 없을때 -->
									<c:if test="${fn:length(list) le 0}">
										<tr><td colspan="11" style="text-align:center;">등록된 공지사항이 없습니다</td></tr>
									</c:if> 
								</tbody>
							</table>
						</div>
					</div>
					<a href="/3T/admin/qa/writeForm"><button type="submit" class="btn btn-default">작성</button></a>
					<div class="paging">
						${pagingHtml}
					</div>
					<div class="row">
							<div style="text-align:center;">
								<div id="dataTables-example_filter" class="dataTables_filter">
									<form action="/3T/admin/review/list">
									<select class="form-control" name="SearchNum" id="SearchNum">
								<option value="MEMBER_ID">NAME</option>
								<option value="TITLE">TITLE</option>
								<option value="CONTENT">CONTENT</option>
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