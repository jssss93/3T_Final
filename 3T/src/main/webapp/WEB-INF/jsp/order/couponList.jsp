<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>reviewGoodsList</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
</head>
<body>
	<table border="1"  class="board_list2">
		
		<thead>
			<tr>
				<th scope="col">상품정보</th>
				<th scope="col">선택</th>
			</tr>
		</thead>
		<c:forEach items="${list }" var="row">

			<tr>
				<td>${row.CONTENT}</td>
				<td><input class="btn" data-no="${row.COUPON_NO }" data-content="${row.CONTENT}" value="선택"></td>
			</tr>
		</c:forEach>
		<c:if test="${list == null}">
			<!-- list에 들어있는게 없다면 -->

			<tr bgcolor="#FFFFFF" align="center">
				<td colspan="5">등록된 게시물이 없습니다.</td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="5"></td>
			</tr>

		</c:if>

	</table>
	<%@ include file="/WEB-INF/include/include-body.jspf"%>
</body>

<script type="text/javascript">
	$('.btn').on('click', function(data){
	  console.log("click")
	  var no = $( this ).attr('data-no')
	  var content = $(this).attr('data-content')
	  console.log("no is " + no)
	  console.log("content is " + content)
	  opener.onCallback(no, content);
	  window.close();

	})
</script>

</html>