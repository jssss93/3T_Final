<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- wing_banner -->
<link href="<c:url value='/resources/css/wing_banner.css'/>"
	rel="stylesheet" type="text/css" />
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<style>
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
    width: 100%;
    padding: 10px 20px 0px 20px;
    height: auto;
}

#myImg2 {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
    width: 100%;
    height: auto;
    padding: 0px 50px 0px 50px;
}
.suk {
    position: relative;
    /* float: left; */
    padding-right: 4px;
    width: 33%;
    border-right: 0px solid #fff;
    border-left: 0px solid #fff;
    box-sizing: border-box;
    font-size: 11;
}
.han_img img {
    width: 100%;
}
.suk2 {
   width: 30%;
}
table {
    width: 95%!important;
}
.han12 {
    /* margin: 0px 0 0 27px; */
}
</style>
</head>

<body>
	<div>
		<table border="0" align="center" cellpadding="0" cellspacing="20">
			<tr>
				<td colspan=3 align="center"><img src="/3T/resources/images/mainline2.JPG" /></td>
			</tr>
			<tr>
				<c:forEach items="${New }" var="New" varStatus="stat" begin="0"	end="2">
					<td class="suk" align="center">
						<a href="#this" name="title">
							<img id="myImg2" src="/3T/resources/upload/${New.IMAGE.split(',')[0]}"> 
							<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${New.GOODS_NO }">
						</a>
					</td>
				</c:forEach>
			</tr>
		</table>
		<br><br>
		
		<table border="0" align="center" cellpadding="0" cellspacing="20" class="han12">
			<tr>
				<td colspan="3" align="center"><h1 class="abc">3T</h1><img src="/3T/resources/images/mainline.PNG" /></td>
			</tr>
			<tr>
				<c:choose>
					<c:when test="${fn:length(list) > 0}">
						<c:forEach items="${best }" var="list" varStatus="stat" begin="0" end="17">
							<c:if test="${stat.index%3==0}"><tr></tr></c:if>
							<td class="suk" align="center">
								<a href="#this" name="title">
									<img id="myImg" src="/3T/resources/upload/${list.IMAGE.split(',')[0] }"> 
									<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${list.GOODS_NO }">
								</a><br><br>
								${list.NAME }<br>
								KRW&nbsp;<fmt:formatNumber value="${list.PRICE }" pattern="#,###" />
							</td>
						</c:forEach>
					</c:when>
				</c:choose>
			</tr>
		</table>
		<br><br><br>
		
		
		<table border="0" align="center" cellpadding="0" cellspacing="20" class="han_img">
			<tr>
				<td colspan="3" align="center"><a href="main">
					<img src="/3T/resources/images/mainline4.png" /></a>
				</td>
			</tr>
		</table>
		<br><br><br>
		
		
		<table border="0" align="center" cellpadding="0" cellspacing="20">
			<tr>
				<td colspan=3 align="center"><img src="/3T/resources/images/mainline5.png" /></td>
			</tr>
			<tr>
				<c:choose>
					<c:when test="${fn:length(best) > 0}">
						<c:forEach items="${list }" var="best" varStatus="stat" begin="0" end="17">
							<c:if test="${stat.index%3==0}"><tr></tr></c:if>
							
							<!--여기에 li가 왜들어가? -->
							<li>
							
							<td class="suk" align="center">
								<a href="#this" name="title">
									<img id="myImg" src="/3T/resources/upload/${best.IMAGE.split(',')[0]}"> 
									<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${best.GOODS_NO }">
								</a> 
								<br><br>${best.NAME }
								<br>KRW&nbsp;<fmt:formatNumber value="${best.PRICE }" pattern="#,###" />
							</td>
						</c:forEach>
					</c:when>
				</c:choose>
		</table>
	<!-- 여기에 div 가 왜들어가? -->
	</div>
	<form id="commonForm" name="commonForm"></form>
	
	<script type="text/javascript">
	$(document).ready(function(){
            $("a[name='title']").on("click", function(e){ //제목 
                e.preventDefault();
                fn_openBoardDetail($(this));
            });
	});
	
        
        function fn_openBoardDetail(obj){
         	
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/goods/detail' />");
            comSubmit.addParam("GOODS_NO", obj.parent().find("#GOODS_NO").val());
           
            comSubmit.submit();
        }
    </script> 

</body>
</html>