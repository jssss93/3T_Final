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
			document.form.action = 'Buy';
		}
		if (index == 2) {
			document.form.action = 'AddCart';
		}
		if (index == 3) {
			alert('로그인 후 이용해주세요.');
			document.form.action = 'loginAction';
		}
		if (index == 4) {
			alert('관심상품으로 등록되었습니다.');
			document.form.action = 'AddWish';
		}
		document.form.submit();
	}
	
/* 	function scroll_follow( id )
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

<center>
	<table width="1000" height="300" border="0" cellpadding="5" cellspacing="0">
		<body>
		<tr>
			<!-- 상품 메인 이미지-->
			
			<td height="490" align="center" valign="TOP"><img width="490" height="490" src="/3T/resources/images/${goodsoneImage.SAV_NAME}" /></td>
			

			<!-- 상품 상세 내용 -->
			<td>
				<form name="form" id="form" method="post">
					<table class="font-price" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td style="text-align: left; font-size: 18pt;" colspan="2">
								<!-- 상품 이름 --> ${goodsBasic.NAME }
							</td>
							</tr>

						<!-- 상품가격 텍스트 -->
						<tr>
							<td style="width: 280; font-size: 13pt;" colspan="2"><br>
								<p></p> <!--상품 가격  --> KRW&nbsp;  ${goodsBasic.PRICE }
								</td>				
						</tr>
						<!-- TOTAL -->
						
					<tr>
						<td>
						
								<select id="option" onchange="setOption(this)" style="width:225px">
                     <option value="">-옵션 선택-</option>
				<c:forEach var="goodsDetail" items="${goodsDetail}" varStatus="stat">
				<c:if test="${goodsDetail.COUNT ne 0}">

							 <option
							 value="${goodsDetail.COLOR }-${goodsDetail.GOODS_SIZE }"
							 optnm="${goodsDetail.COLOR }-${goodsDetail.GOODS_SIZE }"
							 
							 stock="${goodsDetail.COUNT }"
							 price="${goodsBasic.PRICE }"
							 kinds="${goodsDetail.ATTRIBUTE_NO }">
							 ${goodsDetail.COLOR } - ${goodsDetail.GOODS_SIZE }
							 (${goodsDetail.COUNT }개)</option>	
                </c:if>
                     
       
               <c:if test="${goodsDetail.COUNT eq 0}">
						 <option
						 value="${goodsDetail.COLOR }-${goodsDetail.GOODS_SIZE }"
						 optnm="${goodsDetail.COLOR }-${goodsDetail.GOODS_SIZE }"
						 stock="0" price="0" disabled=""
						 kinds="${goodsDetail.ATTRIBUTE_NO }">
						 ${goodsDetail.COLOR } - ${goodsDetail.GOODS_SIZE }
						 (품절)</option>
              </c:if>
				
               </c:forEach>
               </select>  
               </td>
						<td>
								<!-- +,-버튼 -->
								
						</td>
								  
								  
								   <!--  카운트 0이되면 품절이되는 카운트 추가해야됨
							 -----------------------------------
							 ----------------------------------
							 ---------------------------------- -->

							
					</tr>
						
						<!-- SIZE 텍스트, 텍스트박스 -->
						<tr><td>
					<div id="attribute">
							<ul class="MK_inner-opt-cm" id="MK_innerOpt_01"></ul>
                  	    <div id="MK_innerOptTotal" class="">
                     		  <p class="totalRight">
                         		 <span class="MK_txt-total">TOTAL</span> 
                         		 <span id="MK_txt-won" data-price="">0원</span>
                     		  </p>
                    	</div>
					</div>
			</td>
						</tr>
						
						
						<!-- color -->
						<tr>
							
						</tr>
						
						
						
						<!-- BUY,ADD CART추가하기 -->
						<tr>

								</tr>
								<tr>
									<td colspan="2"> 
									<br/>
										<!-- 상품구매버튼 --> <!-- 로그인 o --> 

											<input name="Buy" style="" src="/3T/resources/images/buy.PNG"
												onmouseover="this.src='/3T/resources/images/buy1.png'"
												onmouseout="this.src='/3T/resources/images/buy.PNG'"
												onclick="BuyCheck(1);" type="image" src="/3T/resources/images/buy.PNG"
												 />
										
									</td>

									<tr>
									<td colspan="2">
									<br>
										<!-- 장바구니버튼 --> <!-- 로그인 o --> 
											
												<input name="BuyCart"
													onmouseover="this.src='/3T/resources/images/cart.PNG'"
													onmouseout="this.src='/3T/resources/images/cart.PNG'"
													onclick="BuyCheck(2);" type="image"

													src="/3T/resources/images/cart.PNG" value="장바구니 추가" />
											
											
											
									

								</tr>
								
								<tr>
								<td colspan="2">
								<!-- wishlist버튼  로그인 o-->
								
								<input name="WishList" onclick="BuyCheck(4);" type="image" src="/3T/resources/images/wishlist.PNG"
								value="WishList"/>
								
								<!-- wishlist --> <!-- 로그인 x -->
								
							
								</td>
								<tr>
								<td colspan="2">
								<!-- 리뷰,q&a 하이퍼링크 추가 -->
								<a href='Review_list.action?Goods_no=${resultClass.goods_no}'>REVIEW&nbsp;( 0 )</a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a href='qa_listAction.action?Goods_no=${resultClass.goods_no}'>QA&nbsp;( 0 )</a>
								</td>
								</tr>
								
								<tr>
									<td align="left" colspan="2">
									<br>
										<!-- 옷 정보 --> <pre>
	                    <font color="#de1616">INFO</font>
                        ${goodsBasic.CONTENT }

                             
								</tr>
							</td>
							</body>
					</table>
				</form>
			</td>
		</tr>
		</body>
	</table>

	<!-- 상품 상세 이미지 -->
	<br> <br> <br>
	<table width="0" border="0" height="0"
		cellpadding="0" cellspacing="0">
		<c:forEach var="row" items="${goodsImage }">
			<tr>
			<td colspan="0" align="center">
						<img width="1000" height="1000" src="/3T/resources/images/${row.SAV_NAME }" />
			</td>
			</tr>
		<tr>
		<td>
		<br><br><br>
		<br><br><br>
		</c:forEach>
		
	</table>

	<table width="0" border="0" height="0" align="CENTER"
		cellpadding="0" cellspacing="0">

	
	</table>
</center>
<br><br><br>
		<br><br><br>
<table width="500" border="1" height="500" align="CENTER"
	cellpadding="0" cellspacing="0"><br><br><br>관련상품


</table>
<!-- 관련상품 -->
<br>
<table width="200" border="0" height="0" align="center" cellpadding="10"
	cellspacing="10">
	<tr>
		<td colspan=1 align="center"><h2 id="REVIEW" ></h2></td>
		<td>${goodsBasic.RELATED }</td>
	</tr>
		
		
			
</table>
<!-- 리뷰 게시판 -->
<br><br><br>
 <table width="1000" border="0" cellspacing="0" cellpadding="2">
 <tr>
			<td height="50"></td>
		</tr>
		<tr>
        <td align="center" class="text01 formbar"><h2>Review</h2></td>
		<tr>
			<td height="50"></td>
		</tr>
		</table>
		<table width="1000" border="0" cellspacing="0" cellpadding="1">
        
         <tr>
               <td align="right" colspan="5">
                <!-- 작성버튼 -->
                       
               </td>
            </tr>
      </table>
   
   <br></br>
<!-- Q & A 게시판 -->
<br>
<br>
<br>
        <table width="1000" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
		 <td align="center" class="text01 formbar"><h2>Q&A</h2></td>
		 </tr>
		<tr>
			<td height="50"></td>
		</tr>
		</table>

         <table width="1000" border="0" cellspacing="0" cellpadding="1">
        
         <tr>
               <td align="right" colspan="5">
                <!-- 작성버튼 -->
                        
               </td>
            </tr>

	</center>
</table>
<script>
		var totprice = 0;
		var r_optno = [];
		
		function setOption(obj) {
			 var optno = $("#option option:selected").val();
			 console.log(optno);
			 if (!optno || in_array(optno,r_optno)) return;
			 var li = "<li class='MK_li_1_1'><span class='MK_p-name'>" + $("#option option:selected").attr("optnm") + "</span><input type='hidden' name='optno[]' value='" + optno +"'><input type='hidden' name='kinds[]' value='" + $("option:selected",$(obj)).attr("kinds") + "'><input type='hidden' class='mstock' value='" +$("option:selected",$(obj)).attr("stock") + "'><div class='MK_qty-ctrl' style='height:50px'><input type='text' name='ea[]' value='1' class='input_ea' size='2' maxlength='3'><span class='ea'><a class='MK_btn-up'><img src='/3T/resources/images/btn_num_up.gif' alt='' /></a><a class='MK_btn-dw'><img src='/3T/resources/images/btn_num_down.gif' alt='' /></a></span></div><span class='MK_price' data-price='"+$("option:selected",$(obj)).attr("price")+"'>" +($("option:selected",$(obj)).attr("price")) + "원</span><a href='#' optno='" + optno + "'class='MK_btn-del'><img src='/3T/resources/images/btn_close.gif' alt='' /></a></li>";
			
			 
			 
			 
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
			 
			 
			 
			 
			 
			 
			 
			 
		    /* var x = document.getElementById("option").value;
		    document.getElementById("attribute").innerHTML = "You selected: " + x;
		  */ 
		

		
		 
		
	</script>
<!-- 컨트롤러  -->


</body>
</html>