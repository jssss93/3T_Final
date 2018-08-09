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
		cellpadding="0" cellspacing="6">
		<tr>
			<td colspan=3 align="center"> <img
				src="/3T/resources/images/mainline2.JPG" /></td>
		</tr>
		<tr>
		
		
		
		
		<c:choose>
			<c:when test="${fn:length(list1) > 0}">
				<c:forEach items="${list1 }" var="row1">
				
				<c:if test="row1.index 3 eq 0">

				</c:if>
				
				
				
				
				<td width="100" height="200" align="center"><a
						href="%{viewURL}">

						<img id="myImg"
							src="/3T/resources/images/${row1.GOODS_FILE_SAVENAME}"
							width="430" height="290">
					</a></td>
			</c:forEach>
			</c:when>

		
		</c:choose>
		

		</tr>
	</table>
	<br>
	<br>
	<table width="80%" border="0" align="center" cellpadding="0"
		cellspacing="25">

		<tr>
			<td colspan="3" align="center"><h1 class="abc">3T</h1><img
				src="/3T/resources/images/mainline.PNG" /></td>
		</tr>
		<tr>
		
		<c:choose>
			<c:when test="${fn:length(list) > 0}">
				<c:forEach items="${list }" var="list" varStatus="stat" begin="0" end="15">
				
				<c:if test="stat.index == 3">
					<tr></tr>
				</c:if>
				
				
				<td width="150" height="400" align="center">
				<a href="#this" name="title" >

						<img id="myImg"
							src="/3T/resources/images/${list.IMAGE.split(',')[0] }"
							width="500" height="570">
							<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${list.GOODS_NO }">
					</a><br> <br> ${list.NAME }<br>
					&nbsp;${list.PRICE }</td>			
			
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
		cellpadding="0" cellspacing="25">
		<tr>
			<td colspan=3 align="center"><img src="/3T/resources/images/mainline5.png" /></td>
		</tr>

		<tr>
		
		
		
		
		
		<c:choose>
			<c:when test="${fn:length(list2) > 0}">
				<c:forEach items="${list2 }" var="row2">
				
				<c:if test="row2.index 3 eq 0">

				</c:if>
				
				
				
				
				<td width="150" height="400" align="center"><a
						href="%{viewURL}">

						<img id="myImg"
							src="/3T/resources/images/${row.GOODS_FILE_SAVENAME}"
							width="450" height="570">
					</a><br> <br> ${row.GOODS_NO }<br>
					\&nbsp;${row.GOODS_PRICE }</td>
					
			
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