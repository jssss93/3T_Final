<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
/* 종합개수 카운트 */

function BuyCheck(index) {

	if (index == 1) {
    	document.form.action = '/3T/cart/Add/OnetoPaymentNow';
    }
    if (index == 2) {
       document.form.action = '/3T/cart/addCart';
    }
	if (index == 3) {
		alert('로그인 후 이용해주세요.');
	    document.form.action = 'loginAction';
	}
	if (index == 4) {
	   alert('관심상품으로 등록되었습니다.');
	   document.form.action = '/3T/wish/addWish';
	}
	   document.form.submit();
}

/*    function scroll_follow( id )

{

  $(window).scroll(function( ) //스크롤이 움직일때마다 이벤트 발생

  { 

      var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.

    

      $( id ).stop().animate({top:position+"px"}, 300); //해당 오브젝트 위치값 재설정

   });

}

 scroll_follow( "#scroll" );

    //스크롤이 생기도록  */
      
</script>
</head>

<br><br>
<br><br>
<br>
<center>
   <table width="1000" height="300" border="0" cellpadding="5"
      cellspacing="0">
      <body>
      <tr>
         <!-- 상품 메인 이미지-->

         <td height="490" align="center" valign="TOP"><img width="490"
            height="490" src="/3T/resources/images/${goodsoneImage.SAV_NAME}" /></td>


         <!-- 상품 상세 내용 -->
         <td>
            <form name="form" id="form" method="post">
            <!------------------------ 이미지 한개 SAV_NAME을 IMAGE란 이름으로 보냄 ----------------------------->
            <input type="hidden" name="IMAGE" id="IMAGE" value="${goodsoneImage.SAV_NAME }">
               <table class="font-price" border="0" cellpadding="0"
                  cellspacing="0">
                  <tr>
                     <td style="text-align: left; font-size: 18pt;" colspan="2">
                     <!------------------------  NAME ----------------------------->
                     <input type="hidden" name="NAME" id="NAME" value="${goodsBasic.NAME}">
                        <!-- 상품 이름 --> ${goodsBasic.NAME }
                     </td>
                  </tr>

                  <!-- 상품가격 텍스트 -->
                  <tr>
                     <td style="width: 280; font-size: 13pt;" colspan="2"><br>
                     <!------------------------  PRICE ----------------------------->
                     <input type="hidden" name="PRICE" id="PRICE" value="${goodsBasic.PRICE }">
                        <p></p> <!--상품 가격  --> KRW&nbsp; ${goodsBasic.PRICE }</td>
                  </tr>

                  <tr>
                     <td>
                     <!------------------------  COUNT는 ea[]로 보내고 COLOR랑 SIZE는 optno[]로 한꺼번에 보냄 ----------------------------->
                        <!-- 색상, 사이즈, 개수 선택옵션 --> <select id="option"
                        onchange="setOption(this)" style="width: 225px">
                           <option value="">-옵션 선택-</option>
                           <c:forEach var="goodsDetail" items="${goodsDetail}"
                              varStatus="stat">
                              <c:if test="${goodsDetail.COUNT ne 0}">

                                 <option
                                    value="${goodsDetail.COLOR }-${goodsDetail.GOODS_SIZE }"
                                    optnm="${goodsDetail.COLOR }-${goodsDetail.GOODS_SIZE }"
                                    stock="${goodsDetail.COUNT }" price="${goodsBasic.PRICE }"
                                    attribute_no="${goodsDetail.ATTRIBUTE_NO }">
                                    ${goodsDetail.COLOR } - ${goodsDetail.GOODS_SIZE }
                                    (${goodsDetail.COUNT }개)</option>
                              </c:if>



                              <c:if test="${goodsDetail.COUNT eq 0}">
                                 <option
                                    value="${goodsDetail.COLOR }-${goodsDetail.GOODS_SIZE }"
                                    optnm="${goodsDetail.COLOR }-${goodsDetail.GOODS_SIZE }"
                                    stock="0" price="0" disabled=""
                                    attributeno="${goodsDetail.ATTRIBUTE_NO }">
                                    ${goodsDetail.COLOR } - ${goodsDetail.GOODS_SIZE }(품절)</option>
                              </c:if>

                           </c:forEach>
                     </select>
                     </td>
                  </tr>

                  <!-- 사이즈, 색상, 개수출력 -->
                  <tr>
                     <td>
                        <div id="attribute">
                           <ul class="MK_inner-opt-cm" id="MK_innerOpt_01"></ul>
                           <div id="MK_innerOptTotal" class="good_total">
                              <p class="totalRight">
                                 <span class="MK_txt-total">TOTAL</span> <span id="MK_txt-won"
                                    data-price="">0원</span>
                              </p>
                           </div>
                        </div>
                     </td>
                  </tr>




                  <!-- BUY,ADD CART추가하기 -->
                  <tr>
                     <td colspan="2"><br /> <!-- 상품구매버튼 -->
                  </tr>
                  <tr>
                     <td colspan="2"><br /> <a><input name="Buy" style=""
                           src="/3T/resources/images/buy.PNG"
                           onmouseover="this.src='/3T/resources/images/buy1.png'"
                           onmouseout="this.src='/3T/resources/images/buy.PNG'"
                           onclick="BuyCheck(1);" type="image"
                           src="/3T/resources/images/buy.PNG" /> <input type="hidden"
                           name="GOODS_NO" id="GOODS_NO" value="${goodsBasic.GOODS_NO }" /></a>


                     </td>
                  <tr>
                     <td colspan="2" class="btnArea"><br> <!-- 장바구니버튼 --> <a><input
                           name="BuyCart"
                           onmouseover="this.src='/3T/resources/images/cart.PNG'"
                           onmouseout="this.src='/3T/resources/images/cart.PNG'"
                           onclick="BuyCheck(2);" type="image"
                           src="/3T/resources/images/cart.PNG" /></a>
                  </tr>
                  <tr/>

                  <tr>
                     <td colspan="2">
                        <!-- wishlist버튼 --> <a><input name="WishList"
                           onclick="BuyCheck(4);" type="image"
                           src="/3T/resources/images/wishlist.PNG" value="WishList" /></a>
                     </td>
                  </tr>
                  <tr class="board">
                     <td colspan="2">
                        <!-- 리뷰,q&a 하이퍼링크 추가 --> <a
                        href='Review_list.action?Goods_no=${resultClass.goods_no}'>REVIEW&nbsp;(
                           0 )</a> &nbsp;&nbsp;&nbsp;&nbsp; <a
                        href='qa_listAction.action?Goods_no=${resultClass.goods_no}'>QA&nbsp;(
                           0 )</a>
                     </td>
                  </tr>
                  <!-- 옷 정보 content -->

                  <tr>
                     <td>
						<!---------------------------------- CONTENT ------------------------------------->
                        <input type="hidden" name="CONTENT" id="CONTENT" value=" ${goodsBasic.CONTENT }">
                        <div
                           class="xans-element- xans-product xans-product-additional product_about ">
                           <pre>
                        <font color="#de1616">INFO</font>
                                ${goodsBasic.CONTENT }
                            </pre>

                        </div>
                     </td>
                  </tr>
               </table>
            </form>
         </td>
      </tr>

   </table>

   <!-- 상품 상세 이미지 -->
   <br> <br> <br>
   <table width="0" border="0" height="0" cellpadding="0" cellspacing="0">
      <c:forEach var="row" items="${goodsImage }">
         <tr>
            <td colspan="0" align="center"><img width="1000" height="1000"
               src="/3T/resources/images/${row.SAV_NAME }" /></td>
         </tr>
         <tr>
            <td><br> <br> <br> <br> <br> <br>
      </c:forEach>

   </table>

   <table width="0" border="0" height="0" align="CENTER" cellpadding="0"
      cellspacing="0">


   </table>
