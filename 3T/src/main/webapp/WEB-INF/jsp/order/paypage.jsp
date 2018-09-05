<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>

function open_win_noresizable(url, name) {
	var oWin = window
			.open(url, name,
					"scrollbars=no, status=no, resizable=no, width=700, height=500");


}

function onCallback (no, content) {
	console.log("select is ")
	console.log(no)
	console.log()
	
	$('#coupon_list').html(
		'<li>' +
		content + "원 할인 " +
		'<input type="hidden" value='+no+'>' +
		'</li>')
		
	$('#total_sale_price_view').html(
		content
		)
		
		
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
                  document.getElementById('mzipcode').value = data.zonecode; //5자리 새우편번호 사용
                  document.getElementById('maddr1').value = fullAddr;

                  // 커서를 상세주소 필드로 이동한다.
                  document.getElementById('maddr2').focus();
               }
            }).open();
   }
</script>

<script type="text/javascript">
   //F5키 막기
window.onkeydown = function() {
   var kcode = event.keyCode;
   if(kcode == 116) event.returnValue = false;
} 
   
function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

   var sum          = 0;
   var delivery       = 0;
   var totalSum       = 0;
   var pointSum       = 0;
   var discountPrice   = 0;
   var usePoint       = 0;
   var memberPoint      = ${memberInfo.POINT };
   var memberGrade      = ${memberInfo.GRADE };
   
function discount_Fun(){
      
   console.log("discount_Fun()시작!");
   if($("#usePoint").val()!=null){
      /* $("#usePoint").val("0"); */
      usePoint = $("#usePoint").val();
         
      if(usePoint > memberPoint){
         $("#usePoint").val("0");
         alert("보유 포인트보다 적은 금액을 입력해주세요");
         return false;
      }
      
      
         
      discountPrice=usePoint;
      console.log(discountPrice);
      
      totalSum=totalSum-discountPrice;
      
      $(".totalSum").html(comma(totalSum)+" KRW");
      $(".discount").html(comma(discountPrice)+" KRW");
      $(".totalSum2").val(totalSum);
      $(".memberPoint").val(memberPoint -usePoint);
      $(".usePoint2").val(usePoint);
   }
}

//체크박스 단일 선택
function checkedRows(index){
   var index = index;
   var tagName = "#checkbox"+index;
   
   //price 클래스의 value 값을 가져온다.
   var price       =    $(".price").eq(index).attr("value");
   var totprice   =   $(".totprice").eq(index).attr("value");
   var point      =    $(".point").eq(index).attr("value");
   
   price       =    parseInt(price);
   totprice    =    parseInt(totprice);
   point      =   parseInt(point);
   
   console.log("price:"+price);
   console.log("totPrice:"+totprice);
   console.log("point:"+point);
   
   
   
   
   
   
     if($(tagName).is(":checked")){
       
          sum       +=   totprice;
          pointSum   +=   point;
          
          if(sum>50000){
             delivery=0;
          }else{
             delivery=3000;
          }
          totalSum = sum + delivery - discountPrice;
          
          $(".totalPrice").html(comma(sum)+" KRW");
          $(".delivery").html(comma(delivery)+" KRW");
          $(".totalSum").html(comma(totalSum)+" KRW");
          $(".pointSum").html(comma(pointSum)+" KRW");
          $(".pointSum2").val(pointSum);
          $(".totalSum2").val(totalSum);
          //pointSum 도 추가해줄것.
          
      
   }else{
      
       sum       -=  totprice;
       pointSum   -=   point;
       if(sum>50000){
          delivery=0;
          }else{
             delivery=3000;
          }
       
         totalSum = sum + delivery - discountPrice;
             
             $(".totalPrice").html(comma(sum)+" KRW");
             $(".delivery").html(comma(delivery)+" KRW");
             $(".totalSum").html(comma(totalSum)+" KRW");
             $(".pointSum").html(comma(pointSum)+" KRW");
             $(".pointSum2").val(pointSum);
             $(".totalSum2").val(totalSum);
         //pointSum 도 추가해줄것.
   } 
     console.log("pointSum:"+pointSum);
     
};
//체크박스 다중 선택
var chkCount = $("input[type=checkbox]").length ;

