<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->

</head>

<body>

	
	

	<br>
	<table width="1100" border="0" height="300" align="center"
		cellpadding="0" cellspacing="20">
		<tr>
			<td colspan=3 align="center"> <img
				src="/3T/resources/images/mainline2.JPG" /></td>
		</tr>
		<tr>
		
		
		
		
		
				<c:forEach items="${New }" var="New" varStatus="stat" begin="0" end="2">
				
				
				
				
				
				
				<td width="100" height="200" align="center">
				<a href="#this" name="title">

						<img id="myImg"
							src="/3T/resources/images/${New.IMAGE.split(',')[0]}"
							width="430" height="290">
							<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${New.GOODS_NO }">
					</a></td>
			</c:forEach>
			

		</tr>
	</table>
	<br>
	<br>
	<table width="80%" border="0" align="center" cellpadding="0"
		cellspacing="100">

		<tr>
			<td colspan="3" align="center"><h1 class="abc">3T</h1><img
				src="/3T/resources/images/mainline.PNG" /></td>
		</tr>
		<tr>
		
		<c:choose>
			<c:when test="${fn:length(list) > 0}">
				<c:forEach items="${list }" var="list" varStatus="stat" begin="0" end="15">
				
				<c:if test="${stat.index%3==0}">
					<tr></tr>
				</c:if>
				
				
				<td width="150" height="400" align="center">
				<a href="#this" name="title" >

						<img id="myImg"
							src="/3T/resources/images/${list.IMAGE.split(',')[0] }"
							width="490" height="560">
							<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${list.GOODS_NO }">
					</a><br> <br> ${list.NAME }<br>
					KRW&nbsp;${list.PRICE }</td>			
			
			</c:forEach>
			</c:when>

		
		</c:choose>
		


		</tr>
	</table>
	<br>
	<br>
	<br>
	<table width="1300" border="0" height="300" align="center"
		cellpadding="0" cellspacing="0">
		<tr height="200">
			<td colspan="3" align="center"><a href="main"><img
					width="1350" src="/3T/resources/images/mainline4.png" /></a></td>
		
		</tr>
	</table>

	<br>
	<br>
	<br>
	<table width="80%" border="0" height="300" align="center"
		cellpadding="0" cellspacing="10">
		<tr>
			<td colspan=3 align="center"><img src="/3T/resources/images/mainline5.png" /></td>
		</tr>

		<tr>
		
		
		
		
		
		<c:choose>
			<c:when test="${fn:length(best) > 0}">
				<c:forEach items="${best }" var="best" varStatus="stat" begin="0" end="15">
				
				<c:if test="${stat.index%3==0}">
					<tr></tr>
				</c:if>
				
				
				
				
				<td width="150" height="400" align="center">
				<a href="#this" name="title">

				<img id="myImg" src="/3T/resources/images/${best.IMAGE.split(',')[0]}" width="490" height="560">
				<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${best.GOODS_NO }">
				</a>
				<br> <br> ${best.NAME }<br>
					KRW&nbsp;${best.PRICE }</td>
					
			
			</c:forEach>
			</c:when>

		
		</c:choose>
		
		
	</table>
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