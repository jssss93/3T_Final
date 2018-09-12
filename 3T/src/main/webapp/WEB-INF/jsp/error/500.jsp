<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<head>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<style>
#outerDiv{
margin-top:5%;
margin-bottom:10%;
}

</style>
</head>
<body>
	<div class="information-blocks">
		<div class="container-404">
			<div class="title"> 서버 오류 입니다! </div>
			<div class="description">Server Error</div>
			<div class="text">
				죄송합니다. 일시적으로 서버에 오류가 있습니다. <br>
				잠시후에 시도해 주십시오. <br>
				<a href="#" id="back">이전 페이지로</a><br>
				<a href="/3T/main" >홈으로</a>
			</div>
		</div>
	</div>
	<div></div>
	
<script>

$(document).ready(function() {
	$("#back").click(function() {
		history.back();
	})
})

</script>
</body>