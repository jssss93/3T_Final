<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- wing_banner -->
<link href="<c:url value='/resources/css/wing_banner.css'/>"
   rel="stylesheet" type="text/css" />
   
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<!--PG크로스브라우징필수내용 끝-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<link
   href="//fonts.googleapis.com/css?family=Lato:100,300,400,500,700,900,100italic,300italic,400italic,700italic,900italic"
   rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Cabin" rel="stylesheet"
   type="text/css" />
<link href="//fonts.googleapis.com/css?family=Cabin:700"

   rel="stylesheet" type="text/css" />

<link
   href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css"
   rel="stylesheet" />
<!-- <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:200" />
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:400" />
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:500" />
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:700" /> -->

<meta name="format-detection" content="telephone=no" />
 
<link rel="canonical" href="http://asclo.com/myshop/index.html" />
<link rel="alternate" href="http://m.asclo.com/myshop/index.html" />
<meta property="og:url" content="http://asclo.com/myshop/index.html" />
<meta property="og:site_name" content="애즈클로" />
<meta property="og:type" content="website" />
<link rel="shortcut icon" href="/web/upload/favicon_20141006131340.ico" />
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>


<link href="<c:url value='/resources/css/mypage.css'/>" rel="stylesheet"
   type="text/css" />
<style type="text/css">
#Left {
   position: fixed;
   float: left;
   width: 13%;
   top: 0px;
   height: 100%;
   z-index: 9;
   background: none;
}

#Right {
   position: fixed;
   float: right;
   width: 13%!important;
   top: 0px;
   height: 100%!important;
   z-index: 9;
   background: none;
}
.left_sns {
   float: left;
   text-align: left;
   margin-right: 20px;
}
.left_sns li {
   display: inline-block;
   float: left;
   margin: 0 0 0 10px;
}
.leftsns {
    margin: 0 0 30px 40px;
    padding: 0;
    border-top: 0px #ddd solid;
    overflow: hidden;
}
.btn_top{
   position: fixed;
    right: -1px;
    bottom: 23%;
    clear: both;
    border: 1px #ddd solid;
    border-right: 0px #333 solid;
    z-index: 99;
    width: 30px;
    height: 30px;
}
.btn_bottom {
    position: fixed;
    right: -1px;
    bottom: 20%;
    clear: both;
    border: 1px #ddd solid;
    border-right: 0px #333 solid;
    z-index: 99;
    width: 30px;
    height: 30px;
    
}
.han1234 {
    margin: -15px 0 0 55px;
    z-index: 1;
}
.btn-default {
    padding: 4px 1px!important;
    width: 37%!important;
    height: 3%!important;
    margin: -23px 0 0 9!important;
}
.wing_prd_list {
   margin-top: -27px;
}
#right2 {
    position: fixed;
    float: right;
    right: 0px;
    width: 140px;
    top: 350px;
    height: 90%;
    /* z-index: 9; */
    background: none;
}

/* 우측 퀵메뉴 스타일 */

