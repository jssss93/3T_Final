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

	/* function sele(n) {
		if (n == 0) {
			document.form.action = "basket_checkdelete.action"
		} else {
			document.form.action = "OrderWrite.action";
		}
		return false;
	}

	function chkBox(bool) { // 전체선택/해제 
		var obj = document.getElementsByName("chk");
		for (var i = 0; i < obj.length; i++)
			obj[i].checked = bool;
		return itemSum(this.form);
		alert("1.");
	}


 //F5키 막기
	window.onkeydown = function() {
		var kcode = event.keyCode;
		if(kcode == 8 || kcode == 116) event.returnValue = false;
	} */
 
 
 //체크박스 선택
	var sum = 0;
 	var totSum = 0;
 	
 	
 	function checkedRows(index){
		var index = index;
		var tagName = "#checkbox"+index;
		//price 클래스의 value 값을 가져온다.
		var price = $("#price").eq(index).attr("value");
		var totprice = $("#totprice").eq(index).attr("value");
		
		price = parseInt(price);
		totprice = parseInt(totprice);
		
		console.log(typeof price);
		console.log(isNaN(price));
		console.log(price);
	    console.log(totprice);
	    
		
	    if($(tagName).is(":checked")){
	    	console.log("isNan(price)1:"+isNaN(price));
	    	console.log("isNan(sum):"+isNaN(sum));
	    	if(isNaN(price)==true){
	    		price=parseInt(price)
	    	}
	    	console.log("isNan(price)2:"+isNaN(price));
	       	sum=sum+price;
	       	totSum = totSum + totprice;
	       	//id 가 realtotalPrice인 곳에 sum 값 출력
		    /* $("#realtotalPrice").html(comma(sum)+"원"); */
		    $("#totalPrice").html(totSum+"원");
		}else{
		     sum = sum-price;
		     totSum = totSum - totprice;
		     /* $("#realtotalPrice").html(comma(sum)+"원"); */
		     $("#totalPrice").html(totSum+"원");
		}
	    console.log(sum);
	    console.log(totSum);
	   
	    console.log("-------");
	    
	};
</script>
<body>
<form name="form">
	<table width="600" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td height="30"></td>
		</tr>
		<tr>
			<td align="center" class="text01 formbar" >Basket</td>
		</tr>
		<tr>
			<td height="50"></td>
		</tr>
	</table>
	<table width="1000" border="1" cellspacing="0" cellpadding="2">
		<tr>
			<td width="50" rowspan="2" align="center">해택 정보</td>
			<td width="400">&nbsp;&nbsp;${session.MEMBER_ID }회원이십니다.</td>
		</tr>
		<tr>
			<td width="400">&nbsp;&nbsp;쿠폰 : <font color="#FF0000">0
					개</font></td>
		</tr>
	</table>

	<table width="1000" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td height="20"></td>
		</tr>
		<tr align="center" bgcolor="#F9F9F9">
			<td width="50"><input type="checkbox" value="" onclick=chkBox(this.checked) checked /></td>
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
								<input type="checkbox" id="checkbox${stat.index}" name="GOODS_KIND_NUMBER" value="${row.ATTRIBUTE_NO}"
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
											<input type="hidden" id="CART_NO" name="CART_NO" value="${row.CART_NO }">
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
							<td align="center" id="price" value="${row.PRICE}"></td>
							<td align="center">${row.COUNT }</td>
							<td align="center">기본배송</td>
							<td align="center" id="totprice" value="${row.PRICE*row.COUNT}"></td>
							<td align="center">세팅</td>
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
				<td width="340" align="center"><font style="font-weight: bold;">
							${TOTALPRICE} KRW</font></td>
				<td width="340" align="center"><font style="font-weight: bold;">
							+ KRW </font></td>
				<td align="center"><font style="font-weight: bold; color:'#FF0000'">
							= KRW </font></td>
			</tr>
		
	</table>
	<table width="1000" border="0" cellspacing="0" cellpadding="3">
		<tr>
			<td height="20"></td>
		</tr>
		<tr>
			<td colspan="7" align="center"><input name="submit" type="submit"
				value="선택 상품 주문" onclick="sele(1)"
				style="font-family: 돋움; background-color: #121212; color: #FFFFFF; border-color: #121212;"
				></td>
			<td colspan="6" align="right"><input name="Main" type="button"
				value="쇼핑계속하기 ▶"
				></td>
		</tr>
		<tr>
			<td width="30"></td>

			<td colspan="6">
				<h4>장바구니 이용안내</h4>
				<li class="item1">해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로
					결제해 주시기 바랍니다.</li>
				<li class="item2">해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로
					이동하여 결제하실 수 있습니다.</li>
				<li class="item3">선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.</li>
				<li class="item4">[쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
				<li class="item5">장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수
					있습니다.</li>
				<li class="item6">파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로
					교체됩니다.</li>
				<h4>무이자할부 이용안내</h4>
				<li class="item1">상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기] 버튼을
					눌러 주문/결제 하시면 됩니다.</li>
				<li class="item2">[전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한
					주문/결제가 이루어집니다.</li>
				<li class="item3">단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수
					없습니다.</li>
			</td>
		</tr>
		<tr>
			<td height="20"></td>
		</tr>
	</table>
	</form>
</body>
</html>
