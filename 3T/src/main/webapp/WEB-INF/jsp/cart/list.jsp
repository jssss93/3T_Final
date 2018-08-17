<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>CART</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
</head>
<script>
	$(document).ready(function() {
		$("#addOrder").on("click", function(e) { //목록으로 버튼
			e.preventDefault();
			fn_addOrder();
		});
		$("#write").on("click", function(e) { //작성하기 버튼
			e.preventDefault();
			fn_Write();
		});
		
	});
	
	function fn_addOrder() {
		var comSubmit = new ComSubmit("frm");
		comSubmit.setUrl("<c:url value='/order/add' />");
		comSubmit.submit();
	}
	
	function fn_Write() {
		var comSubmit = new ComSubmit("frm");
		comSubmit.setUrl("<c:url value='/goods/write' />");
		comSubmit.submit();
	}
	
	
 	//F5키 막기
	window.onkeydown = function() {
		var kcode = event.keyCode;
		if(kcode == 8 || kcode == 116) event.returnValue = false;
	} 

 	
 
	 function comma(str) {
	    str = String(str);
	    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	}
	 
	//체크박스 단일 선택
 	var sum = 0;
 	var delivery = 0;
 	var totalSum =0;
 	
 	function checkedRows(index){
		var index = index;
		var tagName = "#checkbox"+index;
		
		//price 클래스의 value 값을 가져온다.
		var price = $(".price").eq(index).attr("value");
		var totprice = $(".totprice").eq(index).attr("value");
		
		price = parseInt(price);
		totprice = parseInt(totprice);
	     if($(tagName).is(":checked")){
	    	
	       	sum += totprice;
	       	
	       	if(sum>50000){
	       		delivery=3000;
	       	}else{
	       		delivery=0;
	       	}
	       	totalSum = sum + delivery;
	       	 
	       	$("#totalPrice").html(comma(sum)+" KRW");
	       	$("#delivery").html(comma(delivery)+" KRW");
	       	$("#totalSum").html(comma(totalSum)+" KRW");
	       	
		}else{
			
		    sum -=  totprice;
		    
		    if(sum>50000){
		    	delivery=3000;
	       	}else{
	       		delivery=0;
	       	}
		    
				totalSum = sum + delivery;
		       	
		       	$("#totalPrice").html(comma(sum)+" KRW");
		       	$("#delivery").html(comma(delivery)+" KRW");
		       	$("#totalSum").html(comma(totalSum)+" KRW");
		} 
	};
	
	//체크박스 다중 선택
	var chkCount = $("input[type=checkbox]").length ;
	
	function checkAll(){    
		if($("#chkBox").is(":checked")) {
			for(i=0;i<$("input[type=checkbox]").length-1;i++){
				if($("#checkbox"+i).is(":checked")){
				}
				else{
					$("#checkbox"+i).prop("checked",true);
					checkedRows(i); 
				}
			}
		} else{
			for(i=0;i<$("input[type=checkbox]").length-1;i++){
				if($("#checkbox"+i).is(":checked")){
					$("#checkbox"+i).prop("checked",false);
					checkedRows(i); 
				}
				else{
				}
			}
		} 
	}
</script>
<body>
<form id="frm">
	

	<table width="1000" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td height="20"></td>
		</tr>
		<tr align="center" bgcolor="#F9F9F9">
			<td width="50"><input type="checkbox" id="chkBox" onclick=checkAll()  /></td>
			<td width="130"><strong>IMAGE</strong></td>
			<td width="130"><strong>TITLE</strong></td>
			<td width="400"><strong>PRODUCT INFO</strong></td>
			<td width="80"><strong>PRICE</strong></td>
			<td width="80"><strong>QUANTITY</strong></td>
			<td width="80"><strong>배송구분</strong></td>
			<td width="80"><strong>TOTAL</strong></td>
			<td width="80"><strong>SELECT</strong></td>
		</tr>
		
		<c:choose>
				<c:when test="${fn:length(cartList) > 0}">
					<c:forEach items="${cartList }" var="row" varStatus="stat">
						<tr>
							<td align="center">
								<!-- CART_NO 를 넘겨서 ORDER 진행 전에 카트리스트를 선택하여 뽑아온다. -->
								<input type="checkbox" id="checkbox${stat.index}" name="CART_NO" value="${row.CART_NO}"
									onclick="javascript:checkedRows(${stat.index});">
							</td>
							<td align="center">
								<img width="50" height="50"
									src="/3T/resources/upload/${row.IMAGE.split(',')[0] }" />
							</td>	
							<td align="center">
								<table>	
									<tr>
										<td>
											<a href="/3T/goods/detail?GOODS_NO=${row.NAME }" name="title">${row.NAME }(${row.COLOR })</a>
											<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${row.GOODS_NO }">
										</td>
									</tr>
									<tr>
										<td>
											옵션 : ${row.GOODS_SIZE }
										</td>
									</tr>
								</table>
							</td>
							<td align="center">${row.CONTENT}</td>
							<td align="center" ><span class="price" value="${row.PRICE}">${row.PRICE} </span></td>
							<td align="center">${row.COUNT }</td>
							<td align="center">기본배송</td>
							<td align="center" ><span class="totprice" value="${row.PRICE*row.COUNT}">${row.PRICE*row.COUNT}</span></td>
							<td align="center">${row.CART_NO}</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>

		<tr>
			<td height="20"></td>
		</tr>
	</table>
	<table width="1000" border="1" cellspacing="0" cellpadding="3">
		<tr bgcolor="#F9F9F9">
			<td align="center" height="60" width="340"><font color="#5D5D5D">
					총 주문 금액 </font></td>
			<td align="center" width="340" ><font color="#5D5D5D">
					총 배송비</font></td>
					
			<td align="center" width="340"><font color="#5D5D5D">총
					결제 예정 금액</font></td>
		</tr>
		   
			<tr>
				<td width="340" align="center" ><font style="font-weight: bold;">
					<p id="totalPrice" >0 KRW</p></font></td>
				<td width="340" align="center"><font style="font-weight: bold;">
					<p id="delivery">0 KRW</p></td>
				<td align="center"><font style="font-weight: bold; color:'#FF0000'">
					<p id="totalSum">0 KRW</p></font></td>
			</tr>
		
	</table>
	<table width="1000" border="0" cellspacing="0" cellpadding="3">
		<tr>
			<td height="20"></td>
		</tr>
		<tr>
			<td colspan="7" align="center">
				<input type="button" value="선택 상품 주문"  onClick="select(0)">
				<a href="#this" class="btn" id="write">작성하기</a>
				<a href="#this" class="btn" id="addOrder">선택 상품 주문</a>
			</td>
			<td colspan="6" align="right">
				<input name="Main" type="submit" onClick="select(1)" value="쇼핑계속하기 ▶">
			</td>
		</tr> 
		
		
	</table>
</form>
</body>
</html>
