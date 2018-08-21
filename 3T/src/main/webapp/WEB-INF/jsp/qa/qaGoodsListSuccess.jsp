<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>QaGoodsList</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<script language="javascript">
	function MovePage() {
		window.opener.top.location.href = 'writeForm?GOODS_NO=${GOODS_NO}';
		window.close();
	}
</script>
</head>
<body>
	<script>
		MovePage()
	</script>

</body>
</html>