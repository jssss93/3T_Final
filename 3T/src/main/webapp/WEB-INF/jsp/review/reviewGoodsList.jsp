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
	<form action="/3T/review/reviewGoodsSelect">
	<table border="1"  class="board_list2">
	<tr>
	<td>
		<select name="SearchNum" id="SearchNum"
			style="width: 100px; height: 30px;">
			<option value="NAME">상품명</option>
		</select> <input type="text" name="SearchKeyword" id="SearchKeyword"
			style="margin-left: 15px; width: 200px; height: 36px; border-radius: 5px 5px 5px 5px;" />


		<input type="submit" class="btn" value="검색">
		</td>
</tr>
</table>
	</form>
	<table border="1"  class="board_list2">
		
		<thead>
			<tr>
				<th scope="col">상품이미지</th>
				<th scope="col">상품정보</th>
				<th scope="col">선택</th>
			</tr>
		</thead>
		<c:forEach items="${list }" var="row">

			<tr>
				<td><img width="50" height="50"
					src="/3T/resources/upload/${row.IMAGE.split(',')[0] }" /></td>
				<td>${row.NAME }<br /> KRW&nbsp; ${row.PRICE }
				</td>
				<form action="/3T/review/reviewGoodsSuccess" >
					<td><input type="submit" class="btn" value="선택"></td> <input
						type="hidden" id="GOODS_NO" NAME="GOODS_NO"
						value="${row.GOODS_NO }">
				</form>
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
	<script type="text/javascript">
        $(document).ready(function(){
            $("#search").on("click", function(e){ //검색 버튼
                e.preventDefault();
                fn_openSearchList();
            }); 
        });    
        function fn_openSearchList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/review/reviewGoodsSelect' />");
            comSubmit.addParam("SearchNum", obj.parent().find("#SearchNum").val());
            comSubmit.addParam("SearchKeyword", obj.parent().find("#SearchKeyword").val());
            comSubmit.submit();
        } 
    </script>
</body>
</html>