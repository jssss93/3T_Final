<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%> 
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<style type="text/css">
.titleArea {
    display: inline-block;
    margin: 0 2000 20px 0px;
    clear: both;
    /* overflow: hidden; */
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



			
				
					<!--
        $count = 40
    -->				
					<fieldset id="changelist">
      			<table cellspacing="10" cellpadding="10">
	
				
					
					<tr>
						<c:choose>
									<c:when test="${fn:length(searchlist) > 0 }">
						<c:forEach items = "${searchlist}" var="search" varStatus="stat">
						<c:if test="${stat.index%4==0}">
							<tr></tr>
						</c:if>
						<td>
						<li class="item">
							<div class="box" >
								<p class="prdImg">
								
									<a
										href="/3T/goods/detail?GOODS_NO=${search.GOODS_NO }"
										name="anchorBoxName_7009"><img id="myImg"
							src="/3T/resources/upload/${search.IMAGE.split(',')[0] }"
							width="320" height="370"></a> 
										<!-- <span
										class="wishIcon"><img
										src="/web/upload/icon_201808241610117600.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="7009" categoryno="1" icon_status="off"
										login_status="F" individual-set="F"></span> -->
								</p>

								<div class="status">
									
									
								</div>
								<p class="name">
									<a
										href="/3T/goods/detail?GOODS_NO=${search.GOODS_NO }"
										class=""> 
										<span style="font-size: 12px; color: #000000;">${search.NAME }</span></a>
								</p>
								<ul class="xans-element- xans-search xans-search-listitem">
									<li class=" xans-record-">
									<span style="font-size: 12px; color: #000000;">KRW ${search.PRICE}</span><span
										id="span_product_tax_type_text" style=""> </span></li>
								</ul>
							</div>
						</li>
						</td>
						</c:forEach>
						</c:when>
								<c:otherwise>
								<!--  검색된 상품이 없을때 -->
									
										<tr><td colspan="11" style="text-align:center;">검색된 상품이 없습니다</td></tr>
									
								</c:otherwise>
							</c:choose>
						</tr>
						

					</table>
					<br><br>
					<div align="center">
						<c:if test="${not empty paginationInfo}">
							<ui:pagination paginationInfo="${paginationInfo}" type="text"
								jsFunction="fn_search" />
						</c:if>
						<input type="hidden" id="currentPageNo" name="currentPageNo" />
					</div>
					</fieldset>
					
			
</body>
</html>