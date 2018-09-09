<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
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
    padding: 10px 30px 0px 10px;
    height: auto;
}

#myImg2 {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
    width: 100%;
    padding: 10px 30px 0px 10px;
    height: auto;
}
.suk {
    position: relative;
    /* float: left; */
    padding-right: 4px;
    width: 34.6%;
    border-right: 0px solid #fff;
    border-left: 0px solid #fff;
    box-sizing: border-box;
}
.han_img img {
    width: 100%;
}
.suk2 {
   width: 30%;
}
table {
    width: 95%!important;
    margin: 0 0 0 40!important;
}
</style>
</head>

<body>


		<table border="0" align="center" cellpadding="0" cellspacing="20">
			<tr>
				<td colspan=3 align="center"><img
					src="/3T/resources/images/mainline2.JPG" /></td>
			</tr>
			<tr>





				<c:forEach items="${New }" var="New" varStatus="stat" begin="0"
					end="2">






					<td class="suk" align="center"><a href="#this" name="title">

							<img id="myImg2"
							src="/3T/resources/upload/${New.IMAGE.split(',')[0]}"> <input
							type="hidden" id="GOODS_NO" name="GOODS_NO"
							value="${New.GOODS_NO }">
					</a></td>
				</c:forEach>


			</tr>
		</table>
		<br> <br>
		<table border="0" align="center" cellpadding="0" cellspacing="20">

			<tr>
				<td colspan="3" align="center"><h1 class="abc">3T</h1>
					<img src="/3T/resources/images/mainline.PNG" /></td>
			</tr>
			<tr>

				<c:choose>
					<c:when test="${fn:length(list) > 0}">
						<c:forEach items="${list }" var="list" varStatus="stat" begin="0"
							end="15">

							<c:if test="${stat.index%3==0}">
								<tr></tr>
							</c:if>


							<td class="suk" align="center"><a href="#this" name="title">

									<img id="myImg"
									src="/3T/resources/upload/${list.IMAGE.split(',')[0] }"> 
									<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${list.GOODS_NO }">
							</a><br> <br> ${list.NAME }<br> KRW&nbsp;${list.PRICE }</td>

						</c:forEach>
					</c:when>


				</c:choose>



			</tr>
		</table>
		<br> <br> <br>
		<table border="0" align="center" cellpadding="0" cellspacing="20"
			class="han_img">
			<tr>
				<td colspan="3" align="center"><a href="main"><img
						src="/3T/resources/images/mainline4.png" /></a></td>

			</tr>
		</table>

		<br> <br> <br>
		<table border="0" align="center" cellpadding="0" cellspacing="20">
			<tr>
				<td colspan=3 align="center"><img
					src="/3T/resources/images/mainline5.png" /></td>
			</tr>
			<tr>





				<c:choose>
					<c:when test="${fn:length(best) > 0}">
						<c:forEach items="${best }" var="best" varStatus="stat" begin="0"
							end="15">

							<c:if test="${stat.index%3==0}">
								<tr></tr>
							</c:if>



							<li>
							<td class="suk2" align="center"><a href="#this" name="title">

									<img id="myImg"
									src="/3T/resources/upload/${best.IMAGE.split(',')[0]}"> <input
									type="hidden" id="GOODS_NO" name="GOODS_NO"
									value="${best.GOODS_NO }">
							</a> <br> <br> ${best.NAME }<br> KRW&nbsp;${best.PRICE }</td>

						</c:forEach>
					</c:when>


				</c:choose>
		</table>
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