</center>
<br>
<br>
<br>
<br>
<br>
<br>
<table width="500" border="1" height="500" align="CENTER"
   cellpadding="0" cellspacing="0">
   <br>
   <br>
   <br>관련상품


</table>
<!-- 관련상품 -->
<br>
<table width="200" border="0" height="0" align="center" cellpadding="10"
   cellspacing="10">
   <tr>
      <td><c:forEach items="${goodsRel }" var="list" varStatus="stat"
            begin="0" end="15">

            <c:if test="stat.index == 3">
               <tr></tr>
            </c:if>


            <td width="150" height="400" align="center"><a href="#this"
               name="title"> <img id="myImg"
                  src="/3T/resources/images/${list.IMAGE.split(',')[0] }"
                  width="500" height="570"> <input type="hidden" id="GOODS_NO"
                  name="   " value="${list.GOODS_NO }">
            </a><br> <br> ${list.NAME }<br> &nbsp;${list.PRICE }</td>


         </c:forEach></td>
   </tr>



</table>
<!-- 상세보기REVIEW -->


<br>
<br>
<br>
<table width="55%" border="0" cellspacing="0" cellpadding="0"
   class="board_top">
   <tr>
      <td height="50"></td>
   </tr>
   <tr>
      <td align="center" class="text01 formbar"><h3>
            <font color="#000000">REVIEW</font><span> : WRITE YOUR
               REVIEWS~!</span>
         </h3></td>
   </tr>

   <tr>
      <td height="50"></td>
   </tr>
