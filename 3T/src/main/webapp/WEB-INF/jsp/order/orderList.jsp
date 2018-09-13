<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ include file="/WEB-INF/include/include-body.jspf"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!--PG크로스브라우징필수내용 끝-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<link href="//fonts.googleapis.com/css?family=Lato:100,300,400,500,700,900,100italic,300italic,400italic,700italic,900italic" rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/css?family=Cabin" rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/css?family=Cabin:700" rel="stylesheet" type="text/css">
<link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css rel="stylesheet">

<script type="text/javascript">

	$( document ).ready(function() {
		$('#dataTables-example').rowspan(0);
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
</script>
<title>ORDER_LIST</title>
<link href="<c:url value='/resources/css/cartTest.css'/>" rel="stylesheet" type="text/css" />
<style type="text/css">
#contentwrap {
    position: relative;
    float: left;
    width: 100%;
    /* height: 100%; */
}
</style>
</head>
<body>
	<form id="frm">
		<div id="contentwrap">
			<div id="contents">
				<div class="titleArea">
					<h2>ORDER</h2>
				</div>
				<div class="xans-element- xans-order xans-order-basketpackage ">
					<div class="xans-element- xans-order xans-order-tabinfo ">
						<ul id="cate">
							<li class=" "  			value="0"><a href="/3T/cart/list">		CART LIST</a></li>
							<li class=" "  			value="1"><a href="/3T/wish/wishlist">	WISH LIST</a></li>
							<li class="selected" 	value="2"><a href="/3T/order/list">		ORDER LIST</a></li>
						</ul>
						<p >*총 구매금액에 따라 회원 등급이 정해집니다.</p>
					</div>
					
					<div class="orderListArea">
						<div style="float: left ;">
		                	<fieldset>
								<legend>검색기간설정</legend>
									
									<c:if test="${MEMBER_ID!=null }">
									    <span>  
										    <a href="#this" id="searchToday" 	class="btnNormal" days="00"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1_on.gif" alt="오늘"></a> 
									        <a href="#this" id="searchWeek" 	class="btnNormal" days="07"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2_on.gif" alt="1주일"></a>
									        <a href="#this" id="searchMonth" 	class="btnNormal" days="30"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3_on.gif" alt="1개월"></a>
							            	<a href="#this" id="search3Month" 	class="btnNormal" days="90"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4_on.gif" alt="3개월"></a>
									        <a href="#this" id="search6Month" 	class="btnNormal" days="180"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5_on.gif" alt="6개월"></a>
									    </span>
									    
										<input id="datepicker1" name="date1"  readonly="readonly" size="10" value="2018-02-24" type="text">
									   ~<input id="datepicker2" name="date2"  readonly="readonly" size="10" value="2018-08-30" type="text">
										
										<select id="sel">
											<option value="0">총 주문 목록</option>
											<option value="1">주문 목록</option>
											<option value="2">환불 목록</option>
											<option value="3">교환 목록</option>
										</select>
										
										<a href="#this" name="search" id="search">
											<input alt="조회" id="order_search_btn" type="image"  src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/btn_search.gif"> 
										</a>   
									</c:if>
									<c:if test="${MEMBER_ID==null }">
									비회원조회<br>
									주문번호: <input type="text" id="orderNo">
									주문자명: <input type="text" id="orderName">
									<select id="sel">
											<option value="0">총 주문 목록</option>
											<option value="1">주문 목록</option>
											<option value="2">환불 목록</option>
											<option value="3">교환 목록</option>
									</select>
									<a href="#this" name="searchNonMem" id="searchNonMem">
										<input alt="조회"  type="image" id="order_search_btn" src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/btn_search.gif"> 
									</a>  
									</c:if>
									
							</fieldset> 
		                </div >
		                
						<div class="xans-element- xans-order xans-order-normtitle title ">
							<c:choose>
								<c:when test="${NON_MEMBER_ID==null }">
									<h3>${MEMBER_ID } 회원님의 주문 목록</h3>
									<br>
								</c:when>
								<c:otherwise>
									<h3>${NON_MEMBER_ID } (비)회원님의 주문 목록</h3>
									<br>
								</c:otherwise>
							</c:choose>
							
						</div>
						<table border="1" summary="" class="xans-element- xans-order xans-order-normnormal boardList xans-record-" id="dataTables-example">

							<thead>
								<tr>
									<th scope="col" style="width: 7%;">ORDER NO. </th>
									<th scope="col" style="width: 8%;">IMAGE</th>
									<th scope="col" style="width: 42%;">PRODUCT INFO</th>
									<th scope="col" style="width: 5%;">PRICE</th>
									<th scope="col" style="width: 7%;">QUANTITY</th>
									<th scope="col" style="width: 10%;">state</th>
									<th scope="col" style="width: 7%;">배송구분</th>
									<th scope="col" style="width: 7%;">배송비</th>
									<th scope="col" style="width: 10%;">total</th>
									
								</tr> 
							</thead>
							<tfoot> 
								<tr>
									<td colspan="10">
									</td>
								</tr>
							</tfoot> 
							<tbody class="xans-element- xans-order xans-order-list" id="listView">
								
								<c:choose>
									<c:when test="${fn:length(list) > 0}">
										<c:forEach items="${list }" var="row" varStatus="stat">

											<tr class="xans-record-">
												<td>
													${row.ORDER_NO }
												</td>
												<td class="thumb">
													<a href="/product/detail.html?product_no=8171&amp;cate_no=1">
														<img width="60" height="60"	src="/3T/resources/upload/${row.IMAGE.split(',')[0] }" />
													</a>
												</td>  
												<td class="product">
													<a href="/3T/goods/detail?GOODS_NO=${row.GOODS_NO }">
													<strong>${row.NAME }</strong> </a>
													<ul class="xans-element- xans-order xans-order-optionall option">
														<li class="xans-record-">
															[옵션: ${row.COLOR }/${row.GOODS_SIZE }] 
														</li>
													</ul>
												</td> 
												<td>
													<span class="price" value="${row.PRICE}"><fmt:formatNumber value="${row.PRICE}" pattern="#,###" /> </span>
												</td> 
												<td>
													<strong>${row.COUNT }</strong>
												</td>
												<td>
													<c:choose>
														<c:when test="${row.STATE==0 }">입금확인중	</c:when>
														<c:when test="${row.STATE==1 }">배송준비중</c:when>
														<c:when test="${row.STATE==2 }">배송중</c:when>
														<c:when test="${row.STATE==3 }">배송완료</c:when>
														<c:when test="${row.STATE==4 }">교환확인중</c:when>
														<c:when test="${row.STATE==5 }">교환준비중</c:when>
														<c:when test="${row.STATE==6 }">교환중</c:when>
														<c:when test="${row.STATE==7 }">교환완료</c:when>
														<c:when test="${row.STATE==8 }">환불물품확인중</c:when>
														<c:when test="${row.STATE==9 }">환불완료</c:when>
													</c:choose>
												</td>												
												<td class="delivery">기본배송</td>
												<td><span class="totprice" >-</span></td>
												<td class="total"><strong><fmt:formatNumber value="${row.PRICE * row.COUNT }" pattern="#,###" /></strong></td>
												
											</tr>

										</c:forEach>
									</c:when>
									
									<c:otherwise>
										<tr>
											<td colspan="4">조회된 결과가 없습니다.</td>
										</tr>
									</c:otherwise>
								</c:choose>
								
							</tbody>
						</table>
					</div>
    			</div>
			</div>
		</div>
	</form>
<script>
        $(function() {
        	
            //input을 datepicker로 선언
            $("#datepicker1").datepicker({
                dateFormat: 'yy-mm-dd' //Input Display Format 변경
                ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
                ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
                ,changeYear: true //콤보박스에서 년 선택 가능
                ,changeMonth: true //콤보박스에서 월 선택 가능                
                ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
                ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
                ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
                ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
                ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
                ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
                ,minDate: "-1Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
                ,maxDate: "-1D" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
            });                    
            
            
            
            
            $("#datepicker2").datepicker({
                dateFormat: 'yy-mm-dd' //Input Display Format 변경
                ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
                ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
                ,changeYear: true //콤보박스에서 년 선택 가능
                ,changeMonth: true //콤보박스에서 월 선택 가능                
                ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
                ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
                ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
                ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
                ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
                ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
                ,minDate: "-1Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
                ,maxDate: "+1D" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
            });  
            //초기값을 오늘 날짜로 설정
            $('#datepicker2').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)      
        });
