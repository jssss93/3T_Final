<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

	
<style>
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

.abc {  font-size: 17px; color: #000000;}


table {
    width: 80%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
}
</style>
</head>
<br><br>
<br><br>
<body>
	<table  width="80%" border="0" height="300" align="center" 
		cellpadding="0" cellspacing="10">
		
		<tr height="60">
			<td align="left" valign="top"><strong>${CATEGORY}</strong></td>
		</tr>
		
		<tr>
		
			<td width="80%" colspan=6 align="center"><h1 class="abc">B&nbsp;E&nbsp;S&nbsp;T</h1></td>
		</tr>
		<tr height="40">
		
		</tr>
		
		<tr>
		<td width="50"></td>
			<c:forEach items="${bestlist }" var="row" varStatus="stat" begin="0" end="3">

				<c:if test="${stat.index%4==0}">
					<tr></tr>
				</c:if>



				




				<td width="300" height="300" align="center">
				
				
				
				
				<a href="#this" name="title">

						<img name="bestimg"
							src="/3T/resources/images/${row.IMAGE.split(',')[0] }"
							width="300" height="300">
							<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${row.GOODS_NO }"></a>
							<br> ${row.NAME }<br> KRW&nbsp;${row.PRICE }</td>


			</c:forEach>
			<td width="50"></td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<table width="1100" border="0" align="center" cellpadding="0"
		cellspacing="30">
		<tr height="100">
		</tr>
			<c:forEach items="${list }" var="list" varStatus="stat">

				<c:if test="${stat.index%3==0}">
					<tr></tr>
				</c:if>


				




				<td width="150" height="400" align="center">
				<a href="#this" name="title">
						<img id="myImg"
							src="/3T/resources/images/${list.IMAGE.split(',')[0] }"
							width="500" height="500">
						<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${list.GOODS_NO }"></a>
					<br> ${list.NAME }<br> KRW&nbsp;${list.PRICE }</td>

			</c:forEach>
			
			<%-- <c:if test="list.size() <= 0">
			<tr>
				<td colspan="3" align="center">등록된 게시물이 없습니다</td>
			</tr><BR><BR><BR>
		</c:if> --%>


	
		<tr align="center">
		
		
	</tr>
	</table>
	<form id="commonForm" name="commonForm"></form>
	
	<script type="text/javascript">
            $("a[name='title']").on("click", function(e){ //제목 
                e.preventDefault();
                fn_openBoardDetail($(this));
            });
       
        
        function fn_openBoardDetail(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/goods/detail' />");
            comSubmit.addParam("GOODS_NO", obj.parent().find("#GOODS_NO").val());
            comSubmit.submit();
        }
        
         /*$(document).ready(function(){
        	
        	setInterval(function(){
        		$("body[name='bestimg']").append($('img').first());
        	}, 2000);
        }); 

        $("#rolling").als({
            visible_items: 4,
            scrolling_items: 1,
            orientation: "horizontal",
            circular: "yes",
            autoscroll: "no",
            interval: 3000
        });*/
        
        $('.autoplay').slick({
        	  slidesToShow: 3,
        	  slidesToScroll: 1,
        	  autoplay: true,
        	  autoplaySpeed: 2000,
        	});
        
    </script> 

	


</body>
</html>