</table>
<table width="70%" align="center" border="0" cellspacing="0"
   cellpadding="1" class="board_review2">

   <tr>
      <td valign="middle"><strong>NO</strong></td>
      <td valign="middle"><strong>TITLE</strong></td>
      <td valign="middle"><strong>CONTENT</strong></td>
      <td valign="middle"><strong>NAME</strong></td>
      <td valign="middle"><strong>DATE</strong></td>
      <td valign="middle"><strong>HIT</strong></td>
   </tr>

   <c:if test="${fn:length(goodsDetail1) le 0}">
      <tr>
         <td colspan="6" style="text-align: center;">등록된 리뷰가 없습니다</td>
      </tr>
   </c:if>

   <c:forEach var="goodsDetail1" items="${goodsDetail1}" varStatus="stat">
      <tr>

         <td align="center">${goodsDetail1.REVIEW_NO}</td>

         <td><a href="#this" name="title2">${goodsDetail1.TITLE }</a> <input
            type="hidden" id="REVIEW_NO" value="${goodsDetail1.REVIEW_NO }">
            <input type="hidden" id="GOODS_NO" value="${goodsDetail1.GOODS_NO }">
            <!-- <details> <summary>내용보기</summary> -->
   
         <td align="center">${goodsDetail1.CONTENT}</td>

         <td align="center">${goodsDetail1.MEMBER_ID}</td>

         <td align="center">${goodsDetail1.REGDATE}</td>

         <td align="center">${goodsDetail1.READCNT}</td>

      </tr>

   </c:forEach>

</table>


<br></br>
<!-- Q & A 게시판 -->
<br>
<br>
<br>
<table width="50%" border="0" cellspacing="0" cellpadding="0"
   class="board_top">
   <tr>
      <td height="50"></td>
   </tr>
   <tr>
      <td align="center"><h3>
            <font color="#000000">Q & A</font><span> : HAVE A QUESTION ?</span>
         </h3></td>
   </tr>

   <tr>
      <td height="50"></td>
   </tr>
</table>
<table width="70%" align="center" border="0" cellspacing="0"
   cellpadding="0" class="board_review2">

   <tr>
      <td valign="middle"><strong>NO</strong></td>
      <td valign="middle"><strong>TITLE</strong></td>
      <td valign="middle"><strong>CONTENT</strong></td>
      <td valign="middle"><strong>NAME</strong></td>
      <td valign="middle"><strong>DATE</strong></td>
      <td valign="middle"><strong>HIT</strong></td>
   </tr>

   <c:if test="${fn:length(goodsDetail2) le 0}">
      <tr>
         <td colspan="6" style="text-align: center;">등록된 QA가 없습니다</td>
      </tr>
   </c:if>

   <c:forEach var="goodsDetail2" items="${goodsDetail2}" varStatus="stat">
      <tr>

         <td align="center">${goodsDetail2.QA_NO}</td>

         <td><a href="#this" name="title">${goodsDetail2.TITLE }</a> <input
            type="hidden" id="QA_NO" value="${goodsDetail2.QA_NO }"> <!-- <details> <summary>내용보기</summary> -->
            <input type="hidden" id="GOODS_NO" value="${goodsDetail2.GOODS_NO }">
            
         <td align="center">${goodsDetail2.CONTENT}</td>

         <td align="center">${goodsDetail2.MEMBER_ID}</td>

         <td align="center">${goodsDetail2.REGDATE}</td>

         <td align="center">${goodsDetail2.READCNT}</td>

      </tr>



   </c:forEach>