</script>
 <script type="text/javascript">
 function returnStr(data) {
	 
		var str = "";
		str +="<tbody class='xans-element- xans-order xans-order-list' id='listView'>"
		
		$(data).each(function(){
			
			var list = this;
			if(list.STATE==0){list.STATE="입금확인중";}
			if(list.STATE==1){list.STATE="배송준비중";}
			if(list.STATE==2){list.STATE="배송중";}
			if(list.STATE==3){list.STATE="배송완료";}
			if(list.STATE==4){list.STATE="교환확인중";}
			if(list.STATE==5){list.STATE="교환준비중";}
			if(list.STATE==6){list.STATE="교환중";}
			if(list.STATE==7){list.STATE="교환완료";}
			if(list.STATE==8){list.STATE="환불물품확인중";}
			if(list.STATE==9){list.STATE="환불완료";}
			
			
	      	str += "<tr class='xans-record-'>"
	      	str += "	<td>"
	      	str += 		+list.ORDER_NO
	      	str += "	</td>"
	      	str += "	<td class='thumb'>"
	      	str += "	<a href='/product/detail.html?product_no=8171&amp;cate_no=1'>"
	      	str += "		<img width='50' height='50' src='/3T/resources/upload/"+list.IMAGE.split(',')[0]+"'>"
	      	str += "	</a>"
	      	str += " </td>"
	      	str += "<td class='product'>"
	      	str += "<a href='/product/detail.html?product_no=8171&amp;cate_no=1'>"
	      	str += "	<strong>"+list.NAME+"</strong> </a>"
	      	str += "<ul class='xans-element- xans-order xans-order-optionall option'>"
	      	str += "	<li class='xans-record-'>"
	      	str += "		[옵션: "+list.COLOR+"/"+list.GOODS_SIZE+"]" 
	      	str += "	</li>"
	      	str += "</ul>"
	      	str += "</td>"
	      	str += "<td>"
	      	str += "	<span class='price' value='"+list.PRICE+"'>"+list.PRICE+"</span>"
	      	str += "</td>" 
	      	str += "<td>"
	      	str += "	<strong>"+list.COUNT+"</strong>"
			str += "</td>"
			str += "<td class='mileage'>"+list.STATE+"</td>"
			str += "<td class='delivery'>기본배송</td>"
			str += "<td><span class='totprice' value='-'></span></td>"
			str += "<td class='total'><strong>"+list.PRICE*list.COUNT+"</strong></td>"
			str += "</tr>" 
		})
		str+="<br>"
		 
		return str;
		 
	}	
		
   
 function nonMemberAjax(no,name,cateNum){ 
	 
 	      	 $.ajax({
             url: "/3T/order/listSearch_nonMem",
             type : "post", 
             data: {"no"		:no,
             		"name" 		:name,
             		"cateNum"	:cateNum
             		},
             dataType: 'json',  
             success:function(data){
             	console.log("ajax서 다시끄내는데이터?:");
             	console.log("*************************");
             	console.log(returnStr(data));
             	$("#listView").replaceWith(returnStr(data));
             	$('#dataTables-example').rowspan(0); 
             }
          });  
 } 
 function ajaxTest(start,end,cateNum){
   	 $.ajax({
     url: "/3T/order/listSearch",
     type : "post", 
     data: {"start"		:start,
     		"end" 		:end,	
     		"cateNum"	:cateNum
     		},
     dataType: 'json',  
     success:function(data){
     	console.log("ajax서 다시끄내는데이터?:");
     	console.log("*************************");
     	console.log(returnStr(data));
     	$("#listView").replaceWith(returnStr(data));
     	$('#dataTables-example').rowspan(0);
     }
  });  
} 
 
