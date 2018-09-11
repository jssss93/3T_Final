<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<head>
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
			<div class="title"> 접근 권한이 없습니다. </div>
			<div class="description">Invalid Access Rights</div>
			<div class="text">
				접근 권한이 없어 페이지로 이동할 수 없습니다. <br>
				<a href="#" id="back">이전 페이지로</a><br>
				<a href="/" >홈으로</a>
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