</table>



<br>
<br>
<br>
<br>
<br>
<br>

<script>
var totprice = 0;

var r_optno = [];



function setOption(obj) {

    var optno = $("#option option:selected").val();

   

    if (!optno || in_array(optno,r_optno)) return;



    var li = "<li class='MK_li_1_1'><span class='MK_p-name'>" +
    $("#option option:selected").attr("optnm") +
    "</span><input type='hidden' name='optno[]' value='" +
    optno +"'><input type='hidden' name='attribute_no[]' value='" +
    $("option:selected",$(obj)).attr("attribute_no") +
    "'><input type='hidden' class='mstock' value='" +
    $("option:selected",$(obj)).attr("stock") +
    "'><div class='MK_qty-ctrl' style='height:50px'><input type='text' name='ea[]' value='1' class='input_ea' size='2' maxlength='3'><span class='ea'><a class='MK_btn-up'><img src='/3T/resources/images/btn_num_up.gif' alt='' /></a><a class='MK_btn-dw'><img src='/3T/resources/images/btn_num_down.gif' alt='' /></a></span></div><span class='MK_price' data-price='"+$("option:selected",$(obj)).attr("price")+"'>" +($("option:selected",$(obj)).attr("price")) + "원</span><a href='#' optno='" + optno + "'class='MK_btn-del'><img src='/3T/resources/images/btn_close.gif' alt='' /></a></li>";





   

    $("#MK_innerOpt_01").append(li);

    r_optno.push(optno);

    var thisIdx = $(".input_ea").index(this);

    var inputEa = parseInt($(".input_ea").eq(thisIdx).val());

    change_ea(this,1);

    console.log("요기?"+inputEa);

    var price = parseInt($("option:selected",$('#option')).attr("price"));

    price = price*inputEa;

    price = parseInt(price);

    if(totprice != 0){

       totprice = $("#MK_txt-won").data("price");

    }

    totprice = totprice + price;

    console.log(totprice);

    $("#MK_txt-won").data("price",totprice);

    $("#MK_txt-won").html((totprice)+"원");

}

    $("#MK_innerOpt_01").on("click", "li a.MK_btn-del", function(){

    var ritem = $(this).attr("optno");

    var thisIdx = $(".MK_btn-del").index(this); 

     console.log("음"+thisIdx);

     var price = $(".MK_price").eq(thisIdx).data("price");

    console.log("zz"+price);

    var totprice = $("#MK_txt-won").data("price");

    totprice = totprice - price;

    $("#MK_txt-won").data("price",totprice);

    $("#MK_txt-won").html((totprice)+"원");

    

    r_optno = $.grep(r_optno,function(v){ return v != ritem; });

    $(".MK_li_1_1").eq(thisIdx).remove();

   });



   $("#MK_innerOpt_01").on("click", "li a.MK_btn-up", function(e) {

    var thisIdx = $(".MK_btn-up").index(this);    

    change_ea(this,1);

    var inputEa = parseInt($(".input_ea").eq(thisIdx).val());

    var mStock = parseInt($(".mstock").eq(thisIdx).val()); 

    var price = parseInt($("option:selected",$('#option')).attr("price"));

    $(".MK_price").eq(thisIdx).data("price",(price*inputEa));

    var total = $(".MK_price").eq(thisIdx).html((price*inputEa)+"원");

    console.log("오나욜");

    var totprice = $("#MK_txt-won").data("price");

    console.log(totprice);

    totprice = totprice + price;

    $("#MK_txt-won").data("price",totprice);

    $("#MK_txt-won").html((totprice)+"원");





    // 재고 수량 이상 주문 체크

    if(inputEa >= mStock) {

       alert(mStock+"개 이상 주문하실 수 없습니다.");

       change_ea(this,-1);

         inputEa = parseInt($(".input_ea").eq(thisIdx).val());

         var total = $(".MK_price").eq(thisIdx).html((price*inputEa)+"원");

    

         

       return false ;

    } 

   });

   $("#MK_innerOpt_01").on("keyup", "li input.input_ea", function(e){

       var thisIdx = $(".input_ea").index(this); 

       var mStock = parseInt($(".mstock").eq(thisIdx).val()); 

       var price = parseInt($("option:selected",$('#option')).attr("price"));

       var totprice = $("#MK_txt-won").data("price");



       

       $(this).val($(this).val().replace(/[^0-9]/g,""));



       if($(this).val() == "" || parseInt($(this).val()) <= 0) {

          $(this).val("1");

          return false ;

       }



       if(parseInt($(this).val()) > mStock) {

          alert(mStock+"개 이상 주문하실 수 없습니다.");

          $(this).val(mStock);

          var total = $(".MK_price").eq(thisIdx).html((price*parseInt($(this).val()))+"원");



          return false ;

       } else{

            var total = $(".MK_price").eq(thisIdx).html((price*parseInt($(this).val()))+"원");

            totprice = totprice + (price*(parseInt($(this).val())-1));

            $("#MK_txt-won").html((totprice)+"원");

        }

      });



      $("#MK_innerOpt_01").on("click", "li a.MK_btn-dw", function(e) {

       var thisIdx = $(".MK_btn-dw").index(this); 

       var inputEa = parseInt($(".input_ea").eq(thisIdx).val());

       

       if(inputEa == 1){

          alert("1개 이상 주문하셔야 합니다.");

          $(".input_ea").eq(thisIdx).val() == 1;   

          return false;

       } 

       change_ea(this,-1);

        inputEa = parseInt($(".input_ea").eq(thisIdx).val());

        var price = parseInt($("option:selected",$('#option')).attr("price"));

        $(".MK_price").eq(thisIdx).data("price",(price*inputEa));

        var total = $(".MK_price").eq(thisIdx).html((price*inputEa)+"원");

        var totprice = $("#MK_txt-won").data("price");

        totprice = totprice - price;

        $("#MK_txt-won").data("price",totprice);

        $("#MK_txt-won").html((totprice)+"원");

       return false ;

      });

      

      

   

      </script>

