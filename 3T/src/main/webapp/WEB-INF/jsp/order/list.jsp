<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<link rel="stylesheet" href="/3T/user/order/common/css/css.css"	type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="1000" border="1" cellspacing="0" cellpadding="2">
		<tr>
			<td width="400">&nbsp;&nbsp;${MEMBER_ID} 회원님의 주문 신청서입니다.</td>
		</tr>
		
	</table>	
	
	<form id="frm">

		<table width="1000" border="0" cellspacing="0" cellpadding="2">
			<tr>
				<td height="20"></td>
			</tr>
			<tr>
				<td colspan="6" align="left" width="70"><h4>&nbsp;&nbsp;주문내역</h4></td>
			</tr>

			<tr align="center" bgcolor="#F9F9F9">
			<td width="50"><strong>ORDER_NO[ORDER_DATE]</strong></td>
			<td width="130"><strong>IMAGE</strong></td>
			<td width="130"><strong>TITLE</strong></td>
			<td width="400"><strong>PRODUCT INFO</strong></td>
			<td width="80"><strong>PRICE</strong></td>
			<td width="80"><strong>QUANTITY</strong></td>
			<td width="80"><strong>배송구분</strong></td>
			<td width="80"><strong>STATE</strong></td>
			<td width="80"><strong>TOTAL</strong></td>
		</tr>
		
		<c:choose>
			<c:when test="${fn:length(orderList) > 0}">
				<c:forEach items="${orderList }" var="row" varStatus="stat">
					<tr>
						<td align="center">
							${row.ORDER_NO } [${row.REGDATE}]
						</td>
						
						<td align="center">
							<img width="50" height="50" src="/3T/resources/upload/${row.IMAGE.split(',')[0] }" />
						</td>
							
						<td align="center">
							<table>	
								<tr>
									<td>
										<a href="/3T/goods/detail?GOODS_NO=${row.GOODS_NO }" name="title">${row.NAME }(${row.COLOR })</a>
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
						<td align="center">${row.STATE }</td>
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
	</form>
</body>
</html>