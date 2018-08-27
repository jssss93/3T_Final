<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/3T/user/order/common/css/css.css"   type="text/css">
<meta charset="UTF-8">
<title>주문확인</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<!--PG크로스브라우징필수내용 끝-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<link
   href="//fonts.googleapis.com/css?family=Lato:100,300,400,500,700,900,100italic,300italic,400italic,700italic,900italic"
   rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/css?family=Cabin" rel="stylesheet"
   type="text/css">
<link href="//fonts.googleapis.com/css?family=Cabin:700"
   rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/fonts/font-awesome.css">
<link
   href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css"
   rel="stylesheet">
<!--[if lte IE 8]>
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:200" />
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:400" />
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:500" />
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:700" />
<![endif]-->
<meta name="format-detection" content="telephone=no">
<script async="" src="//www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
   src="http://www.google-analytics.com/ga.js"></script>
<script
   src="https://connect.facebook.net/signals/config/829030643890604?v=2.8.25&amp;r=stable"
   async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script src="/js/jquery.gray.js"></script>
<!--gray IE 용-->
<script type="text/javascript" src="/ec-js/common.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script src="/js/jquery-1.11.2.min.js"></script>
<script src="/js/jquery-latest.js"></script>
<script src="/js/jquery.als-1.6.min.js"></script>
<!--[if IE]>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
    <![endif]-->
<!-- Facebook Pixel Code -->
<script>
   !function(f, b, e, v, n, t, s) {
      if (f.fbq)
         return;
      n = f.fbq = function() {
         n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
               .push(arguments)
      };
      if (!f._fbq)
         f._fbq = n;
      n.push = n;
      n.loaded = !0;
      n.version = '2.0';
      n.queue = [];
      t = b.createElement(e);
      t.async = !0;
      t.src = v;
      s = b.getElementsByTagName(e)[0];
      s.parentNode.insertBefore(t, s)
   }(window, document, 'script',
         'https://connect.facebook.net/en_US/fbevents.js');
   fbq('init', '829030643890604'); // Insert your pixel ID here.
   fbq('track', 'PageView');
</script>
<link rel="canonical" href="http://asclo.com/myshop/wish_list.html">
<link rel="alternate" href="http://m.asclo.com/myshop/wish_list.html">
<meta property="og:url" content="http://asclo.com/myshop/wish_list.html">
<meta property="og:site_name" content="애즈클로">
<meta property="og:type" content="website">
<link rel="shortcut icon" href="/web/upload/favicon_20141006131340.ico">
<meta http-equiv="ImageToolbar" content="No">
<script type="text/javascript"
   src="/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>

<script type="text/javascript">
   var EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA = {
      "common_member_id_crypt" : "06e6ed37c9632f9feec0c376a4be489a1804af56a3591b60dbad0c709afc52f7"
   };
</script>

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

<link rel="stylesheet" type="text/css"
   href="/ind-script/optimizer.php?filename=tZTBTgQhDIbvO159jromm6xXT559A4bpDMRCCS3RfXtx9aCZbGJm4EjTfoWfvwXHAeH4mCFlXrIJkFG4ZItgRWDOHBUsh8Dxrgbu4T_5aA_CVNRzPIz8sbGwqG5tSuaCeVupmpHwRqlJCZ7Z5Alef0NW8qAdimAWcP58fjgdT5DKSN4OTgOBTDhMKH6JIG8-Pl0ZgadCCOEijhO8e3HkRXswV7o2Iyez-LhsJ9df46IwGvG2ibAr4Hdg39vn6pjBEDW8VvVfPeDKtq24xXeAKjOpTx3IDqkHtk7xVKz2IH8Z3yj2UNmMHah7d8Bt8J9t31AE6iFuzbJNFuFPh7kQic2IsSVV0GTrXtBMe5bDmku8sPJ10j4B&amp;type=css&amp;k=d977bc3fd495ec22fc588cd6f0164d337be29e54&amp;t=1508869165">
<link rel="stylesheet" type="text/css"
   href="/ind-script/optimizer.php?filename=tdLNDcIwDAXgAcKVOQyHSmUExkgT50dN7CpOQN2ewAzmbL1PenqGxBUBnRmCTSDldb0t9wWOsZXsTOq1gHg0HiVHAtkzPcCJQGU_CkKxJ48OznaM3M7LPF1Bx9zYNv-kwJpoQuuxaYrSZ_fCkUP4C0uaassxdVORhqbq-U3a5m99U7L0w7rdRjSLJh-Yu-4fOKbXzGemw33dDw&amp;type=css&amp;k=3547638b5d8dfa97cc2055a0f80d87e900d03446&amp;t=1499901149">
<meta name="path_role" content="MYSHOP_WISHLIST">
<meta name="author" content="데일리룩의 정석, 남친룩, 오버핏, 루즈핏, 코디, 남성의류 쇼핑몰">
<meta name="description" content="데일리룩의 정석, 남친룩, 오버핏, 루즈핏, 코디, 남성의류 쇼핑몰">
<meta name="keywords"
   content="남성의류,남자옷,남자쇼핑몰,남자데일리룩,남자유니크쇼핑몰,데일리룩쇼핑몰,데일리룩,애즈클로,남자상의,남자코트,남자바지,오버핏,루즈핏,코트,데님자켓,청자켓,스키니팬츠,남자스키니,남자데님팬츠,OOTD,dailylook,린넨셔츠,남자여름코디,남자봄코디,남자가을코디,남자겨울코디">