<script>

      

      

      function change_ea(obj,idx){

         var ea = parseInt($("input.input_ea",$(obj).parent().parent()).val()) + idx;

         if (ea<1){ alert("1개 이상을 주문하셔야 합니다"); return; }

         $("input.input_ea",$(obj).parent().parent()).val(ea);   

      }

      function in_array(val,arr){

         for (var i=0;i<arr.length;i++){ if (arr[i]==val) return true; }

         return false;

      }

    

    

    

    //attributeno는 attribute_no

    //inputEa는 count개수

    

    

    

    /* var x = document.getElementById("option").value;

    document.getElementById("attribute").innerHTML = "You selected: " + x;

  */ 
         
         
         
         
         <%-- /* 상세보기 review */
         <%@ include file="/WEB-INF/include/include-body.jspf"%>
             <script type="text/javascript">
            $("a[name='title2']").on("click", function(e) { //제목 
               e.preventDefault();
               fn_openBoardDetail($(this));
            });

         function fn_openBoardDetail(obj) {
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/review/detail' />");
            comSubmit.addParam("REVIEW_NO", obj.parent().find("#REVIEW_NO")
                  .val());
            comSubmitd
                  .addParam("GOODS_NO", obj.parent().find("#GOODS_NO").val());
            comSubmit.submit();
         }
         
         
         /* 상세보기 q&a */

               $("a[name='title']").on("click", function(e) { //제목 
                  e.preventDefault();
                  fn_openBoardDetail($(this));
               });
               
            function fn_openBoardDetail(obj) {
               var comSubmit = new ComSubmit();
               comSubmit.setUrl("<c:url value='/qa/detail' />");
               comSubmit.addParam("QA_NO", obj.parent().find("#QA_NO").val());
               comSubmit
                     .addParam("GOODS_NO", obj.parent().find("#GOODS_NO").val());
               comSubmit.submit();
            } --%>
         

      </script>
</body>
</html>