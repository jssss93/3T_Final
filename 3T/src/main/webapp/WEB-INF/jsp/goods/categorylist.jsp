<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="//fonts.googleapis.com/css?family=Lato:100,300,400,500,700,900,100italic,300italic,400italic,700italic,900italic" rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/css?family=Cabin" rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/css?family=Cabin:700" rel="stylesheet" type="text/css">
<link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css" rel="stylesheet">
<style>
#myImg {
    border-radius: 0px;
    cursor: pointer;
    transition: 0.3s;
    width: 80%;
    padding: 10px 0px 0px 0px;
    height: auto;
}
#myImg2 {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
    width: 90%;
    height: auto;
}

#myImg:hover {
	opacity: 0.7;
}

.abc {
	font-size: 17px;
	color: #000000;
}

table {
	border: 0;
	border-spacing: 0;
	border-collapse: collapse;
	display: block;
	clear: both;
	display: table;
	width: 100%;
	margin: 0 auto;
	margin-left: 0px;
	font-size: 12;
	line-height: 2;
	font-family: 'Lato','Nanum Gothic';
}
.suk {
    position: relative;
    /* float: left; */
    /* padding-right: 4px; */
    width: 33%;
    border-right: 0px solid #fff;
    border-left: 0px solid #fff;
    box-sizing: border-box;
    font-size: 11;
}
.suk2 {
    position: relative;
    /* float: left; */
    /* padding-right: 4px; */
    width: 33%;
    border-right: 0px solid #fff;
    border-left: 0px solid #fff;
    box-sizing: border-box;
    font-size: 11;
    left: 10px;
}

</style>
</head>
<br>
<br>
<br>
<br>
<body>


	<table>
		<tr>
			<td align="left" valign="top"><strong>${CATEGORY}</strong></td>
		</tr>
	</table>
	<br><br>

	<table width="100%" align="center" border="0" cellspacing="1"
		cellpadding="1" class="board_top_main">
		<tr>

			<td align="center" class="text01 formbar"><h6>
					<font color="#000000">B&nbsp;E&nbsp;S&nbsp;T</font>
				</h6></td>
		</tr>
		<tr>
			<td></td>
		</tr>
	</table>
	<table border="0" align="center" cellpadding="0" cellspacing="20">

		<tr>
			<td></td>
			<c:forEach items="${bestlist }" var="row" varStatus="stat" begin="0"
				end="3">

				<c:if test="${stat.index%4==0}">
					<tr></tr>
				</c:if>
				<td class="suk" align="center">
				   <a href="#this" name="title"> 
				   <img id="myImg" name="bestimg" src="/3T/resources/upload/${row.IMAGE.split(',')[0] }"> 
				     <input type="hidden" id="GOODS_NO"name="GOODS_NO" value="${row.GOODS_NO }"></a> <br>
					      ${row.NAME }<br> KRWsdsds&nbsp;${row.PRICE }</td>


			</c:forEach>
			<td></td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<table border="0" align="center" cellpadding="0" cellspacing="0" class="margin_main">
		<tr>
		</tr>
		<c:forEach items="${list }" var="list" varStatus="stat">

			<c:if test="${stat.index%3==0}">
				<tr></tr>
			</c:if>
			<td class="suk2" align="center">
			  <a href="#this" name="title"> 
			   <img id="myImg2" src="/3T/resources/upload/${list.IMAGE.split(',')[0] }"> 
			    <input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${list.GOODS_NO }"></a> <br>
				 ${list.NAME }<br> KRW&nbsp;${list.PRICE }</td>

		</c:forEach>
		<tr align="center">
		</tr>
	</table>
	<form id="commonForm" name="commonForm"></form>

	<script type="text/javascript">
		$("a[name='title']").on("click", function(e) { //제목 
			e.preventDefault();
			fn_openBoardDetail($(this));
		});

		function fn_openBoardDetail(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/goods/detail' />");
			comSubmit
					.addParam("GOODS_NO", obj.parent().find("#GOODS_NO").val());
			comSubmit.submit();
		}
	</script>
</body>
</html>