</style>
</head>
<body>



   <div id="#" style="margin: 0 auto;">
      <tiles:insertAttribute name="header" ignore="true" />
   </div>
   <!-- 검색 -->
   <nav>
      <div class="fullscreen_menu_button">
         <a class="btn-open" href="#"><img
            src="/3T/resources/images/search_btn.png"></a>
      </div>
   </nav>
   
   <div class="overlay" style="display: none;">
      <div class="wrap">

         <form id="searchBarForm" name="searchBarForm" action="/3T/goods/search" method="get" enctype="multipart/form-data" onsubmit="return validation2();">
            <input type="hidden" id="CATEGORY" name="CATEGORY" value="">
            <input type="hidden" id="PRICE1" name="PRICE1" value="">
            <input type="hidden" id="PRICE2" name="PRICE2" value="">
               
            <div class="xans-element- xans-layout xans-layout-searchheader ">
               <h2>
                  <span
                     class="xans-element- xans-layout xans-layout-logotop fullscreen ">
                     <img src="/3T/resources/images/3T2.png">
                  </span>
               </h2>
               <fieldset>
                  <legend>검색</legend>
                  <input id="keyword" name="keyword" class="inputTypeText" placeholder=""  type="text">
                  <input type="image" id="searchbutton" placeholder="SEARCH.." src="/3T/resources/images/btn_search.png" alt="검색"> &nbsp;
               </fieldset>
            </div>
         </form>
      </div>
   </div>


   <div>
      <div id="body" align="center" style="width: 80%; margin: 0 auto;">
         <tiles:insertAttribute name="body" ignore="true" />
      </div>
      <div id="footer">
         <tiles:insertAttribute name="footer" ignore="true" />
      </div>
   </div>


   <!--  왼쪽 메뉴 고정 바 -->
   <div id="left">
      <h1 class="xans-element- xans-layout xans-layout-logotop ">
         <a href="\3T\"><img src="/3T/resources/images/3T.PNG"></a>
      </h1>
   

      <!--로그인메뉴-->
       <%@ include file="/WEB-INF/include/include-body.jspf"%>
      <form id="frm">
      <div class="left_login">
         <div class="xans-element- xans-layout xans-layout-statelogoff ">
            <c:if test="${sessionScope.MEMBER_ID == null}">
               <a href="/3T/loginForm" class="log">login</a>/
               <a href="/3T/joinStep1">join</a>
            </c:if>
            <c:if test="${sessionScope.MEMBER_ID != null}">
               <a href="#this"id="logout" class="log">logout</a> 
            </c:if> 
            <br>
           <a href="/3T/order/list">order</a>/ <a href="/3T/member/mypage">mypage</a>
         </div>


      </div>
      </form>
      <!-- //left_login -->




      <div>
         <div id="category"
            class="xans-element- xans-layout xans-layout-category">
            <div class="position">
               <ul>
                  <c:url var="OUTER" value="/goods/catelist">
                     <c:param name="CATEGORY" value="OUTER" />
                  </c:url>

                  <li class="xans-record-"><a href="/3T/goods/catelist?CATEGORY=OUTER">OUTER</a></li>
                  <li class="xans-record-"><a href="/3T/goods/catelist?CATEGORY=SUIT">SUIT</a></li>
                  <li class="xans-record-"><a href="/3T/goods/catelist?CATEGORY=TOP">TOP</a></li>
                  <li class="xans-record-"><a href="/3T/goods/catelist?CATEGORY=SHIRT">SHIRT</a></li>
                  <li class="xans-record-"><a href="/3T/goods/catelist?CATEGORY=KNIT">KNIT</a></li>
                  <li class="xans-record-"><a href="/3T/goods/catelist?CATEGORY=BOTTOM">BOTTOM</a></li>
                  <li class="xans-record-"><a href="/3T/goods/catelist?CATEGORY=SHOES">SHOES</a></li>
                  <li class="xans-record-"><a href="/3T/goods/catelist?CATEGORY=ACC">ACC</a></li>
               </ul>
            </div>
         </div>

         <div class="xans-element- xans-layout xans-layout-boardinfo">
            <ul>
               <li class="xans-record-"><a href="/3T/notice/list">NOTICE</a></li>
               <li class="xans-record-"><a href="/3T/faq/list">FAQ</a></li>
               <li class="xans-record-"><a href="/3T/qa/list">Q&amp;A</a></li>
               <li class="xans-record-"><a href="/3T/review/list">REVIEW</a></li>
            </ul>
         </div>
            
         <div class="xans-element- xans-layout xans-layout-boardinfo">
            <ul>
               <li>
                  <strong class="xans-element- xans-layout xans-layout-footer ">
                       예금주 : 최종수(3T)<br>
                     신한 110-370-660054
                  </strong>
               </li>
            </ul>
         </div>
            
         <div class="leftsns">
            <ul class="left_sns">
               <li><a href="http://blog.naver.com/asclohi" target="_blank"><img src="/3T/resources/images/1.png"></a></li>
               <li><a href="https://www.instagram.com/hi880515/" target="_blank"><img src="/3T/resources/images/2.png"></a></li>
               <li><a href="https://www.facebook.com/asclocom"target="_blank"><img src="/3T/resources/images/3.png"></a></li>
               <li><a href="http://pf.kakao.com/_muhjE" target="_blank"><img src="/3T/resources/images/4.png"></a></li>
            </ul>
         </div>
      </div>
   </div>


   <!-- 오른쪽 메뉴 고정 바 -->
   <div id="right">
      <div class="right_menu">
         <ul>
            <li class="cart_menu">
                  <a href="/3T/cart/list" class="xans-element- xans-layout xans-layout-orderbasketcount ">CART</a>
            </li>
            <li class="cart_menu">
                 <a href="/3T/wish/wishlist" class="xans-element- xans-layout xans-layout-orderbasketcount ">WISHLIST</a>
            </li>
           <li class="cart_menu">
                 <a href="/3T/order/list" class="xans-element- xans-layout xans-layout-orderbasketcount ">ORDER</a>
            </li>
         </ul>
         <ul>
            <li class="dep1">
               <li>
                  <b class="xans-element- xans-layout xans-layout-footer ">010-6226-0533</b><br><br>
                  <strong>
                     mon-fri 10am-4:30pm<br>
                     lunch : 12:30-13:30<br>
                     sat, sun, holiday off
                  </strong>
               </li> 
         </ul><br>
         </div>
         </div>
            
      <div id="right2">
         <div class="wing_banner" id="wingBanner">
            <div class="wing_prd_wrap" id="wingRecentWrap" style="">
               <div class="hwrap" style="padding: 0 0 0 0;">
                  <strong class="tit"> 
                     <a href="#" id="wingRecentCount">
                     <span class="tx">최근 본 상품</span>
                  </strong>
               </div> 
               <br>         
               <br>
               <!-- 최근상품 리스트 시작. -->
               <div class="wing_prd_list" id="wingRecentPrdList">
                  <ul id="wingRecentPrd_1">
                     <c:forEach items="${CookieListMap }" var="row2" varStatus="stat">
                        <li class="wing_prd" id="wing_prd${stat.index }" >
                        
                        <input type="hidden" name="GOODS_NO" class="GOODS_NO2" id="GOODS_NO2${stat.index }" value="${row2.GOODS_NO }">
                        <input type="hidden" name="IMAGE"     class="IMAGE2"    id="IMAGE2${stat.index }"value="${row2.IMAGE }">
                        
                           <!-- 이미지 -->
                           <a href="/3T/goods/detail?GOODS_NO=${row2.GOODS_NO }" >
                              <span class="wing_prd_img">
                                 <img width="70" height="70" src="/3T/resources/upload/${row2.IMAGE}" style="position: relative; z-index: 1;" >
                              </span>
                           </a>
                           
                           <!-- 삭제버튼 -->
                           <div class="han1234" style="position: relative; z-index:2;" >
                           <a class="wing_btn_delete" id="CookiedeleteOne" type="button" onclick="javascript:ajaxDeleteOne(${stat.index});">
                              <img width="15" height="15" src="/3T/resources/images/hanb.PNG" >
                           </a>
                           </div>
                           
                        </li>
                        <br>
                     </c:forEach>
                        <!-- 전체삭제 -->
                        <c:if test="${fn:length(CookieListMap) > 1 }">
                           <li><a class="btn btn-default" id="CookiedeleteAll" type="button">전체삭제</a></li>
                        </c:if>
                  </ul>
                     
               </div>
            </div>
               
            <div class="btn_top" data-log-actionid-label="top" >
               <a href="#">
                  <img src="/3T/resources/images/버튼1.png" alt="페이지 상단으로 이동">
               </a>
            </div>
            <div class="btn_bottom">
               <a href="#footer" class="scroll"> 
                  <img src="/3T/resources/images/버튼2.png">
               </a>
            </div>
         </div>
      </div>
