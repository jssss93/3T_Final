<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Order</title>
<link rel="stylesheet" href="/3T/user/order/common/css/css.css"	type="text/css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample6_address').value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById('sample6_address2').focus();
					}
				}).open();
	}

	function sample7_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample7_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample7_address').value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById('sample7_address2').focus();
					}
				}).open();
	}

	function email_change() {

		if (document.Orderinformation.email.options[document.Orderinformation.email.selectedIndex].value == '0') {
			document.Orderinformation.ORDER_EMAIL2.disabled = true;
			document.Orderinformation.ORDER_EMAIL2.value = "";
		}
		if (document.Orderinformation.email.options[document.Orderinformation.email.selectedIndex].value == '9') {
			document.Orderinformation.ORDER_EMAIL2.disabled = false;
			document.Orderinformation.ORDER_EMAIL2.value = "";
			document.Orderinformation.ORDER_EMAIL2.focus();
		} else {

			document.Orderinformation.ORDER_EMAIL2.disabled = false;
			document.Orderinformation.ORDER_EMAIL2.value = document.Orderinformation.email.options[document.Orderinformation.email.selectedIndex].value;
		}

	}

	//주문자와 동일 
	function Copy() {
		if (document.getElementById("cb1").checked) {
			document.getElementById("recipient_name").value = document.getElementById("order_name").value;
			document.getElementById("sample6_postcode").value = document.getElementById("sample7_postcode").value;
			document.getElementById("sample6_address").value = document.getElementById("sample7_address").value;
			document.getElementById("sample6_address2").value = document.getElementById("sample7_address2").value;
			document.getElementById("recipient_phone1").value = document.getElementById("order_phone1").value;
			
		}
		if (document.getElementById("cb2").checked) {
			document.getElementById("recipient_name").value = null;
			document.getElementById("sample6_postcode").value = null;
			document.getElementById("sample6_address").value = null;
			document.getElementById("sample6_address2").value = null;
			document.getElementById("recipient_phone1").value = null;
			
		}
	}

	function sele(n) {
		if (n == 0) {
			document.form.action = "order_checkdelete.action"
		} 
		return false;
	}


    function CheckForm(Join){
        
        //체크박스 체크여부 확인 [
        var chk1=document.Orderinformation.checkbox_agree.checked;
   
        if(!chk1){
            alert('동의해 주세요');
            return false;
        } 
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
		    	
		       	$("#totalSum2").html(comma(totalSum)+" KRW");
		} 
	     $("#tSum").val(totalSum);
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
	
	$(document).ready(function() {
		$("#write2").on("click", function(e) { //작성하기 버튼
			e.preventDefault();
			fn_Write2();
		});
	});
	
	function fn_Write2() {
		var comSubmit = new ComSubmit("frm");
		comSubmit.setUrl("<c:url value='/order/insert' />");
		comSubmit.submit();
	}
