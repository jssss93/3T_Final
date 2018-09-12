<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<head>
<!-- <script type="text/javascript">
function joinValidation(adminModifyMember){

	if(adminModifyMember.PASSWD.value==""){
		alert("비밀번호를 입력해 주세요.");
		return false;
	}
	else if(adminModifyMember.NAME.value==""){
		alert("이름을 입력해 주세요.");
		return false;
	}
	else if(adminModifyMember.ZIPCODE.value==""){
		alert("우편번호를 입력해 주세요.");
		return false;
	}
	else if(adminModifyMember.ADDR1.value==""){
		alert("주소를 입력해 주세요.");
		return false;
	}
	else if(adminModifyMember.ADDR2.value==""){
		alert("상세주소를 입력해 주세요.");
		return false;
	}
	else if(adminModifyMember.PHONE.value==""){
		alert("전화번호를 입력해 주세요.");
		return false;
	}
	else if(adminModifyMember.EMAIL.value==""){
		alert("이메일을 입력해 주세요.");
		return false;
	}
		alert("작성이 완료되었습니다.");
}

</script> -->
</head>



<div class="row" style="padding-left:15px;width:700px;">    
	<h1 class="page-header">주문 상세보기</h1>
</div>

<div class="row" style="padding-left:15px;width:700px;">
	<div class="panel panel-default">
		<div class="panel-heading" >주문 상세 페이지입니다.</div>
			<div class="panel-body">
				 <form:form id="adminModifyMember" name="adminModifyMember" action="/3T/admin/order/Update" method="post" onsubmit="return joinValidation(this)">	
					<input type="hidden" id="ORDER_NO" name="ORDER_NO" value="${ORDER_NO}">	
                       
				<div>
								<c:forEach var="list"  items="${list}" varStatus="stat">
										<input type="hidden" name="ORDER_NO" value="${list.ORDER_NO }">
											<tr class="gradeA even" role="row">
											 <div class="form-group">
                           					 <label>상품 번호</label>   	
											<input type="text" class="form-control" id="ORDER_NO" name="ORDER_NO" value="${list.ORDER_NO}" style="width:initial;"/>		
											</div>
											<div class="form-group">
                           					 <label>주문일</label>   	
											<input type="text" class="form-control" id="REGDATE}" name="REGDATE}" value="${list.REGDATE}" style="width:initial;"/>		
											</div>	
									
											<div class="form-group">
                           					 <label>회원 아이디</label> 
											<input type="text" class="form-control" id="MEMBER_ID" name="MEMBER_ID" value="${list.MEMBER_ID}" style="width:initial;"/>
											</div>
											 <div class="form-group">
                           					 <label>상품명</label>   	
											<input type="text" class="form-control" id="NAME" name="NAME" value="${list.NAME}" style="width:initial;"/>		
											</div>	
											 <div class="form-group">
                           					 <label>상품 색상</label> 						
											<input type="text" class="form-control" id="COLOR" name="COLOR" value="${list.COLOR }" style="width:initial;"/>
											</div>	
											<div class="form-group">
                           					 <label>상품 사이즈</label> 	
											<input type="text" class="form-control" id="GOODS_SIZE" name="GOODS_SIZE" value="${list.GOODS_SIZE }" style="width:initial;"/>
											</div>	
											<div class="form-group">
                           					 <label>상품 가격</label> 	
											<input type="text" class="form-control" id="PRICE" name="PRICE" value="${list.PRICE}" style="width:initial;"/>
											</div>
											<div class="form-group">
                           					 <label>상품 카운트?</label> 	
						
											<input type="text" class="form-control" id="COUNT" name="COUNT" value="${list.COUNT}" style="width:initial;"/>
											</div>
											
											<div class="form-group">
                           					 <label>상품 상태</label>
			
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
												</div>
											
										</tr>
										
									</c:forEach>
							</div>
                        </div>
                        
						<a href="/3T/admin/order/orderlist">
							<button type="button" class="btn btn-outline btn-default">목록으로</button>
						</a>		
			 </form:form> 
		</div>
	</div>
</div>
