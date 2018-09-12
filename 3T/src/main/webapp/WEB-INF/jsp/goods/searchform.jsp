<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>  
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<link href="<c:url value='/resources/css/searchform.css'/>" rel="stylesheet" type="text/css"/>
<style type="text/css">
.xans-search-form .searchbox .item input {
    border: 1px solid #aaa!important;
}
</style>
</head>

<body>
	
		
			<div id="contents">


				<div class="titleArea">
					<h2><strong>search</strong></h2>
				</div>

				<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
				<form id="searchForm" name="searchForm" action="/3T/goods/search" method="get" enctype="multipart/form-data">
					
					<div class="xans-element- xans-search xans-search-form ">
						<div class="searchbox">
							<fieldset>
								<legend>상품 검색</legend>
								<div class="item">
									<strong>CATEGORY</strong> <select id="CATEGORY" name="CATEGORY" onchange="setOption(this)">
										<option value="" selected="selected">상품분류 선택</option>
										<option value="OUTER">OUTER</option>
										<option value="SUIT">SUIT</option>
										<option value="TOP">TOP</option>
										<option value="SHIRT">SHIRT</option>
										<option value="KNIT">KNIT</option>
										<option value="BOTTOM">BOTTOM</option>
										<option value="SHOES">SHOES</option>
										<option value="ACC">ACC</option>
									</select>
								</div>
								<div class="item">
									<strong>condition</strong> <select id="search_type" name="search_type">
										<option value="product_name" selected="selected">상품명</option>
									</select> 
									<input id="keyword" name="keyword" class="inputTypeText" placeholder="" size="15" value="<%=request.getParameter("keyword") %>" type="text">
								</div>
								
								<div class="item">
									<strong>PRICE</strong> 
									<input id="PRICE1" name="PRICE1"  class="input01" placeholder="" size="15" value="<%=request.getParameter("PRICE1") %>" type="text">
									 ~ 
									<input id="PRICE2" name="PRICE2"  class="input01" placeholder="" size="15" value="<%=request.getParameter("PRICE2") %>" type="text">
								</div>

						<!-- <div class="form-item-wrap ui-range row">
							<div id="price-range" class="col-xs-12">
								<div class="col-xs-12">
									<input class="xx-control" type="text" name="priceRange[]"
										value="7000" size="22">
								</div>
								<div class="col-xs-12">
									<input class="xx-control" type="text" name="priceRange[]"
										value="298000" size="22">
								</div>
							</div>
							<div class="range-slider col-xs-12">
								슬라이드
								<div id="price-range-slider"
									class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
									aria-disabled="false">
									<div class="ui-slider-range ui-widget-header ui-corner-all"
										style="left: 0%; width: 0%;"></div>
									<a class="ui-slider-handle ui-state-default ui-corner-all"
										href="#" style="left: 5.03356%;"></a> <a
										class="ui-slider-handle ui-state-default ui-corner-all"
										href="#" style="left: 100%;"></a>
								</div>
							</div>
						</div> -->

						<div class="item">
								<strong>Sort by</strong> <select id="order_by" name="order_by" onchange="setOption(this)">
									<option value="" selected="selected">::: 기준선택 :::</option>
									<option value="">신상품 순</option>
									<option value="NAMELIST">상품명 순</option>
									<option value="ROWPRICE">낮은가격 순</option>
									<option value="HIGHPRICE">높은가격 순</option>
								</select>
							</div>
							<p class="button">
								<a href="javascript:fn_searchlist();">
								<img id="myImg" src="/3T/images/btn_search2.gif">
								</a>
								<!-- 
									<button type="img" id="btn_searchlist"><a href="javascript:fn_searchlist();">
									<img src="/3T/images/btn_search2.gif">
									</a></button> --> <br><br>
											
										</p>
							</fieldset>
						</div>
					<div class="searchResult">
						<p class="record">
							<hr>
						</p>
					</div>
					
					</div>
				</form>
				<!-- //참고 -->

				
				<div class="xans-element- xans-search xans-search-result">
				<ul class="prdList column4">
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
					</ul>
				</div>
		

	</div>
		
<%@ include file="/WEB-INF/include/include-body.jspf"%>
<script type="text/javascript">
/* 
$(document).ready(function() {
	$("a[name='searchname']").on("click", function(e){
        e.preventDefault();
        fn_searchname();
    });
});

 */
 function fn_search(pageNo) {
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='/goods/search' />");
		comSubmit.addParam("currentPageNo", pageNo);
		comSubmit.submit();
	} 

function setOption(obj) {
	 var params = $("#searchForm").serialize();
		console.log(params);
		  $.ajax({
		        url: "/3T/goods/search1",
		        type:"POST", 
		        data:params,
		        success: function (data){
		       		$("#changelist").html(data);
		       		console.log("date?"+data);
		       		
		        },
		        error: function() {
		            alert("ajax 통신 error");
		        }
		    });
		}

function fn_searchlist() {
	var params = $("#searchForm").serialize();
	console.log(params);
	  $.ajax({
	        url: "/3T/goods/search1",
	        type:"POST", 
	        data:params,
	        success: function (data){
	       		$("#changelist").html(data);
	       		console.log("date?"+data);
	       		
	        },
	        error: function() {
	            alert("ajax 통신 error");
	        }
	    });
	}
</script>
</body>
</html>