<script
   src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/983431901/?random=1534993414719&amp;cv=9&amp;fst=1534993414719&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=25&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;sendb=1&amp;frm=0&amp;url=http%3A%2F%2Fwww.asclo.com%2Fmyshop%2Fwish_list.html&amp;ref=http%3A%2F%2Fwww.asclo.com%2Fmyshop%2Findex.html&amp;tiba=%EC%95%A0%EC%A6%88%ED%81%B4%EB%A1%9C&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" id="AuthSSLContainer" charset="utf-8"
   src="https://login2.cafe24ssl.com/crypt/AuthSSLManagerV2.php?auth_mode=decryptClient&amp;auth_callbackName=CAPP_ASYNC_METHODS.member.setDataCallback&amp;auth_string=oNksO1QIIqz%2BjMDqujEdyj4UJDBu7qCEtAZU9PW7zOcoZ%2FK3YnAknfOCYSmRw2hFrjd71RmJcBdW%2BZuoyEmrggZqdQi%2Bzv4eSNu%2FqRgheyUD5QhCxSrmPMr0rbXCK3UnQU%2BsMhdRVJKEZTwXX4fby6j6Xb2wgAmcwfklgrsbzuJ5QN%2BsN1n2BL6fbh4bf4vt8OXuews4oMZY4yXMkYAtnrHyOt7theCejLiA590ID7nJyTdbIl7IKQFwtKRIlxHp7zmdqu7HCLpt52SDG3ICtBza8j3HPB8UbA%2BvStjgSDKwx1u10e%2BxoLng3v4MHwKxvGC25dMH7uBM0RJ4PfwdlUdlTixmSeqaGSBg7VxZxtorj3fErpI%2BZMrx3RVU8XjBo1zWVopbI7BvU89pzqrH36ntOgSyyZF2zdBwyNLydc8yeg9w9Jauf5btDGUOVNnn5TIfSkSbiN6wECYpQ8uH0aqMSFDUt8q0nxB%2Fm%2F%2B9G7Of9VOcsSaSODGJojrgUg0n&amp;dummy=1534993415224"></script>

</head>
<body>
<div id="contentwrap" >
      <div id="contents">
         <div class="titleArea">
            
         </div>
         <!-- 장바구니 모듈 Package -->
         <div class="xans-element- xans-order xans-order-basketpackage ">
            <!--<p class="orderStep"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/img_step1.gif" alt="01 장바구니" /></p>-->
            <!-- 혜택정보 -->
            <!-- 탭 -->
            <div class="xans-element- xans-order xans-order-tabinfo ">
               <ul>
                  <li class=" "><a href="/order/basket.html?delvtype=B">환불현황</a></li>
               </ul>
               
            </div>
            <!-- 장바구니 비어있을 때 -->
            <!-- 일반상품 -->
            <div class="orderListArea row">
            <div class="col-sm-12">
               <div class="xans-element- xans-order xans-order-normtitle title ">
                  <h3>${MEMBER_ID}회원님의 환불 목록</h3>
               </div>
   
               <!-- 일반상품 (기본배송) -->
               <table border="1" summary="" class="xans-element- xans-order xans-order-normnormal boardList xans-record-" id="dataTables-example">
                  
                  <thead>
                     <tr role="row">
                        <th scope="col"><strong>ORDER_NO[ORDER_DATE]</strong></th>
                        <th scope="col" class="thumb">IMAGE</th>
                        <th scope="col" class="product">PRODUCT INFO</th>
                        <th scope="col" class="price">PRICE</th>
                        <th scope="col" class="quantity">QUANTITY</th>
                        <th scope="col" class="delivery">배송구분</th>
                        <th scope="col" class="mileage">state</th>
                        <th scope="col" class="total">total</th>
                     </tr>
                  </thead>
                  <tbody class="xans-element- xans-order xans-order-list">
                  <c:choose>
               <c:when test="${fn:length(refundList) > 0}">
                  <c:forEach items="${refundList }" var="row" varStatus="stat">
                  
                     <tr class="" role="row">
                        <td align="left" >
                           ${row.ORDER_NO } [<fmt:formatDate value="${row.REGDATE}" pattern="YY.MM.dd" />]
                        </td>
                        <td class="thumb">
                           <a href="/3T/goods/detail?GOODS_NO=${row.GOODS_NO }"><input type="hidden" value="${row.GOODS_NO }">
                              <img width="50" height="50"
                              src="/3T/resources/upload/${row.IMAGE.split(',')[0] }" />
                           </a>
                        </td>  
                        <td class="product">
                           <a href="/3T/goods/detail?GOODS_NO=${row.GOODS_NO }">
                           <input type="hidden" value="${row.GOODS_NO }">
                           <strong>${row.NAME }</strong> </a>
                           <ul class="xans-element- xans-order xans-order-optionall option">
                              <li class="xans-record-">
                                 [옵션: ${row.COLOR }/${row.GOODS_SIZE }] 
                              </li>
                           </ul>
                        </td>
                        <td>
                           <span class="price" value="${row.PRICE}">${row.PRICE} </span>
                        </td> 
                        <td>${row.COUNT }</td>
                        
                        <td class="delivery">기본배송</td>
                        <td>
                        <c:if test="${row.STATE eq 8}">환불물품확인중</c:if>
                        <c:if test="${row.STATE eq 9}">환불완료</c:if></td>
                        <td class="total"><strong>${row.PRICE * row.COUNT }</strong></td>
                        
                     </tr>
                     
                     </c:forEach>
               </c:when>
               <c:otherwise>
               <tr>
                     <td colspan="8">조회된 결과가 없습니다.</td>
                  </tr>
               </c:otherwise>
               </c:choose>
                  </tbody>
               </table>
               <!-- 일반상품 (업체기본배송) -->
               <!-- 일반상품 (개별배송) -->
               <!-- 일반상품 (해외배송) -->
            </div>
         </div>
         </div>
      </div>
   </div>
</body>
</html>