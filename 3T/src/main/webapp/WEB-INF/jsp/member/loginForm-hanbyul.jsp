<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
<%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%>
</head>



ㄹ

<div id="container">
	<div id="headerwrap"></div>

	<div id="contentwrap">

		<div id="contents">

			<form id="member_form_6149332581" name=""
				action="/exec/front/Member/login/" method="post"
				enctype="multipart/form-data">
				<input id="returnUrl" name="returnUrl" value="/index.html"
					type="hidden"> <input id="forbidIpUrl" name="forbidIpUrl"
					value="/index.html" type="hidden"> <input
					id="certificationUrl" name="certificationUrl"
					value="/intro/adult_certification.html?returnUrl=" type="hidden">
				<input id="sIsSnsCheckid" name="sIsSnsCheckid" value=""
					type="hidden"> <input id="sProvider" name="sProvider"
					value="" type="hidden">
				<div class="xans-element- xans-member xans-member-login ">
					<!--
        $defaultReturnUrl = /index.html
        $forbidIpUrl = member/adminFail.html
    -->
					<div class="login">
						<h3></h3>
						<fieldset>
							<legend>회원로그인</legend>
							<span>ID</span> <label class="id"><input id="member_id"
								name="member_id" fw-filter="isFill" fw-label="아이디" fw-msg=""
								class="inputTypeText" placeholder="" value="" type="text"></label>
							<span>PASSWORD</span><label class="password"><input
								id="member_passwd" name="member_passwd"
								fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드"
								fw-msg="" value="" type="password"></label>
							<li><a href="/member/id/find_id.html">Forgot id? </a></li>
							<li><a href="/member/passwd/find_passwd_info.html">
									Forgot password?</a></li>
							<p class="security">
								<input id="member_check_save_id0" name="check_save_id"
									fw-filter="" fw-label="아이디저장" fw-msg="" value="T"
									type="checkbox"><label for="member_check_save_id0">아이디
									저장</label>
							</p>

							<p class="link">
								<span class="loginbtn"><a href="#none"
									onclick="MemberAction.login('member_form_6149332581'); return false;">Login</a></span>
								<span class="joinusbtn"><a href="/member/join.html">Join
										us</a></span>
							</p>

							<ul class="snsArea">
								<li class="displaynone"><a href="#none" onclick=""><img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_naver_login.gif"
										alt="네이버 로그인"></a></li>
								<li class="displaynone"><a href="#none" onclick=""><img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_facebook_login.gif"
										alt="페이스북 로그인"></a></li>
								<li class="displaynone"><a href="#none" onclick=""><img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_google_login.gif"
										alt="구글 로그인"></a></li>
								<li class="displaynone"><a href="#none" onclick=""><img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_kakao_login.gif"
										alt="카카오계정 로그인"></a></li>
							</ul>
							<p class="link displaynone" id="noMemberWrap">
								<a href="" onclick="">비회원 구매하기</a> <span>비회원님도 상품구매가 가능하나<br>다양한회원혜택에서
									제외됩니다.
								</span>
							</p>
						</fieldset>
					</div>
				</div>
			</form>

		</div>
	</div>

	<div id="right">
		<div class="right_menu">

			<ul>
				<li class="cart_menu"><a href="/order/basket.html"
					class="xans-element- xans-layout xans-layout-orderbasketcount ">CART
						<span> 0 </span>
				</a></li>
			</ul>
			<ul>
				<li class="bookmark"><a
					onclick="try{window.external.AddFavorite('https://www.asclo.com','ASCLO - エズクロ')} catch(e){alert('이용하시는 브라우져에서는 Ctrl 키와 D 키를 동시에 눌러서 즐겨찾기에 추가할 수 있습니다.')}; return false;">BOOKMARK</a></li>
				<li><a href="/link/shortcut.html" target="_blank"
					onclick="winPop(this.href); return false;"
					class="xans-element- xans-layout xans-layout-shortcut ">DESKTOP
						ICON </a></li>

				<br>
				<br>
				<li><a href="http://www.asclo.net" target="_blank"><img
						src="/web/upload/designfixy/images/US.png"></a></li>
			</ul>
			<!--다운메뉴-->
			<div class="downmenu">
				<ul>
					<li class="dep1"><a>CS CENTER<i class="fa fa-angle-down"
							aria-hidden="true"></i></a>
						<ul class="hide hideblock">
							<li><strong
								class="xans-element- xans-layout xans-layout-footer ">070-4477-9922</strong>
								<br> mon-fri 10am-4:30pm<br> lunch : 12:30-13:30<br>
								sat, sun, holiday off<br> <br> 예금주 : 서지우(애즈클로)<br>
								국민 437201-04-192634<br> <br> 반품배송비 전용계좌<br> 국민
								352601-01-336244<br></li>
						</ul></li>
					<li class="dep1"><a>notice <i class="fa fa-angle-down"
							aria-hidden="true"></i></a>
						<ul class="hide">
							<li>
								<!-- 공지사항 -->
								<div
									class="xans-element- xans-board xans-board-listpackage-1 xans-board-listpackage xans-board-1 ">
									<table border="1" summary="" class="mainborad">
										<caption>공지사항</caption>
										<tbody
											class="xans-element- xans-board xans-board-list-1 xans-board-list xans-board-1">
											<!--
                                    $count = 3              
                                    $subject_cut = 14
                                    $main_list = yes
                                    $main_list_reply_view = no
                                -->
											<tr class="xans-record-">
												<td class="title"><a
													href="/board/free/read.html?no=248265&amp;board_no=1">교환
														및 반품과정 안내</a></td>
											</tr>
											<tr class="xans-record-">
												<td class="title"><a
													href="/board/free/read.html?no=243324&amp;board_no=1">타상품
														교환 및 묶음배...</a></td>
											</tr>
											<tr class="xans-record-">
												<td class="title"><a
													href="/board/free/read.html?no=243323&amp;board_no=1">수제화
														관련해서 안내드...</a></td>
											</tr>
										</tbody>
									</table>
								</div> <!-- // 공지사항 -->
							</li>
						</ul></li>
				</ul>
			</div>



			<ul class="right_sns">
				<li><a href="http://blog.naver.com/asclohi" target="_blank"><img
						src="/web/upload/designfixy/images/sns_b.png"></a></li>
				<li><a href="https://www.instagram.com/hi880515/"
					target="_blank"><img
						src="/web/upload/designfixy/images/sns_i.png"></a></li>
				<li><a href="https://www.facebook.com/asclocom" target="_blank"><img
						src="/web/upload/designfixy/images/sns_f.png"></a></li>
				<li><a href="http://pf.kakao.com/_muhjE" target="_blank"><img
						src="/web/upload/designfixy/images/sns_k.png"></a></li>
			</ul>
		</div>
	</div>


</div>
</html>