<script>
   Kakao.init('95db4ac62ef65afa94ce309801ff9014');
   $(document).ready(function() {
       $("#logout").on("click", function(e) {
          e.preventDefault();
          logout();
       });
    });
     
   function logout() {
      Kakao.Auth.logout();
      var comSubmit = new ComSubmit("frm");
      comSubmit.setUrl("<c:url value='/logout' />");
      comSubmit.submit();
   }
</script>   

<script>
   
   function ajaxDeleteOne(index){
      var index=index;
      var Goods_No    =$("#GOODS_NO2"+index).val();
      var Image      =$("#IMAGE2"+index).val();
      
//       var Goods_No    =$(".GOODS_NO2").eq(index).attr("value");
//       var Image      =$(".IMAGE2").eq(index).attr("value");
//       alert("GOODS_NO:"+Goods_No+"IMAGE:"+Image);

      $.ajax({
           url      : "/3T/goods/cookieDeleteOne",
           type    : "get",
           data   : {   "GOODS_NO"   :Goods_No,
                     "IMAGE"    :Image   
                       },
           success:function(){
              $("#wing_prd"+index).empty();
           }
      });  
   } 
   
   function ajaxDeleteAll(){
      $.ajax({
         url: "/3T/goods/cookieDeleteAll",
         type : "get", 
         success:function(){
               $("#wingRecentPrdList").empty();
         }
      });  
   } 

    $(document).ready(function () {
       /* $("#CookiedeleteOne").on("click", function(e) { 
          e.preventDefault();
          ajaxDeleteOne();
       }); */
       $("#CookiedeleteAll").on("click", function(e) { 
          e.preventDefault();
          ajaxDeleteAll();
       });
       
       
        $('.fullscreen_menu_button a').click(function () {
            $('.overlay').fadeToggle(200);
            $(this).toggleClass('btn-open').toggleClass('btn-close');
        });
        
        $("#moveupBtn").on("click", function(event) {

         // 이동 버튼을 클릭시 태그로 스크롤의 위치가 이동되도록 한다.


         // 1. 태그의 위치를 가지고 있는 객체를 얻어온다. => offset 객체
         var offset = $("#suk").offset();

         // offset은 절대 위치를 가져온다. offset.top을 통해 상단의 좌표를 가져온다.
         // position은 부모를 기준으로한 상대위치를 가져온다.
         $("html body").animate({
            scrollTop : offset.top
         }, 0);
      
        
         
         
      });


      
    });
    
   
   
   function validation2() {

         var frm = document.searchBarForm;

         if (frm.keyword.value == "" || frm.keyword.value.equals("") || frm.keyword.value == null) {
            alert("검색어를 입력해주세요.");
            return false;
         }
      }
   
   
   
   
   
   $('button').click(function() {
      alert('Clicked');
    });
   
   $('button').remove();
</script>


</body>
</html>