$(document).ready(function() {
	 
	$("#search").on("click", function(e) { 
		var start 	=document.getElementById("datepicker1").value;
		var end		=document.getElementById("datepicker2").value;
		var sel = document.getElementById("sel");
		var cateNum = sel.options[sel.selectedIndex].value;
		
		e.preventDefault();
		ajaxTest(start,end,cateNum);
	});
	
	 $("#searchNonMem").on("click", function(e) { 
		 var no=$("#orderNo").val().substr(13,5);
		 var name=$("#orderName").val();
		 var cateNum = sel.options[sel.selectedIndex].value;
		e.preventDefault();
		nonMemberAjax(no,name,cateNum);
	}); 
	
	
	$("#searchToday").on("click", function(e) { 
		var startDate 	=	new Date();
		var endDate 	= 	new Date();
		var cateNum = sel.options[sel.selectedIndex].value;
		
		startDate.setDate(endDate.getDate()-1);
		
		var start		=	startDate.getFullYear()+'-'
							+((startDate.getMonth()+1<10)	? "0"+(startDate.getMonth()+1)  : startDate.getMonth()+1)+'-'
							+((startDate.getDate()+1<10) 		? "0"+startDate.getDate()+1 		: startDate.getDate()+1);
		var end			=	endDate.getFullYear()+'-'
							+((endDate.getMonth()+1<10) 	? "0"+(endDate.getMonth()+1)  	: endDate.getMonth()+1)+'-'
							+((endDate.getDate()+1<10) 		? "0"+endDate.getDate()+1 			: endDate.getDate()+1);
		
		console.log("1일전:"+startDate);
		e.preventDefault();
		ajaxTest(start,end,cateNum);
	}); 
	
	
	$("#searchWeek").on("click", function(e) { 
		var startDate 	=	new Date();
		var endDate 	= 	new Date();
		var cateNum = sel.options[sel.selectedIndex].value;
		
		startDate.setDate(endDate.getDate()-7);
		
		var start		=	startDate.getFullYear()+'-'
							+((startDate.getMonth()+1<10)	? "0"+(startDate.getMonth()+1)  : startDate.getMonth()+1)+'-'
							+((startDate.getDate()<10) 		? "0"+startDate.getDate() 		: startDate.getDate());
		var end			=	endDate.getFullYear()+'-'
							+((endDate.getMonth()+1<10) 	? "0"+(endDate.getMonth()+1)  	: endDate.getMonth()+1)+'-'
							+((endDate.getDate()<10) 		? "0"+endDate.getDate() 			: endDate.getDate());
		
		console.log("1주전:"+startDate);
		e.preventDefault();
		ajaxTest(start,end,cateNum);
	}); 
	
	
	$("#searchMonth").on("click", function(e) { 
		var startDate 	=	new Date();
		var endDate 	= 	new Date();
		var cateNum = sel.options[sel.selectedIndex].value;
		
		startDate.setMonth(endDate.getMonth()-1);
		
		var start		=	startDate.getFullYear()+'-'
							+((startDate.getMonth()+1<10)	? "0"+(startDate.getMonth()+1)  : startDate.getMonth()+1)+'-'
							+((startDate.getDate()<10) 		? "0"+startDate.getDate() 		: startDate.getDate());
		var end			=	endDate.getFullYear()+'-'
							+((endDate.getMonth()+1<10) 	? "0"+(endDate.getMonth()+1)  	: endDate.getMonth()+1)+'-'
							+((endDate.getDate()<10) 		? "0"+endDate.getDate() 			: endDate.getDate());
		
		console.log("1달전:"+startDate);
		e.preventDefault();
		ajaxTest(start,end,cateNum);
	}); 
	
	
	$("#search3Month").on("click", function(e) { 
		var startDate 	=	new Date();
		var endDate 	= 	new Date();
		var cateNum = sel.options[sel.selectedIndex].value;
		
		startDate.setMonth(endDate.getMonth()-3);
		
		var start		=	startDate.getFullYear()+'-'
							+((startDate.getMonth()+1<10)	? "0"+(startDate.getMonth()+1)  : startDate.getMonth()+1)+'-'
							+((startDate.getDate()<10) 		? "0"+startDate.getDate() 		: startDate.getDate());
		var end			=	endDate.getFullYear()+'-'
							+((endDate.getMonth()+1<10) 	? "0"+(endDate.getMonth()+1)  	: endDate.getMonth()+1)+'-'
							+((endDate.getDate()<10) 		? "0"+endDate.getDate() 			: endDate.getDate());
		
		console.log("3달전:"+startDate);
		e.preventDefault();
		ajaxTest(start,end,cateNum);
	}); 
	
	
	$("#search6Month").on("click", function(e) { 
		var startDate 	=	new Date();
		var endDate 	= 	new Date();
		var cateNum = sel.options[sel.selectedIndex].value;
		
		startDate.setMonth(endDate.getMonth()-6);
		
		var start		=	startDate.getFullYear()+'-'
							+((startDate.getMonth()+1<10)	? "0"+(startDate.getMonth()+1)  : startDate.getMonth()+1)+'-'
							+((startDate.getDate()<10) 		? "0"+startDate.getDate() 		: startDate.getDate());
		var end			=	endDate.getFullYear()+'-'
							+((endDate.getMonth()+1<10) 	? "0"+(endDate.getMonth()+1)  	: endDate.getMonth()+1)+'-'
							+((endDate.getDate()<10) 		? "0"+endDate.getDate() 			: endDate.getDate());
		
		console.log("6달전:"+startDate);
		e.preventDefault();
		ajaxTest(start,end,cateNum);
	}); 
	 	 
	
}); 
</script>
</body>
</html>