function checkAll(){    
   console.log("checkAll실행");
   if($("#chkBox").is(":checked")) {
      for(i=0;i<$("input[type=checkbox]").length-4;i++){
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

function checkAll2(){    
   
   for(i=0;i<$("input[type=checkbox]").length-1;i++){
      if($("#checkbox"+i).is(":checked")){
      }
      else{
         $("#checkbox"+i).prop("checked",true);
         checkedRows(i); 
      }
   }
}


</script>
<title>3T</title>
<style type="text/css">
.gIndent10 {
   margin-left: 10px;
   font-size: 14;
}

.txtDel, .strike, .discount {
   text-decoration: line-through;
   font-weight: bold;
   font-size: 20;
   letter-spacing: -1;
}

.xans-order-form .totalArea .ec-base-table.total td .box {
   word-break: normal;
   font-size: 16;
   font-weight: bold;
}

.xans-order-form .totalArea .ec-base-table.total td .box strong .totalSum
   {
   text-decoration: line-through;
   font-weight: bold;
   font-size: 20;
   letter-spacing: -1;
   color: #f76560;
}

.xans-order-form .totalArea .ec-base-table.total td .box strong .totalPrice
   {
   text-decoration: line-through;
   font-weight: bold;
   font-size: 20;
   letter-spacing: -1;
}

.right td .discount {
   font-size: 11;
}

.xans-order-form .totalArea .ec-base-table.total th {
   padding: 11px 0 10px 18px;
   border: 1px solid #dfdfdf;
   border-bottom-width: 0;
   color: #353535;
   text-align: left;
   font-weight: normal;
   background-color: #fbfafa;
   border-left: 0;
   width: 10%;
}

.xans-order-form .totalArea .ec-base-table.total td {
   padding: 11px 10px 10px;
   border-top: 1px solid #dfdfdf;
   color: #353535;
   vertical-align: middle;
   font-size: 11;
}

.memberPoint {
   color: #f76560;
}

.total p .totalSum {
   color: #f76560;
   font-size: 15;
   font-weight: bold;
   padding: 12;
}

.total_t {
   margin: 15 0 0 0;
}
.span.ec-base-help, p.ec-base-help, ul.ec-base-help li{
    text-align: left;
}
div.ec-base-help{
    text-align: left;
}
.xans-order-form .totalArea .ec-base-table.total table {
    z-index: 2;
    border-color: #eee!important;
    margin-top: 0;
}
.info {
   margin: 12 0 0 0;
}
.info li {
   background: url(//img.echosting.cafe24.com/skin/base/common/ico_dash.gif) no-repeat 0 7px;
   padding: 0 0 0 9px;
}
.pointSum strong {
   color: #f76560;
}
div.member p {
   font-size: 11;
}
div.member p strong {
   font-size: 12;
}
</style>
</head>
<body>
   <div class="path">
      <span>현재 위치</span>
      <ol>
         <li><a href="/">홈</a></li>
         <li title="현재 위치"><strong>주문서작성</strong></li>
      </ol>
   </div>
    <br><br>
    <br><br>
    <br><br>
   <div class="titleArea">
      <h2>ORDER</h2>
   </div>

   <div class="xans-element- xans-order xans-order-form xans-record-">
      <div
         class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember  ">
         <div class="information">
            <h3 class="title">혜택정보</h3>
            <div class="description">
               <div class="member ">

                  <c:if test="${memberInfo.NAME !=null}">
                     <p>
                        <strong>${memberInfo.MEMBER_ID }</strong> 님은,
                        <c:if test="${memberInfo.GRADE ==1}">[Bronze]</c:if>
                        <c:if test="${memberInfo.GRADE ==2}">[Silver]</c:if>
                        <c:if test="${memberInfo.GRADE ==3}">[Gold]</c:if>
                        <c:if test="${memberInfo.GRADE ==4}">[VIP]</c:if>

                        등급 회원입니다.
                     </p>
                     <ul class="">
                        <li class=""><span class="">KRW 50,000</span> 이상 <span
                           class="">무통장입금</span> 구매시 <span> <c:if
                                 test="${memberInfo.GRADE ==1}">5%</c:if> <c:if
                                 test="${memberInfo.GRADE ==2}">10%</c:if> <c:if
                                 test="${memberInfo.GRADE ==3}">15%</c:if> <c:if
                                 test="${memberInfo.GRADE ==4}">20%</c:if>

                        </span>을 추가적립 받으실 수 있습니다.</li>
                     </ul>
                     <ul class="mileage">
                        <li><a href="/myshop/mileage/historyList.html">가용포인트 :
                              <strong><fmt:formatNumber value="${memberInfo.POINT}"
                                    pattern="#,###" /> P</strong>
                        </a></li>
                        <li><a href="/myshop/coupon/coupon.html">쿠폰 : <strong>0개</strong></a></li>
                     </ul>
                  </c:if>
                  <c:if test="${memberInfo.NAME ==null}">
                     <p>
                        <strong>${NON_MEMBER_ID }</strong> 님은, 비회원입니다.

                     </p>
                     <ul class="mileage">
                        <li>회원가입시 쿠폰 및 포인트 혜택을 받을수 있습니다.</li>
                     </ul>
                  </c:if>
               </div>

            </div>
         </div>
      </div>
      <!-- 국내배송상품 주문내역 -->
      <div class="orderListArea ">
         <div class="title">
            <h3>주문내역</h3>
         </div>

         <!-- 기본배송 -->
         <div class="ec-base-table typeList ">
            <table border="1" summary="">
               <caption>기본배송</caption>
               <colgroup>
                  <col style="width: 27px" class="">
                  <col style="width: 92px">
                  <col style="width: auto">
                  <col style="width: 98px">
                  <col style="width: 75px">
                  <col style="width: 98px">
                  <col style="width: 98px">
                  <col style="width: 85px">
                  <col style="width: 98px">
               </colgroup>
               <thead>
                  <tr>
                     <th scope="col" class=""><input type="checkbox" id="chkBox"
                        onclick="checkAll();"></th>
                     <th scope="col">이미지</th>
                     <th scope="col">상품정보</th>
                     <th scope="col">판매가</th>
                     <th scope="col">수량</th>
                     <th scope="col">적립포인트</th>
                     <th scope="col">배송구분</th>
                     <th scope="col">배송비</th>
                     <th scope="col">합계</th>
                  </tr>
               </thead>
               <tfoot class="right">
                  <tr>
                     <td class=""></td>
                     <td colspan="8"><span class="gLeft">[기본배송]</span> 상품구매금액 <strong
                        class="totalPrice">0 KRW </strong> + 배송비 <strong
                        class="delivery">3000 KRW </strong> -상품할인금액 <strong
                        class="discount">0 KRW </strong> = 합계 : <strong
                        class="txtEm gIndent10">(여기 빨간색 글자키워줘) <span
                           id="domestic_ship_fee_sum" class="totalSum">0 KRW</span>
                     </strong></td>
                  </tr>
               </tfoot>
               <form id="frm" action="/3T/order/insert">

                  <tbody
                     class="xans-element- xans-order xans-order-normallist center">
                     <c:choose>
                        <c:when test="${fn:length(list) > 0}">
                           <c:forEach items="${list }" var="row" varStatus="stat">
                              <tr class="xans-record-">
                                 <td class=""><c:choose>
                                       <c:when test="${row.WISHLIST_NO != null }">
                                          <input type="checkbox" id="checkbox${stat.index}"
                                             name="selected"
                                             value="${row.ATTRIBUTE_NO},${row.GOODS_NO },1"
                                             onclick="javascript:checkedRows(${stat.index});">
                                       </c:when>
                                       <c:otherwise>
                                          <input type="checkbox" id="checkbox${stat.index}"
                                             name="selected"
                                             value="${row.ATTRIBUTE_NO},${row.GOODS_NO },${row.COUNT}"
                                             onclick="javascript:checkedRows(${stat.index});">
                                       </c:otherwise>
                                    </c:choose></td>
                                 <td class="thumb"><a
                                    href="/3T/goods/detail?GOODS_NO=${row.GOODS_NO }"> <img
                                       width="75" height="75"
                                       src="/3T/resources/upload/${row.IMAGE.split(',')[0] }" />
                                 </a></td>
                                 <td class="left"><a
                                    href="/3T/goods/detail?GOODS_NO=${row.GOODS_NO }"> <strong>${row.NAME }</strong>
                                 </a>
                                    <div class="option ">[옵션:${row.COLOR }/${row.GOODS_SIZE }]</div>
                                 </td>
                                 <td class="right">
                                    <div>
                                       <span class="price" value="${row.PRICE }"><strong><fmt:formatNumber
                                                value="${row.PRICE }" pattern="#,###" /></strong></span>
                                    </div>
                                 </td>

                                 <td>${row.COUNT }<c:if
                                       test="${row.WISHLIST_NO != null }">1</c:if></td>

                                 <td><c:if test="${memberInfo.GRADE==1 }">
                                       <span class="point" value="${row.PRICE/10*0.5*row.COUNT}">
                                          <img
                                          src="//img.echosting.cafe24.com/design/common/icon_cash.gif">
                                          <fmt:formatNumber value="${row.PRICE/10*0.5*row.COUNT}"
                                             pattern="#,###" /> P
                                       </span>
                                    </c:if> <c:if test="${memberInfo.GRADE==2 }">
                                       <span class="point" value="${row.PRICE/10*1.0*row.COUNT}">
                                          <img
                                          src="//img.echosting.cafe24.com/design/common/icon_cash.gif">
                                          <fmt:formatNumber value="${row.PRICE/10*1.0*row.COUNT}"
                                             pattern="#,###" /> P
                                       </span>
                                    </c:if> <c:if test="${memberInfo.GRADE==2 }">
                                       <span class="point" value="${row.PRICE/10*1.5*row.COUNT}">
                                          <img
                                          src="//img.echosting.cafe24.com/design/common/icon_cash.gif">
                                          <fmt:formatNumber value="${row.PRICE/10*1.5*row.COUNT}"
                                             pattern="#,###" /> P
                                       </span>
                                    </c:if> <c:if test="${memberInfo.GRADE==3 }">
                                       <span class="point" value="${row.PRICE/10*2.0*row.COUNT}">
                                          <img
                                          src="//img.echosting.cafe24.com/design/common/icon_cash.gif">
                                          <fmt:formatNumber value="${row.PRICE/10*2.0*row.COUNT}"
                                             pattern="#,###" /> P
                                       </span>
                                    </c:if></td>





                                 <td>
                                    <div class="txtInfo">
                                       기본배송<br>
                                    </div>
                                 </td>
                                 <td>[조건]</td>
                                 <td class="right"><c:choose>
                                       <c:when test="${row.WISHLIST_NO != null }">
                                          <span class="totprice" value="${row.PRICE * 1}"> <strong>${row.PRICE }</strong>

                                          </span>
                                       </c:when>
                                       <c:otherwise>
                                          <span class="totprice" value="${row.PRICE *row.COUNT}">
                                             <strong><fmt:formatNumber
                                                   value="${row.PRICE*row.COUNT }" pattern="#,###" /></strong>
                                          </span>
                                       </c:otherwise>
                                    </c:choose></td>
                              </tr>
                           </c:forEach>
                        </c:when>
                        <c:otherwise>
                           <tr>
                              <td colspan="9">조회된 결과가 없습니다.</td>
                           </tr>
                        </c:otherwise>
                     </c:choose>
                  </tbody>
            </table>
         </div>
      </div>
      <ul class="ec-base-help controlInfo typeBtm">
         <li class="txtWarn txt11">상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</li>
      </ul>

      <!-- 배송 정보 -->
      <div class="orderArea">
         <div class="title">
            <h3>배송 정보</h3>
            <p class="required">
               <img
                  src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
                  alt="필수"> 필수입력사항
            </p>
         </div>
         <div class="ec-base-table typeWrite">
            <table border="1" summary="">
               <colgroup>
                  <col style="width: 139px;">
                  <col style="width: auto;">
               </colgroup>
               <!-- 비회원 결제 -->
               <tbody class="displaynone ec-shop-deliverySimpleNomemberForm"
                  style="display: table-row-group;">
                  <tr class="ec-orderform-NoMemberPasswdRow">
                     <th scope="row">주문조회 비밀번호 <img
                        src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
                        alt="필수"></th>
                     <td>(주문조회시 필요합니다. 4자에서 12자 영문 또는 숫자 대소문자 구분)</td>
                  </tr>
                  <tr class="ec-orderform-NoMemberPasswdRow">
                     <th scope="row">주문조회 비밀번호<br>확인 <img
                        src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
                        alt="필수"></th>
                     <td></td>
                  </tr>
               </tbody>
               <!-- 국내 배송지 정보 -->
               <tbody class="">
                  <c:if test="${memberInfo.NAME !=null}">
                     <tr class="">
                        <th scope="row">배송지 선택</th>
                        <td>
                           <div class="address">
                              <input id="sameaddr0" name="sameaddr0" fw-filter=""
                                 fw-label="1" fw-msg="" value="M" type="radio"> <label
                                 for="sameaddr0">회원 정보와 동일</label> <input id="sameaddr1"
                                 name="sameaddr1" fw-filter="" fw-label="1" fw-msg=""
                                 value="F" type="radio"> <label for="sameaddr1">새로운배송지</label>
                              <span class="recent ec-shop-RecentDelivery displaynone">
                                 최근 배송지 : </span>
                           </div>
                        </td>
                     </tr>
                  </c:if>
                  <tr>
                     <th scope="row">받으시는 분 <img
                        src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
                        alt="필수">
                     </th>
                     <td><input id="mname" name="RECIPIENT_NAME"
                        fw-filter="isFill" fw-label="수취자 성명" fw-msg=""
                        class="inputTypeText" placeholder="" size="15" value=""
                        type="text"></td>
                  </tr>
                  <tr>
                     <th scope="row">주소 <img
                        src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
                        alt="필수">
                     </th>
                     <td><input id="mzipcode" name="RECIPIENT_ZIPCODE"
                        fw-filter="isFill" fw-label="수취자 우편번호1" fw-msg=""
                        class="inputTypeText" placeholder="" size="6" maxlength="6"
                        readonly="1" value="" type="text"> <input type="button"
                        onclick="sample7_execDaumPostcode()" value="우편번호 찾기"> <br>
                        <input id="maddr1" name="RECIPIENT_ADDR1" type="text"> <span
                        class="addr1"></span><br> <input id="maddr2"
                        name="RECIPIENT_ADDR2" fw-filter="isFill" fw-label="수취자 주소2"
                        fw-msg="" class="inputTypeText" placeholder="" size="40"
                        value="" type="text"> <span class="grid">나머지주소</span> <span
                        class="grid displaynone">(선택입력가능)</span></td>
                  </tr>

                  <tr class="">
                     <th scope="row">TEL. <span class=""> <img
                           src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
                           alt="필수">
                     </span>
                     </th>
                     <td><select class="mphone1" name="mphone1">
                           <option value="010">010</option>
                           <option value="011">011</option>
                           <option value="016">016</option>
                           <option value="017">017</option>
                           <option value="018">018</option>
                           <option value="019">019</option>
                     </select>- <input class="mphone2" name="mphone2" maxlength="4"
                        fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호"
                        fw-alone="N" fw-msg="" size="4" value="" type="text">- <input
                        class="mphone3" name="mphone3" maxlength="4"
                        fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호"
                        fw-alone="N" fw-msg="" size="4" value="" type="text"></td>
                  </tr>
               </tbody>
               <!-- 이메일 국내/해외 -->
               <tbody
                  class="email ec-orderform-emailRow ec-shop-deliverySimpleForm">
                  <tr>
                     <th scope="row">이메일 <img
                        src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
                        alt="필수"></th>
                     <td><input id="memail1" name="oemail1" fw-filter="isFill"
                        fw-label="주문자 이메일" fw-alone="N" fw-msg="" class="mailId"
                        value="" type="text"> @<input id="memail2"
                        name="oemail2" fw-filter="isFill" fw-label="주문자 이메일"
                        fw-alone="N" fw-msg="" class="mailAddress" value="" type="text">
                        <select id="select_email" fw-filter="isFill" fw-label="주문자 이메일"
                        fw-alone="N" fw-msg="">
                           <option value="" selected="selected">- 이메일 선택 -</option>
                           <option value="naver.com">naver.com</option>
                           <option value="daum.net">daum.net</option>
                           <option value="nate.com">nate.com</option>
                           <option value="hotmail.com">hotmail.com</option>
                           <option value="yahoo.com">yahoo.com</option>
                           <option value="empas.com">empas.com</option>
                           <option value="korea.com">korea.com</option>
                           <option value="dreamwiz.com">dreamwiz.com</option>
                           <option value="gmail.com">gmail.com</option>
                           <option value="etc">직접입력</option>
                     </select>
                        <p class="gBlank5">
                           이메일을 통해 주문처리과정을 보내드립니다.<br> 이메일 주소란에는 반드시 수신가능한 이메일주소를 입력해
                           주세요.
                        </p></td>
                  </tr>
               </tbody>
            </table>
         </div>
      </div>








      <!-- 결제 예정 금액 -->
      <div class="title">
         <h3>결제 예정 금액</h3>
      </div>
      <div class="totalArea">
         <div class="ec-base-table typeList gBorder total">
            <table border="1" summary="">
               <caption>결제 예정 금액</caption>
               <colgroup>
                  <col style="width: 33.33%">
                  <col style="width: 33.33%" class="">
                  <col style="width: 33.33%">
               </colgroup>
               <thead>
                  <tr>
                     <th scope="col"><strong>총 주문 금액</strong></th>
                     <th scope="col" class=""><strong>- 총 </strong> <strong
                        id="total_addsale_text" class="">할인</strong></th>
                     <th scope="col"><strong>총 결제예정 금액</strong></th>
                  </tr>
               </thead>
               <tbody class="center">
                  <tr>
                     <td>
                        <div class="box txt16">
                           <strong> <span id="total_order_price_view"
                              class="totalPrice">여기도0</span>
                           </strong>KRW
                        </div>
                     </td>
                     <td class="option ">
                        <div class="box txt16">
                           <strong>-</strong> <strong> 
                           <span id="total_sale_price_view" class="discount">

							</span>
                           </strong>KRW
                        </div>
                     </td>
                     <td>
                        <div class="box txtEm txt16">
                           <strong>=</strong> <strong> <span
                              id="total_order_sale_price_view" class="totalSum">여기도0</span>
                           </strong>KRW
                        </div>
                     </td>
                  </tr>
               </tbody>
               </table>
               <table border="1" summary="">
               <tbody class="">
                  <tr>
                     <th scope="row">적립금</th>
                     <td>
                        <p>
                           <input type="text" id="usePoint" onblur="discount_Fun()">
                           원 (총 사용가능 적립금 : <strong class="memberPoint">${memberInfo.POINT }</strong>원)
                           <input type="hidden" name="USEPOINT" class="usePoint2">
                        </p>
                        <ul class="info">
                           <li>적립금은 최소 100 이상일 때 결제가 가능합니다.</li>
                           <li id="mileage_max_unlimit" class="">최대 사용금액은 제한이 없습니다.</li>
                           <li>적립금으로만 결제할 경우, 결제금액이 0으로 보여지는 것은 정상이며 [결제하기] 버튼을 누르면
                              주문이 완료됩니다.</li>
                        </ul>
                     </td>
                     <td>총 적립예정 포인트 : <span class="pointSum"> <strong><fmt:formatNumber
                                 value="0" pattern="#,###" /></strong>P

                     </span> <input type="hidden" name="ADDPOINT" class="pointSum2">
                     </td>
                  </tr>
               </tbody>
               <tbody class="">
                                    <tr>
                     <th scope="row">쿠폰</th>
                            <td>
								<a class="board_subject4" type="button" onclick="javascript:open_win_noresizable('/3T/order/couponList', write)" >
									쿠폰
								</a>
                                
                     		</td>
                    	<td>
                        	<ul id = "coupon_list" class="info">
                        
                        	</ul>	
                        </td>
                  </tr>
               </tbody>
            </table>
         </div>
      </div>
      <!-- 결제수단 -->
      <div class="title">
         <h3>결제수단</h3>
      </div>
      <div class="payArea">
         <div class="payment">
            <div class="method">
               <span class="ec-base-label"> <input id="addr_paymethod0"
                  name="PAYMENT" fw-filter="isFill" fw-label="결제방식" fw-msg=""
                  value="cash" type="radio" checked="checked"> <labelfor="addr_paymethod0">무통장
                  입금</labelfor>
               </span> <span class="ec-base-label"> <input id="addr_paymethod1"
                  name="PAYMENT" fw-filter="isFill" fw-label="결제방식" fw-msg=""
                  value="card" type="radio"> <label for="addr_paymethod1">카드
                     결제</label>
               </span> <span class="ec-base-label"> <input id="addr_paymethod2"
                  name="PAYMENT" fw-filter="isFill" fw-label="결제방식" fw-msg=""
                  value="cell" type="radio"> <label for="addr_paymethod2">휴대폰
                     결제</label>
               </span>
            </div>

            <div class="ec-base-table">
               <!-- 무통장입금 -->
               <table border="1" summary="" id="payment_input_cash"
                  style="display: table;">
                  <caption>무통장입금</caption>
                  <colgroup>
                     <col style="width: 139px">
                     <col style="width: auto">
                  </colgroup>
                  <tbody>
                     <tr>
                        <th scope="row">입금자명</th>
                        <td><input id="pname" name="DEPOSIT_NAME" fw-filter=""
                           fw-label="무통장 입금자명" fw-msg="" class="inputTypeText"
                           placeholder="" size="15" maxlength="20" value="" type="text"></td>
                     </tr>
                     <tr>
                        <th scope="row">계좌번호</th>
                        <td><input id="pname" name="DEPOSIT_BANK" fw-filter=""
                           fw-label="무통장 입금자명" fw-msg="" class="inputTypeText"
                           placeholder="" size="15" maxlength="20" value="" type="text"></td>
                     </tr>
                     <tr>
                        <th scope="row">입금은행</th>
                        <td><select id="bankaccount" name="DEPOSIT_" fw-filter=""
                           fw-label="무통장 입금은행" fw-msg="">
                              <option value="-1">::: 선택해 주세요. :::</option>
                              <option
                                 value="bank_04:437201-04-192634:서지우(애즈클로):국민은행:www.kbstar.com">국민은행:437201-04-192634
                                 서지우(애즈클로)</option>
                        </select>
                           <p class="gBlank5 ">
                              <a href="#none" id="btn_bank_go"><img
                                 src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_bank.gif"
                                 alt="은행사이트 바로가기"></a>
                           </p></td>
                     </tr>
                  </tbody>
               </table>
               <!-- 실시간 계좌이체 -->
               <table border="1" summary="" id="payment_input_tcash"
                  style="display: none;">
                  <caption>실시간 계좌이체</caption>
                  <colgroup>
                     <col style="width: 139px">
                     <col style="width: auto">
                  </colgroup>
                  <tbody>
                     <tr>
                        <th scope="row">예금주명</th>
                        <td><input id="allat_account_nm" name="allat_account_nm"
                           fw-filter="" fw-label="무통장 입금자명" fw-msg=""
                           class="inputTypeText" placeholder="" size="26" maxlength="30"
                           value="" type="text"></td>
                     </tr>
                     <tr>
                        <th scope="row"></th>
                        <td><input type="checkbox" name="flagEscrowUse"
                           id="flagEscrowUse0" value="T"><label
                           for="flagEscrowUse0"> 에스크로(구매안전)서비스를 적용합니다.</label></td>
                     </tr>
                  </tbody>
               </table>
               <!-- 에스크로(가상계좌) -->
               <table border="1" summary="" id="payment_input_icash"
                  style="display: none;">
                  <caption>에스크로(가상계좌)</caption>
                  <colgroup>
                     <col style="width: 139px">
                     <col style="width: auto">
                  </colgroup>
                  <tbody>
                     <tr>
                        <th scope="row">에스크로</th>
                        <td><input id="flagEscrowIcashUse0"
                           name="flagEscrowIcashUse" fw-filter="" fw-label="에스크로(구매안전)"
                           fw-msg="" value="T" type="checkbox"><label
                           for="flagEscrowIcashUse0"></label><label
                           for="flagEscrowIcashUse0">에스크로(구매안전)서비스를 적용합니다.</label></td>
                     </tr>
                  </tbody>
               </table>
               <!-- 무통장입금, 카드결제, 휴대폰결제, 실시간계좌이체 -->
               <div id="pg_paymethod_info" class="payHelp" style="display: block;">
                  <p id="pg_paymethod_info_shipfee" class="ec-base-help">최소 결제
                     가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</p>
                  <p id="pg_paymethod_info_pg" class="ec-base-help"
                     style="display: none;">소액 결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수
                     있습니다.</p>
               </div>
            </div>
         </div>

         <!-- 최종결제금액 -->
         <div class="total">
            <h4>
               <strong id="current_pay_name">무통장 입금</strong> <span>최종결제 금액</span>
            </h4>
            <p class="total_t">
               <span class="totalSum">0 KRW( 722번째줄도) </span> <input type="hidden"
                  name="TOTALPRICE" class="totalSum2">
            </p>
            <p class="paymentAgree" id="chk_purchase_agreement"
               style="display: block;">
               <input id="chk_purchase_agreement0" name="chk_purchase_agreement"
                  fw-filter="" fw-label="구매진행 동의" fw-msg="" value="T"
                  type="checkbox" style="display: block;"> <label
                  for="chk_purchase_agreement0">결제정보를 확인하였으며, 구매진행에 동의합니다.</label>
            </p>
            <div class="button">
               <a href="/3T/order/insert"> <input name="submit" type="submit"
                  style="width: 18em; font-family: 돋움; background-color: #121212; color: #FFFFFF; line-height: 5em; border-color: #121212;"
                  value="결제하기 " />
               </a>
            </div>
         </div>
      </div>
      </form>
      <!-- 이용안내 -->
      <div class="ec-base-help">
         <h3>이용안내</h3>
         <div class="inner">
            <h4>WindowXP 서비스팩2를 설치하신후 결제가 정상적인 단계로 처리되지 않는경우, 아래의 절차에 따라
               해결하시기 바랍니다.</h4>
            <ol>
               <li class="item1"><a href="javascript:;"
                  onclick="window.open('http://service-api.echosting.cafe24.com/shop/notice_XP_ActiveX.html','','width=795,height=500,scrollbars=yes',resizable=1);">안심클릭
                     결제모듈이 설치되지 않은 경우 ActiveX 수동설치</a></li>
               <li class="item2"><a
                  href="http://www.microsoft.com/korea/windowsxp/sp2/default.asp"
                  target="_blank">Service Pack 2에 대한 Microsoft사의 상세안내 </a></li>
               <li class="item3"></li>
            </ol>
            <!-- 크로스 브라우징 지원 -->
            <div class="">
               <h4>아래의 쇼핑몰일 경우에는 모든 브라우저 사용이 가능합니다.</h4>
               <ol>
                  <li class="item1"><strong>KG이니시스, KCP, LG U+를 사용하는
                        쇼핑몰일 경우</strong></li>
                  <li class="item2">결제가능브라우저 : 크롬,파이어폭스,사파리,오페라 브라우저에서 결제 가능<br>(단,
                     window os 사용자에 한하며 리눅스/mac os 사용자는 사용불가)
                  </li>
                  <li class="item3">최초 결제 시도시에는 플러그인을 추가 설치 후 반드시 브라우저 종료 후
                     재시작해야만 결제가 가능합니다.<br>(무통장, 휴대폰결제 포함)
                  </li>
               </ol>
            </div>
            <h4>세금계산서 발행 안내</h4>
            <ol>
               <li class="item1">부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달
                  10일까지만 요청하실 수 있습니다.</li>
               <li class="item2">세금계산서는 사업자만 신청하실 수 있습니다.</li>
               <li class="item3">배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</li>
               <li class="item4">[세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로
                  사업자등록증사본을 보내셔야 세금계산서 발생이 가능합니다.</li>
               <li class="item5">[세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수 있습니다.</li>
            </ol>
            <h4>부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경안내</h4>
            <ol>
               <li class="item1">변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신 주문에
                  대해서는 세금계산서 발행이 불가하며</li>
               <li class="item2">신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법 시행령 57조)</li>
               <li class="item3">상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만 세금계산서
                  발행이 가능함을 양지하여 주시기 바랍니다.</li>
            </ol>
            <h4>현금영수증 이용안내</h4>
            <ol>
               <li class="item1">현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체, 에스크로,
                  예치금)에 대해 발행이 됩니다.</li>
               <li class="item2">현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은 포함되지 않습니다.</li>
               <li class="item3">발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을 해야
                  합니다.</li>
               <li class="item4">현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에 따라
                  변경 될 수 있습니다.)</li>
               <li class="item5">현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</li>
            </ol>
         </div>
      </div>
   </div>



</body>
<script>

$(document).ready(function() 
   { 
      $("input:radio[name=sameaddr0]").click(function(){ 
          CopyInfo(); 
      }) 
      
      $("input:radio[name=sameaddr1]").click(function(){ 
                deleteInfo(); 
      }) 
      
      $("#select_email").on("change", function(){
         $('#memail2').val($(this).val());
      })
      
      $('#btn_payment').click(function () {
         e.preventDefault();
         fn_Insert();
      })
   });
   
   function fn_Insert() {
      var comSubmit = new ComSubmit();
      comSubmit.setUrl("<c:url value='/3T/order/insert' />");
      comSubmit.addParam("key", "value");
      comSubmit.submit();
   }
   
   function CopyInfo(){     
      $.ajax({  
         type : "POST",  
         url : "/3T/order/getMemberInfo",
         contentType: "application/x-www-form-urlencoded; charset=UTF-8",
         dataType: 'json', 
         success : function(json) {
            
            /* var jsonData=JSON.parse(json); */
            var jsonData=json;
            var PHONE="";  
            PHONE+=jsonData[0].PHONE;
            console.log(PHONE);
            
            $('#mname').val(jsonData[0].NAME);
            $('#mzipcode').val(jsonData[0].ZIPCODE);
            $('#maddr1').val(jsonData[0].ADDR1);
            $('#maddr2').val(jsonData[0].ADDR2);
            $('#memail1').val(jsonData[0].EMAIL.split('@')[0]);
            $('#memail2').val(jsonData[0].EMAIL.split('@')[1]);
            $(".mphone1").val(PHONE.substring(0,3));
            $('.mphone2').val(PHONE.substring(3,7));
            $('.mphone3').val(PHONE.substring(7,11));
            $("input:radio[name='sameaddr1']:radio").prop("checked", false); 
         },
         error : function(e) {
            alert('error' + e);
         }
      }); 
   }
   
   function deleteInfo(){
      
      $('#mname').val("");
      $('#mzipcode').val("");
      $('#maddr1').val("");
      $('#maddr2').val("");
      $('#memail1').val("");
      $('#memail2').val("");
      $(".mphone1").val("");
      $('.mphone2').val("");
      $('.mphone3').val("");
      $("input:radio[name='sameaddr0']:radio").prop("checked", false); 
   }
</script>
</html>