</script>
</head>
<body >

	<table width="600" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td height="30"></td>
		</tr>
		<tr>
			<td align="left"><h2>Order</h2></td>
		</tr>
		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<table width="1000" border="1" cellspacing="0" cellpadding="2">
		<tr>
			<td width="50" rowspan="2" align="center">해택 정보</td>
			<td width="400">&nbsp;&nbsp;${session.MEMBER_ID} 회원님의 주문 신청서입니다.</td>
		</tr>
		<tr>
			<td width="400">&nbsp;&nbsp;보유쿠폰 : <font color="#FF0000">$
					개</font></td>
		</tr>
	</table>
	
	<form id="frm" action="insert">

		<table width="1000" border="0" cellspacing="0" cellpadding="2">
			<tr>
				<td height="20"></td>
			</tr>
			<tr>
				<td colspan="6" align="left" width="70"><h4>&nbsp;&nbsp;주문내역</h4></td>
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
		</tr>
		
		<c:choose>
			<c:when test="${fn:length(checkedCartList) > 0}">
				<c:forEach items="${checkedCartList }" var="row" varStatus="stat">
					<tr>
						<td align="center">
							<input type="checkbox" id="checkbox${stat.index}" name="selected" value="${row.ATTRIBUTE_NO},${row.GOODS_NO },${row.COUNT}"
								onclick="javascript:checkedRows(${stat.index});">
							<input type="hidden" name="ORDER_NO" value="${ORDER_NO }">
							
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
										
									</td>
								</tr>
								<tr>
									<td>
										옵션 : ${row.GOODS_SIZE }
									</td>
								</tr>
							</table>
						</td>
						
						<td align="center">${row.CONTENT} ${row.ATTRIBUTE_NO}</td>
						<td align="center" ><span class="price" value="${row.PRICE}">${row.PRICE} </span></td>
						<td align="center">${row.COUNT }</td>
						<td align="center">기본배송</td>
						<td align="center" ><span class="totprice" value="${row.PRICE*row.COUNT}">${row.PRICE*row.COUNT}</span></td>
					</tr>
				</c:forEach>
			</c:when>
				
			<c:otherwise>
				<tr>
					<td colspan="4">조회된 결과가 없습니다.</td>
				</tr>
			</c:otherwise>
			
			</c:choose>
			
			<tr align="left">
				<td colspan="6" bgcolor="#FFCBCB">
						&nbsp;&nbsp;&nbsp;⊙&nbsp;&nbsp;상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.
				</td>	
			</tr>

			<tr align="right">
				<td colspan="6"><input name="Main" type="button" value="메인페이지 ▶" onClick="javascript:location.href='main.action'"></td>
			</tr>
			<tr>
				<td height="20"></td>
			</tr>
		</table>	
	<!-- </form> -->
	
		<hr align="center" width="1000" color="#8C8C8C">
		<table width="1000" border="0" cellspacing="0" cellpadding="3">
			<tr>
				<td height="10"></td>
			</tr>
			<tr>
				<td height="39" align="left"><font style="font-weight: bold;">주문 정보</font></td>
				<td align="right"><font color="red" size="1">★</font><font color="#A6A6A6">필수입력사항</font></td>
			</tr>
			<tr>
				<td height="10"></td>
			</tr>
		</table>
	
	<!-- <form method="post" action="/3T/order/insert" name="Orderinformation" onSubmit="return CheckForm(this)"> -->
		<table width="1000" border="1" cellspacing="0" cellpadding="3">
			<tr>
				<td width="100" align="center" bgcolor="#F9F9F9">주문하시는분 <font color="red" size="1">★</font></td>
				<td width="400"><input type="text" name="ORDER_NAME" size="15" maxlength="12" value="${memberInfo.NAME}" id="order_name"></td>
			</tr>
			
			<tr>
				<td align="center" valign="top" bgcolor="#F9F9F9">주소 <font color="red" size="1">★</font></td>
				<td>
					<input type="text" name="ORDER_ZIPCODE"	id="sample7_postcode" value="${memberInfo.ZIPCODE}">
					<input type="button" onclick="sample7_execDaumPostcode()" value="우편번호 찾기">
					<br> 
					<input type="text" name="ORDER_ADDRESS1" id="sample7_address" value="${memberInfo.ADDR1}" size="100">
					<br> 
					<input type="text" name="ORDER_ADDRESS2" id="sample7_address2"	value="${memberInfo.ADDR2}" size="100">
				</td>
			</tr>
			
			<tr>
				<td width="50" align="center" bgcolor="#F9F9F9">휴대전화 <font	color="red" size="1">★</font></td>
				<td width="400">
					<input type="text" name="PHONE size="6" maxlength="4" id="order_phone1"	value="${memberInfo.PHONE}">
				</td>
			</tr>
			
			<tr>
				<td width="50" align="center" rowspan="2" bgcolor="#F9F9F9">이메일<font color="red" size="1">★</font>	</td>
				<td width="400">
					<input type="text" name="EMAIL" value="${memberInfo.EMAIL}" onfocus="this.value='';"	id="order_email1"> 
					
					<br>
					<font color="#A6A6A6">-이메일을 통해 주문처리과정을 보내드립니다.</font><br> 
					<font color="#A6A6A6">-이메일 주소란에는 반드시 수신가능한 이메일주소를 입력해 주세요</font></td>
			</tr>
		</table>

		<table width="1000" border="0" cellspacing="0" cellpadding="3">
			<tr>
				<td height="10"></td>
			</tr>
			<tr>
				<td height="39" align="left"><font style="font-weight: bold;">배송 정보</font></td>
				<td align="right"><font color="red" size="1">★</font><font color="#A6A6A6">필수입력사항</font></td>
			</tr>
			
			<tr>
				<td height="10"></td>
			</tr>
		</table>

		<table width="1000" border="1" cellspacing="0" cellpadding="3">
			<tr>
				<td width="100" align="center" bgcolor="#F9F9F9">배송지 선택</td>
				<td width="400"><input type="radio" id="cb1" onclick="Copy();" name="RECIPIENT_CHOICE" />
					<label for="cb1">주문자와 동일합니다.</label> <input type="radio" name="RECIPIENT_CHOICE" id="cb2" onclick="Copy();" />
					<label for="cb1">새로운배송지</label>
				</td>
			</tr>

			<tr>
				<td width="50" align="center" bgcolor="#F9F9F9">받으시는분 <font color="red" size="1">★</font></td>
				<td width="400">
					<input type="text" name="RECIPIENT_NAME" size="15" maxlength="12" id="recipient_name"></td>
			</tr>
			
			<tr>
				<td align="center" valign="top" bgcolor="#F9F9F9">주소 <font color="red" size="1">★</font></td>
				<td>
					<input type="text" name="RECIPIENT_ZIPCODE"	id="sample6_postcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" name="RECIPIENT_ADDR1" id="sample6_address" placeholder="주소" size="100"><br>
					<input type="text" name="RECIPIENT_ADDR2" id="sample6_address2" placeholder="상세주소" size="100">
				</td>
			</tr>
			
			<tr>
				<td width="50" align="center" bgcolor="#F9F9F9">휴대전화 <font	color="red" size="1">★</font></td>
				<td width="400">
					<input type="text" name="RECIPIENT_PHONE" size="6" maxlength="4" id="recipient_phone1">
				</td>
			</tr>
		</table>

		<table width="1000" border="0" cellspacing="0" cellpadding="3">
			<tr>
				<td height="10"></td>
			</tr>
			<tr>
				<td height="39" align="left"><font style="font-weight: bold;">결제 예정 금액</font></td>
			</tr>
			<tr>
				<td height="10"></td>
			</tr>
		</table>
		
		
		<table width="1000" border="1" cellspacing="0" cellpadding="3">
			<tr bgcolor="#F9F9F9">
				<td align="center" height="60" width="340"><font color="#5D5D5D">총 주문 금액 </font> 
					<input type="button" value=" 내역보기 >" >
				</td>
				<td align="center" width="340"><font color="#5D5D5D">총 할인 + 부가결제 금액</font></td>
				<td align="center" width="340"><font color="#5D5D5D">총 결제예정 금액</font></td>
			</tr>
			
			<tr>
				<td width="340" align="center"><font style="font-weight: bold;">
					<p id="totalPrice" >0 KRW</p></font>
				</td>
				<td width="340" align="center" ><font style="font-weight: bold;">
					<p id="delivery" >0 KRW</p></font>
				</td>
				<td align="center" ><font style="font-weight: bold;"	color="#FF0000">
					<p id="totalSum" >0 KRW</p></font>
					<input type="hidden" id="tSum" name="TOTALPRICE">
				</td>
				
			</tr>
		</table>
		
		
		<table width="1000" border="0" cellspacing="0" cellpadding="3">
			<tr>
				<td height="10"></td>
			</tr>
			<tr>
				<td height="39" align="left"><font style="font-weight: bold;">결제 수단</font></td>
			</tr>
			<tr>
				<td height="10"></td>
			</tr>
		</table>
		
		<table width="1000" border="1" cellspacing="0" cellpadding="3">
			<tr>
				<td width="830" height="50">&nbsp;&nbsp;&nbsp;
					<input type="radio" name="PAYMENT" value="무통장 입금" checked="checked" />	무통장 입금&nbsp;&nbsp;&nbsp; 
					<input type="radio" name="PAYMENT" value="카드 결제" />카드 결제
				</td>
				<td rowspan="2" valign="top">
					<table width="200" border="0" cellspacing="0" cellpadding="3">
						<tr>
							<td align="right" valign="top" width="500" colspan="2"><font style="font-weight: bold;">
								<h4>무통장 입금 최종결제 금액</h4></font>
							</td>
						</tr>
						
						<tr>
							<td align="center" width="40"><font style="font-weight: bold;" color="#FF0000">
								<p id="totalSum2">0 KRW</p></font>
							</td>
						</tr>
				
						<tr>
							<td align="center"><input type="checkbox" name="checkbox_agree" id="checkbox_agree" /></td>
							<td align="left"><font style="font-weight: bold;">
								<h4>결제정보를 확인하였으며, 구매진행에 동의합니다.</h4></font>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input name="submit"	type="submit" style="width: 22em; font-family: 돋움; background-color: #121212; color: #FFFFFF; line-height: 5em; border-color: #121212;" 	value="결제하기 " />
								<a href="#this" class="btn" id="write2">작성하기</a>
						</tr>
						<tr>
							<td height="20"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td style="padding: 3em;" valign="top">
					<table width="530" border="1" cellspacing="0" cellpadding="3">
						<tr>
							<td width="104" align="center" bgcolor="#F9F9F9">입금자명</td>
							<td><input type="text" name="DEPOSIT_NAME" size="30" value="최종수" /></td>
						</tr>
						<tr>
							<td width="104" align="center" bgcolor="#F9F9F9">입금은행</td>
							<td><input type="text" name="DEPOSIT_BANK" size="30" value="신한은행 " /></td>
						</tr>
					</table>
				</td>
			</tr>

		</table>
	</form>
	<br>
	
	<table width="1000" border="1" cellspacing="0" cellpadding="3">
		<tr>
			<td><font style="font-weight: bold;">무이자 할부 이용안내</font></td>
		</tr>
		
		<tr>
			<td height="70">
				&nbsp;&nbsp;&nbsp;- 무이자할부가 적용되지 않은 상품과 무이자 할부가
				가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에 대해 무이자할부가 적용되지 않습니다.<br>
				&nbsp;&nbsp;&nbsp;- 무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기
				바랍니다.
			</td>
		</tr>
	</table>
	
	<table width="1000" border="0" cellspacing="0" cellpadding="3">
		<tr>
			<td height="10"></td>
		</tr>
	</table>
	
	<table width="1000" border="1" cellspacing="0" cellpadding="3">
		<tr>
			<td><font style="font-weight: bold;">이용 안내</font></td>
		</tr>
		<tr>
			<td height="70">
				<h4>WindowXP 서비스팩2를 설치하신후 결제가 정상적인 단계로 처리되지 않는경우, 아래의 절차에 따라해결하시기 바랍니다.</h4>&nbsp;&nbsp;&nbsp; 
				1.<a href="javascript:;"	onclick="window.open('http://service-api.echosting.cafe24.com/shop/notice_XP_ActiveX.html','','width=795,height=500,scrollbars=yes',resizable=1);">
				안심클릭 결제모듈이 설치되지 않은 경우 ActiveX 수동설치</a> <br>&nbsp;&nbsp;&nbsp; 
				2.<a href="http://www.microsoft.com/korea/windowsxp/sp2/default.asp" target="_blank">Service Pack 2에 대한 Microsoft사의 상세안내 </a>
				<h4>아래의 쇼핑몰일 경우에는 모든 브라우저 사용이 가능합니다.</h4> &nbsp;&nbsp;&nbsp; 
				1.<strong>KG이니시스, KCP, LG U+를 사용하는 쇼핑몰일 경우</strong> <br>&nbsp;&nbsp;&nbsp; 
				2.결제가능브라우저 :크롬,파이어폭스,사파리,오페라 브라우저에서 결제 가능 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				(단,window os 사용자에 한하며 리눅스/mac os 사용자는 사용불가) <br>&nbsp;&nbsp;&nbsp;
				3.최초 결제 시도시에는 플러그인을 추가 설치 후 반드시 브라우저 종료 후 재시작해야만 결제가 가능합니다. <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				(무통장,휴대폰결제 포함)
			</td>
		</tr>
	</table>
</body>
</html>