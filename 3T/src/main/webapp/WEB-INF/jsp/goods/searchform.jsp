<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>

<style type="text/css">
*, *:before, *:after {
    box-sizing: inherit;
   
}
</style>
</head>

<body>
	
		<div id="headerwrap"></div>

		<div id="contentwrap">

			<div id="contents">


				<div class="titleArea">
					<h2>search</h2>
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
								<!--
								<div class="item">
									<strong>Sort by</strong> <select id="order_by" name="order_by"
										fw-filter="" fw-label="검색정렬기준" fw-msg="">
										<option value="" selected="selected">::: 기준선택 :::</option>
										<option value="recent">신상품 순</option>
										<option value="name">상품명순</option>
										<option value="priceasc">낮은가격 순</option>
										<option value="price">높은가격 순</option>
										<option value="review">사용후기 순</option>
									</select>
								</div> -->
								<p class="button">
									<button type="button" id="btn_searchlist" name="list">
									<a href="javascript:fn_searchlist();">검색</a></button> 
									<ul class="xans-element- xans-search xans-search-orderby listType">
									<button type="button" id="btn_searchname" name="NAME">
									<a href="javascript:fn_searchname();">name</a></button> 
									<button type="button" id="btn_searchrowprice" name="RowPrice">
									<a href="javascript:fn_searchrowprice();">RowPrice</a></button>
									<button type="button" id="btn_searchhighprice" name="HighPrice">
									<a href="javascript:fn_searchhighprice();">HighPrice</a></button>
									</ul>			
										</p>
							</fieldset>
						</div>
						<%-- <div class="searchResult">
							<p class="record">
								showing all <strong>${CNT}${search.CNT}</strong> items
							</p>
							<ul
								class="xans-element- xans-search xans-search-orderby listType">
								
								<!-- <li class="xans-record-"><a href="/3T/goods/search2">
									<input type="image"  alt="new">
								</a></li>
								<li class="xans-record-"><a href="">name</a></li>
								<li class="xans-record-"><a href="">low price</a></li>
								<li class="xans-record-"><a href="">high price</a></li>
								<li class="xans-record-"><a href="">brand</a></li> -->
							</ul>
						</div> --%>
					</div>
				</form>
				<!-- //참고 -->

				<fieldset id="changelist">
				<div class="xans-element- xans-search xans-search-result">
					<!--
        $count = 40
    -->				<table cellspacing="10" cellpadding="10">
	
				
					
					<tr>
						<c:choose>
									<c:when test="${fn:length(searchlist) > 0 }">
						<c:forEach items = "${searchlist}" var="search" varStatus="stat">
						<c:if test="${stat.index%4==0}">
							<tr></tr>
						</c:if>
						<td>
							<div class="box" >
								<p class="prdImg">
								
									<a
										href="/product/detail.html?product_no=7009&amp;cate_no=60&amp;display_group=1"
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
										href="/product/detail.html?product_no=7009&amp;cate_no=60&amp;display_group=1"
										class=""> 
										<span style="font-size: 12px; color: #000000;">${search.NAME }</span></a>
								</p>
								<ul class="xans-element- xans-search xans-search-listitem">
									<li class=" xans-record-">
									<span style="font-size: 12px; color: #000000;">KRW ${search.PRICE}</span><span
										id="span_product_tax_type_text" style=""> </span></li>
								</ul>
							</div>
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
				</div>
				</fieldset>
			</div>
		</div>

<script type="text/javascript">
/* 
$(document).ready(function() {
	$("a[name='searchname']").on("click", function(e){
        e.preventDefault();
        fn_searchname();
    });
});

 */
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
function fn_searchname() {
	var params = $("#searchForm").serialize();
	console.log(CATEGORY);
	  $.ajax({
	        url: "/3T/goods/searchname",
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
function fn_searchrowprice() {
		var params = $("#searchForm").serialize();
		console.log(params);
		  $.ajax({
		        url: "/3T/goods/searchrowprice",
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
function fn_searchhighprice() {
	var params = $("#searchForm").serialize();
	console.log(params);
	  $.ajax({
	        url: "/3T/goods/searchhighprice",
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