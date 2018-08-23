<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%>
<!DOCTYPE html>
<html>
<head>

<title>3T</title>
</head>
<body>

	<div class="path">
		<span>현재 위치</span>
		<ol>
			<li><a href="/">홈</a></li>
			<li title="현재 위치"><strong>주문서작성</strong></li>
		</ol>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="titleArea">
		<h2>ORDER</h2>
	</div>

	<div class="xans-element- xans-order xans-order-form xans-record-">
		<!-- 이값은 지우면 안되는 값입니다. ($move_order_after 주문완료페이지 주소 / $move_basket 장바구니페이지 주소)
        $move_order_after=/order/order_result.html
        $move_basket=/order/basket.html
    -->
		<!-- 혜택정보 -->
		<div
			class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember  ">
			<div class="information">
				<h3 class="title">혜택정보</h3>
				<div class="description">
					<div class="member ">
						<p>
							<strong>황의겸</strong> 님은, [FAMILY] 회원이십니다.
						</p>
						<ul class="displaynone">
							<li class="displaynone"><span class="displaynone">0</span>
								이상 <span class="displaynone"></span> 구매시 <span></span>을 추가할인 받으실
								수 있습니다. <span class="displaynone">(최대 0)</span></li>
							<li class="displaynone"><span class="displaynone"></span> 이상
								<span class="displaynone"></span> 구매시 <span></span>을 추가적립 받으실 수
								있습니다. <span class="displaynone">(최대 )</span></li>
						</ul>
					</div>
					<ul class="mileage">
						<li><a href="/myshop/mileage/historyList.html">가용적립금 : <strong>2,000원</strong></a></li>
						<li class=""><a href="/myshop/deposits/historyList.html">예치금
								: <strong>0원</strong>
						</a></li>
						<li><a href="/myshop/coupon/coupon.html">쿠폰 : <strong>0개</strong></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 국내배송상품 주문내역 -->
		<div class="orderListArea ">
			<div class="title">
				<h3>국내배송상품 주문내역</h3>
			</div>

			<!-- 기본배송 -->
			<div class="ec-base-table typeList ">
				<table border="1" summary="">
					<caption>기본배송</caption>
					<colgroup>
						<col style="width: 27px" class="">
						<col style="width: 92px">
						<col style="width: auto">
						<col style="width: 98px">
						<col style="width: 75px">
						<col style="width: 98px">
						<col style="width: 98px">
						<col style="width: 85px">
						<col style="width: 98px">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class=""><input type="checkbox"
								onclick="EC_SHOP_FRONT_ORDERFORM_PRODUCT.proc.setCheckOrderList('chk_order_cancel_list_basic', this);"></th>
							<th scope="col">이미지</th>
							<th scope="col">상품정보</th>
							<th scope="col">판매가</th>
							<th scope="col">수량</th>
							<th scope="col">적립금</th>
							<th scope="col">배송구분</th>
							<th scope="col">배송비</th>
							<th scope="col">합계</th>
						</tr>
					</thead>
					<tfoot class="right">
						<tr>
							<td class=""></td>
							<td colspan="8"><span class="gLeft">[기본배송]</span> 상품구매금액 <strong>46,000<span
									class="displaynone"> (0)</span></strong> + 배송비 <span
								id="domestic_ship_fee">2,500</span> <span class="displaynone">
									- 상품할인금액 0 </span> = 합계 : <strong class="txtEm gIndent10">KRW
									<span id="domestic_ship_fee_sum" class="txt18">48,500</span>
							</strong> <span class="displaynone"></span></td>
						</tr>
					</tfoot>
					<tbody
						class="xans-element- xans-order xans-order-normallist center">
						<tr class="xans-record-">
							<td class=""><input id="chk_order_cancel_list0"
								name="chk_order_cancel_list_basic0" value="8184:000A:F:1080116"
								type="checkbox"></td>
							<td class="thumb"><a
								href="/product/detail.html?product_no=8184&amp;cate_no=1"><img
									src="//asclo.com/web/product/tiny/201808/3daff4e7de1d74ddbf271ffcf3e320d1.jpg"
									onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
									alt=""></a></td>
							<td class="left"><a
								href="/product/detail.html?product_no=8184&amp;cate_no=1"><strong>WN
										사선언발 데님팬츠 (031)</strong></a>
								<div class="option ">[옵션: S]</div>
								<p class="gBlank5 displaynone">무이자할부 상품</p>
								<p class="gBlank5 displaynone">유효기간 :</p></td>
							<td class="right">
								<div class="">
									<strong>KRW 46,000</strong>
									<p class="displaynone"></p>
								</div>
								<div class="displaynone">
									<strong>KRW 46,000</strong>
									<p class="displaynone"></p>
								</div>
							</td>
							<td>1</td>
							<td><span class="txtInfo"><input
									id="product_mileage_all_8184_000A" name="product_mileage_all"
									value="400" type="hidden"><img
									src="//img.echosting.cafe24.com/design/common/icon_cash.gif">
									400원</span></td>
							<td><div class="txtInfo">
									기본배송<br>
								</div></td>
							<td>[조건]</td>
							<td class="right"><strong>KRW 46,000</strong>
								<div class="displaynone"></div></td>
						</tr>
					</tbody>
				</table>
			</div>

			<!-- 업체기본배송 -->
			<div class="ec-base-table typeList displaynone">
				<table border="1" summary="">
					<caption>업체기본배송</caption>
					<colgroup>
						<col style="width: 27px" class="">
						<col style="width: 92px">
						<col style="width: auto">
						<col style="width: 98px">
						<col style="width: 75px">
						<col style="width: 98px">
						<col style="width: 98px">
						<col style="width: 85px">
						<col style="width: 98px">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class=""><input type="checkbox" onclick=""
								disabled=""></th>
							<th scope="col">이미지</th>
							<th scope="col">상품정보</th>
							<th scope="col">판매가</th>
							<th scope="col">수량</th>
							<th scope="col">적립금</th>
							<th scope="col">배송구분</th>
							<th scope="col">배송비</th>
							<th scope="col">합계</th>
						</tr>
					</thead>
					<tfoot class="right">
						<tr>
							<td class=""></td>
							<td colspan="8"><span class="gLeft">[업체기본배송]</span> 상품구매금액 <strong><span
									class="displaynone"> ()</span></strong> + 배송비 <span class="displaynone">
									- 상품할인금액 </span> = 합계 : <strong class="txtEm gIndent10"><span
									class="txt18"></span></strong> <span class="displaynone"></span></td>
						</tr>
					</tfoot>
				</table>
			</div>

			<!-- 개별배송 -->
			<div class="ec-base-table typeList displaynone">
				<table border="1" summary="">
					<caption>개별배송</caption>
					<colgroup>
						<col style="width: 27px" class="">
						<col style="width: 92px">
						<col style="width: auto">
						<col style="width: 98px">
						<col style="width: 75px">
						<col style="width: 98px">
						<col style="width: 98px">
						<col style="width: 85px">
						<col style="width: 98px">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class=""><input type="checkbox" onclick=""
								disabled=""></th>
							<th scope="col">이미지</th>
							<th scope="col">상품정보</th>
							<th scope="col">판매가</th>
							<th scope="col">수량</th>
							<th scope="col">적립금</th>
							<th scope="col">배송구분</th>
							<th scope="col">배송비</th>
							<th scope="col">합계</th>
						</tr>
					</thead>
					<tfoot class="right">
						<tr>
							<td class=""></td>
							<td colspan="8"><span class="gLeft">[개별배송]</span> 상품구매금액 <strong><span
									class="displaynone"> ()</span></strong> + 배송비 <span class="displaynone">
									- 상품할인금액 </span> = 합계 : <strong class="txtEm gIndent10"><span
									class="txt18"></span></strong> <span class="displaynone"></span></td>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
		<!-- 해외배송상품 주문내역 -->
		<div class="orderListArea displaynone">
			<div class="title">
				<h3>해외배송상품 주문내역</h3>
				<p class="btn">
					<a href="javascript:window.history.back();"><img
						src="/images/btn_prev.gif" alt="이전페이지"></a>
				</p>
			</div>

			<div class="ec-base-table typeList">
				<table border="1" summary="">
					<caption>해외배송</caption>
					<colgroup>
						<col style="width: 27px" class="">
						<col style="width: 92px">
						<col style="width: auto">
						<col style="width: 98px">
						<col style="width: 75px">
						<col style="width: 98px">
						<col style="width: 98px">
						<col style="width: 98px">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class=""><input type="checkbox" onclick=""
								disabled=""></th>
							<th scope="col">이미지</th>
							<th scope="col">상품정보</th>
							<th scope="col">판매가</th>
							<th scope="col">수량</th>
							<th scope="col">적립금</th>
							<th scope="col">배송구분</th>
							<th scope="col">합계</th>
						</tr>
					</thead>
					<tfoot class="right">
						<tr>
							<td class=""></td>
							<td colspan="7"><span class="gLeft">[해외배송]</span> 상품구매금액 <strong><span
									class="displaynone"> ()</span></strong> + 배송비 KRW <span
								id="f_list_total_delv_price_id"></span><span class="displaynone">
									- 상품할인금액 </span> = 합계 : <strong class="txtEm gIndent10"><span
									id="" class="txt18"></span></strong> <span class="displaynone"></span></td>
						</tr>
					</tfoot>
					<tbody
						class="xans-element- xans-order xans-order-oversealist center">
						<tr class="">
							<td class="displaynone"></td>
							<td class="thumb"><a href="/product/detail.html"><img
									src="//img.echosting.cafe24.com/thumb/img_product_small.gif"
									onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
									alt=""></a></td>
							<td class="left"><a href="/product/detail.html"><strong></strong></a>
								<div class="option displaynone"></div>
								<ul class="xans-element- xans-order xans-order-optionset option">
									<li class=""><strong></strong> (개)</li>
								</ul>
								<p class="gBlank5 displaynone">무이자할부 상품</p>
								<p class="gBlank5 displaynone">유효기간 :</p></td>
							<td class="right">
								<div class="">
									<strong></strong>
									<p class="displaynone"></p>
								</div>
								<div class="displaynone">
									<strong></strong>
									<p class="displaynone"></p>
								</div>
							</td>
							<td></td>
							<td><span class="txtInfo"></span></td>
							<td class="delivery">해외배송</td>
							<td class="right"><strong></strong>
								<div class="displaynone"></div></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<ul class="ec-base-help controlInfo typeBtm">
			<li class="txtWarn txt11">상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</li>
			<li class="txtWarn txt11 displaynone">할인 적용 금액은 주문서작성의 결제예정금액에서
				확인 가능합니다.</li>
		</ul>
		<!-- 선택상품 제어 버튼 -->
		<div class="ec-base-button">
			<span class="gLeft "> <strong class="text">선택상품을</strong> <a
				href="#none" id="btn_product_delete"><img
					src="/images/btn_delete2.gif" alt="삭제하기"></a>
			</span> <span class="gRight"> <a
				href="javascript:window.history.back();"><img
					src="/images/btn_prev.gif" alt="이전페이지"></a>
			</span>
		</div>
		<!-- 간단 회원가입 -->

		<!-- 주문 정보 -->

		<!-- 배송업체(방식) 선택 -->
		<div id="lShippingCompanyLists" class="shippingArea displaynone">
			<div class="title">
				<h3>배송업체(방식) 선택</h3>
			</div>
			<table border="1" summary="">
				<caption>배송업체(방식) 선택</caption>
				<thead>
					<tr>
						<th scope="col">
							<div class="method">
								<p class="ec-base-help displaynone">스토어픽업을 사용할 수 없는 상품이 포함되어
									있어 일반 배송사만 선택 가능합니다.</p>
							</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<ul class="list " id="deliv_info_view">
								<li>배송업체 : <span id="deliv_company_name_custom_type"></span></li>
								<li class="">배송비 : <span
									id="deliv_company_price_custom_type">0</span></li>
								<li class="displaynone">
									<div class="ec-shop-shipping_additional_fee_show ">
										배송비 : <strong>KRW <span id="f_addr_total_ship_fee_id"></span></strong>
										= 해외배송비 KRW <span id="f_addr_delv_price_id"></span> + 보험료 KRW
										<span id="f_addr_insurance_price_id"></span> <span
											class="ec-shop-shipping_additional_fee_name_show"> + <span
											id="f_addr_shipping_additional_fee_name_id"></span> KRW <span
											id="f_addr_shipping_additional_fee_id"></span></span>
										<p>
											보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여<br>규정에 따라 배상해
											드리는 서비스입니다.
										</p>
									</div>
									<div class="ec-shop-shipping_additional_fee_hide displaynone">
										배송비 : <strong>KRW <span id="f_addr_total_ship_fee_id"></span></strong>
										= 해외배송비 KRW <span id="f_addr_delv_price_id"></span> + 보험료 KRW
										<span id="f_addr_insurance_price_id"></span>
										<p>
											배송비에는 관세 및 세금 등의 각종 비용은 포함되어 있지 않습니다.<br>상품수령 시 고객님이 추가로
											지불하셔야 합니다.<br>보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여<br>규정에
											따라 배상해 드리는 서비스입니다.
										</p>
									</div>
								</li>
								<li>배송소요기간 : <span id="deliv_company_period_custom_type"></span></li>
								<li>홈페이지주소 : <span id="deliv_company_site_custom_type"></span></li>
								<li class="displaynone" id="areaname">배송가능 지역 : <span
									id="deliv_company_areaname_custom_type"></span></li>
								<li class="displaynone" id="ordertime">주문가능 시간 : <span
									id="deliv_company_ordertime_custom_type"></span></li>
							</ul>
							<ul class="list displaynone" id="store_info_view">
								<li>주소 : <span id="store_receive_addr"></span></li>
								<li>전화번호 : <span id="store_main_phone"></span></li>
								<li>영업시간 : <span id="store_office_hour"></span></li>
								<li>수령 가능일 : <span id="store_receive_period"></span></li>
								<li>수령지 안내 : <span id="store_receive_info"></span></li>
								<li class="map">약도<br> <span id="store_receive_map"></span></li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 배송 정보 -->
		<div class="orderArea">
			<div class="title">
				<h3>배송 정보</h3>
				<p class="required">
					<img
						src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
						alt="필수"> 필수입력사항
				</p>
			</div>
			<div class="ec-base-table typeWrite">
				<table border="1" summary="">
					<caption>배송 정보 입력</caption>
					<colgroup>
						<col style="width: 139px;">
						<col style="width: auto;">
					</colgroup>
					<!-- 비회원 결제 -->
					<tbody class="displaynone ec-shop-deliverySimpleNomemberForm"
						style="display: table-row-group;">
						<tr class="ec-orderform-NoMemberPasswdRow">
							<th scope="row">주문조회 비밀번호 <img
								src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
								alt="필수"></th>
							<td>(주문조회시 필요합니다. 4자에서 12자 영문 또는 숫자 대소문자 구분)</td>
						</tr>
						<tr class="ec-orderform-NoMemberPasswdRow">
							<th scope="row">주문조회 비밀번호<br>확인 <img
								src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
								alt="필수"></th>
							<td></td>
						</tr>
					</tbody>
					<!-- 국내 배송지 정보 -->
					<tbody class="">
						<tr class="">
							<th scope="row">배송지 선택</th>
							<td>
								<div class="address">
									<input id="sameaddr0" name="sameaddr" fw-filter="" fw-label="1"
										fw-msg="" value="M" type="radio"><label
										for="sameaddr0">회원 정보와 동일</label> <input id="sameaddr1"
										name="sameaddr" fw-filter="" fw-label="1" fw-msg="" value="F"
										type="radio"><label for="sameaddr1">새로운배송지</label> <span
										class="recent ec-shop-RecentDelivery displaynone"> 최근
										배송지 : </span> <a href="#none" id="btn_shipp_addr" class=""><img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_address.gif"
										alt="주소록 보기"></a>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">받으시는 분 <img
								src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
								alt="필수"></th>
							<td><input id="rname" name="rname" fw-filter="isFill"
								fw-label="수취자 성명" fw-msg="" class="inputTypeText" placeholder=""
								size="15" value="" type="text"></td>
						</tr>
						<tr>
							<th scope="row">주소 <img
								src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
								alt="필수"></th>
							<td><input id="rzipcode1" name="rzipcode1"
								fw-filter="isFill" fw-label="수취자 우편번호1" fw-msg=""
								class="inputTypeText" placeholder="" size="6" maxlength="6"
								readonly="1" value="" type="text"> <a href="#none"
								id="btn_search_rzipcode"><img
									src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_zipcode.gif"
									alt="우편번호"></a><br> <input id="raddr1" name="raddr1"
								fw-filter="isFill" fw-label="수취자 주소1" fw-msg=""
								class="inputTypeText" placeholder="" size="40" readonly="1"
								value="" type="text"> <span class="grid">기본주소</span><br>
								<input id="raddr2" name="raddr2" fw-filter="isFill"
								fw-label="수취자 주소2" fw-msg="" class="inputTypeText"
								placeholder="" size="40" value="" type="text"> <span
								class="grid">나머지주소</span><span class="grid displaynone">(선택입력가능)</span>
							</td>
						</tr>
						<tr class="">
							<th scope="row">일반전화 <span class="displaynone"><img
									src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
									alt="필수"></span>
							</th>
							<td><select id="rphone1_1" name="rphone1_[]"
								fw-filter="isNumber" fw-label="수취자 전화번호" fw-alone="N" fw-msg="">
									<option value="02">02</option>
									<option value="031">031</option>
									<option value="032">032</option>
									<option value="033">033</option>
									<option value="041">041</option>
									<option value="042">042</option>
									<option value="043">043</option>
									<option value="044">044</option>
									<option value="051">051</option>
									<option value="052">052</option>
									<option value="053">053</option>
									<option value="054">054</option>
									<option value="055">055</option>
									<option value="061">061</option>
									<option value="062">062</option>
									<option value="063">063</option>
									<option value="064">064</option>
									<option value="0502">0502</option>
									<option value="0503">0503</option>
									<option value="0504">0504</option>
									<option value="0505">0505</option>
									<option value="0506">0506</option>
									<option value="0507">0507</option>
									<option value="070">070</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
							</select>-<input id="rphone1_2" name="rphone1_[]" maxlength="4"
								fw-filter="isNumber" fw-label="수취자 전화번호" fw-alone="N" fw-msg=""
								size="4" value="" type="text">-<input id="rphone1_3"
								name="rphone1_[]" maxlength="4" fw-filter="isNumber"
								fw-label="수취자 전화번호" fw-alone="N" fw-msg="" size="4" value=""
								type="text"></td>
						</tr>
						<tr class="">
							<th scope="row">휴대전화 <span class=""><img
									src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
									alt="필수"></span>
							</th>
							<td><select id="rphone2_1" name="rphone2_[]"
								fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호"
								fw-alone="N" fw-msg="">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
							</select>-<input id="rphone2_2" name="rphone2_[]" maxlength="4"
								fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호"
								fw-alone="N" fw-msg="" size="4" value="" type="text">-<input
								id="rphone2_3" name="rphone2_[]" maxlength="4"
								fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호"
								fw-alone="N" fw-msg="" size="4" value="" type="text"></td>
						</tr>
						<tr class="">
							<th scope="row">안심번호</th>
							<td><input id="use_safe_phone0" name="use_safe_phone"
								fw-filter="" fw-label="안심번호" fw-msg=""
								onclick="EC_SHOP_FRONT_ORDERFORM_FORM.proc.checkSafePhone();"
								value="T" type="checkbox"><label for="use_safe_phone0">안심번호
									서비스 사용 (무료)</label>
								<p>- 안심번호 서비스는 개인정보 보호를 위하여 휴대폰번호 등 실제 연락처 대신에 1회성 임시 번호를
									제공하는 서비스입니다.</p></td>
						</tr>
					</tbody>
					<!-- 해외 배송지 정보 -->
					<tbody class="displaynone">
						<tr class="">
							<th scope="row">배송지 선택</th>
							<td>
								<p class="address">
									<a href="#none" id="btn_address_oversea" class=""><img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_address.gif"
										alt="주소록 보기"></a>
								</p>
							</td>
						</tr>
						<tr>
							<th scope="row">받으시는 분 <img
								src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
								alt="필수"></th>
							<td><span class="grid">받는분의 이름은 영문으로 작성해 주세요.</span></td>
						</tr>
						<tr class="displaynone">
							<th scope="row">영문이름</th>
							<td></td>
						</tr>
						<tr class="displaynone">
							<th scope="row">이름(발음기호)</th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">국가 <img
								src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
								alt="필수"></th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">우편번호</th>
							<td><a href="#none" id="btn_search_fzipcode" class=""><img
									src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_address_search.gif"
									alt="주소검색"></a></td>
						</tr>
						<tr>
							<th scope="row">주소1 <img
								src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
								alt="필수"></th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">주소2</th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">도시 <img
								src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
								alt="필수"></th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">주/지방 <img
								src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
								alt="필수"></th>
							<td></td>
						</tr>
						<tr class="">
							<th scope="row">일반전화 <span class="displaynone"><img
									src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
									alt="필수"></span>
							</th>
							<td>
								<p class="gBlank5">'-' 없이 숫자만 입력해 주세요.</p>
							</td>
						</tr>
						<tr class="">
							<th scope="row">휴대전화 <span class=""><img
									src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
									alt="필수"></span>
							</th>
							<td>
								<p class="gBlank5">'-' 없이 숫자만 입력해 주세요.</p>
							</td>
						</tr>
						<tr id="ec-shop-receiver_id_card_key" class="displaynone">
							<th scope="row">신분증 ID <img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
								alt="필수"></th>
							<td>
								<p class="gBlank5">통관을 위해 규정에 따라 신분증 ID를 수집합니다.</p>
							</td>
						</tr>
					</tbody>
					<!-- 이메일 국내/해외 -->
					<tbody
						class="email ec-orderform-emailRow ec-shop-deliverySimpleForm">
						<tr>
							<th scope="row">이메일 <img
								src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
								alt="필수"></th>
							<td><input id="oemail1" name="oemail1" fw-filter="isFill"
								fw-label="주문자 이메일" fw-alone="N" fw-msg="" class="mailId"
								value="" type="text">@<input id="oemail2" name="oemail2"
								fw-filter="isFill" fw-label="주문자 이메일" fw-alone="N" fw-msg=""
								class="mailAddress" readonly="readonly" value="" type="text"><select
								id="oemail3" fw-filter="isFill" fw-label="주문자 이메일" fw-alone="N"
								fw-msg="">
									<option value="" selected="selected">- 이메일 선택 -</option>
									<option value="naver.com">naver.com</option>
									<option value="daum.net">daum.net</option>
									<option value="nate.com">nate.com</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="yahoo.com">yahoo.com</option>
									<option value="empas.com">empas.com</option>
									<option value="korea.com">korea.com</option>
									<option value="dreamwiz.com">dreamwiz.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="etc">직접입력</option>
							</select>
								<p class="gBlank5">
									이메일을 통해 주문처리과정을 보내드립니다.<br>이메일 주소란에는 반드시 수신가능한 이메일주소를 입력해
									주세요.
								</p></td>
						</tr>
					</tbody>
					<!-- 국내 배송관련 정보 -->
					<tbody class="delivery ">
						<tr class="displaynone">
							<th scope="row">배송메시지 <span class="displaynone"><img
									src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
									alt="필수"></span>
							</th>
							<td><textarea id="omessage" name="omessage" fw-filter=""
									fw-label="배송 메세지" fw-msg="" maxlength="255" cols="70"></textarea>
								<div class="devMessage ">
									<label><input id="omessage_autosave0"
										name="omessage_autosave[]" fw-filter="" fw-label="배송 메세지 저장"
										fw-msg="" value="T" type="checkbox" disabled=""><label
										for="omessage_autosave0"></label>Q&amp;A 자동저장</label>
									<ul class="gIndent5">
										<li>배송메시지란에는 배송시 참고할 사항이 있으면 적어주십시오.</li>
										<li>게시글은 비밀글로 저장되며 비밀번호는 주문번호 뒷자리로 자동 저장됩니다.</li>
									</ul>
								</div></td>
						</tr>
						<tr class="displaynone">
							<th scope="row">희망배송일</th>
							<td>
								<ul class="grid">
									<li></li>
									<li>이후 날짜를 입력해야 합니다.</li>
									<li>년 월 일 <span id="fhdateW_str"></span>요일
									</li>
								</ul>
							</td>
						</tr>
						<tr class="displaynone">
							<th scope="row">희망배송시간</th>
							<td>
								<ul class="grid">
									<li></li>
									<li></li>
								</ul>
							</td>
						</tr>
					</tbody>
					<!-- 해외 배송관련 정보 -->
					<tbody class="delivery displaynone">
						<tr class="displaynone">
							<th scope="row">배송메시지 <span class="displaynone"><img
									src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif"
									alt="필수"></span>
							</th>
							<td>
								<div class="devMessage ">
									<label> 자동저장</label>
									<ul>
										<li>배송메시지란에는 배송시 참고할 사항이 있으면 적어주십시오.</li>
										<li>게시글은 비밀글로 저장되며 비밀번호는 주문번호 뒷자리로 자동 저장됩니다.</li>
									</ul>
								</div>
							</td>
						</tr>
						<tr class="displaynone">
							<th scope="row">희망배송일</th>
							<td>
								<ul class="grid">
									<li></li>
									<li>이후 날짜를 입력해야 합니다.</li>
									<li>년 월 일 <span id="fhdateW_str"></span>요일
									</li>
								</ul>
							</td>
						</tr>
						<tr class="displaynone">
							<th scope="row">희망배송시간</th>
							<td>
								<ul class="grid">
									<li></li>
									<li></li>
								</ul>
							</td>
						</tr>
						<tr class="">
							<th scope="row">배송비</th>
							<td>
								<div class="ec-shop-shipping_additional_fee_show ">
									<strong>KRW <span id="f_addr_total_ship_fee_id"></span></strong>
									= 해외배송비 KRW <span id="f_addr_delv_price_id"></span> + 보험료 KRW <span
										id="f_addr_insurance_price_id"></span> <span
										class="ec-shop-shipping_additional_fee_name_show"> + <span
										id="f_addr_shipping_additional_fee_name_id"></span> KRW <span
										id="f_addr_shipping_additional_fee_id"></span></span>
									<p class="gBlank5">
										보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여<br>규정에 따라 배상해
										드리는 서비스입니다.
									</p>
								</div>
								<div class="ec-shop-shipping_additional_fee_hide displaynone">
									<strong>KRW <span id="f_addr_total_ship_fee_id"></span></strong>
									= 해외배송비 KRW <span id="f_addr_delv_price_id"></span> + 보험료 KRW <span
										id="f_addr_insurance_price_id"></span>
									<p class="gBlank5">
										배송비에는 관세 및 세금 등의 각종 비용은 포함되어 있지 않습니다.<br>상품수령 시 고객님이 추가로
										지불하셔야 합니다.<br>보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여<br>규정에
										따라 배상해 드리는 서비스입니다.
									</p>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- 추가 정보 -->
		<div class="orderArea ">
			<div class="title">
				<h3>추가 정보</h3>
			</div>
			<div class="ec-base-table typeWrite">
				<table border="1" summary="">
					<caption>추가 정보 입력</caption>
					<colgroup>
						<col style="width: 139px;">
						<col style="width: auto;">
					</colgroup>
					<tbody class="xans-element- xans-order xans-order-ordadd">
						<tr class="xans-record-">
							<th scope="row">고객메세지</th>
							<td><input id="oa_content[1|6288]" name="oa_content[1|6288]"
								fw-filter="" fw-label="고객메세지" fw-msg="" class="inputTypeText"
								placeholder="" size="70" maxlength="50" value="" type="text"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- 기타 문의사항 -->
		<div class="orderArea displaynone">
			<div class="title">
				<h3>기타 문의사항</h3>
			</div>
			<div class="ec-base-table typeWrite">
				<table border="1" summary="">
					<caption>기타 문의사항</caption>
					<colgroup>
						<col style="width: 139px;">
						<col style="width: auto;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">기타 문의사항</th>
							<td><textarea id="question" name="question" fw-filter=""
									fw-label="기타 문의사항" fw-msg="" maxlength="255" cols="70"></textarea></td>
						</tr>
						<tr>
							<th scope="row">비밀번호</th>
							<td><input id="question_passwd" name="question_passwd"
								fw-filter="" fw-label="기타문의사항 비밀번호" fw-msg="" value=""
								type="password" disabled=""></td>
						</tr>
					</tbody>
				</table>
			</div>
			<ul class="list">
				<li>해당 문의 사항은 <a href="/board/product/list.html?board_no=6"
					target="_blank"><strong>[Q&amp;A]</strong></a> 에 자동 등록됩니다.
				</li>
				<li>운영자에 문의할 내용이나 요청할 내용이 있는 경우 기재하여 주세요.</li>
				<li>비밀번호는 작성하신 문의글을 게시판에서 내용 확인 할 때 사용됩니다.</li>
			</ul>
		</div>
		<!-- 약관 동의 -->
		<div class="termArea displaynone">
			<div class="check displaynone"></div>
			<div class="inner">
				<div class="box displaynone">
					<h4>쇼핑몰 이용약관</h4>
				</div>
				<div class="box displaynone" id="ec-orderform-NoMemberAgreementRow"
					style="display: block;">
					<h4>비회원 구매 시 개인정보수집 이용동의</h4>
				</div>
				<div class="box displaynone" id="ec-orderform-PrivacyAgreementRow"
					style="display: none;">
					<h4>개인정보수집 이용동의</h4>
				</div>
				<div class="box displaynone">
					<h4>배송정보 제공방침</h4>
				</div>
				<div id="ec-shop-privacy_agreement_for_identification"
					class="box displaynone">
					<h4>고유식별정보수집 동의</h4>
					<textarea id="privacy_agreement_for_identification"
						name="privacy_agreement_for_identification" fw-filter=""
						fw-label="고유식별정보수집" fw-msg="" maxlength="250" cols="70"
						readonly="1">[고유식별정보 처리에 대한 안내]
회사는 회원이 주문한 상품의 배송 시 배송 국가의 통관을 위하여 고유식별정보(신분증 ID)를 수집하여 배송 처리 완료 후 1달까지 보유 및 이용합니다.
수집한 고유식별정보는 통관 처리를 위해 아래 수탁업체에 제공될 수 있습니다.

- 수탁업체 : ㅇㅇ택배, ㅁㅁ택배
- 위탁업무 : 해외배송 시 통관 처리
- 보유 및 이용기간 : 배송완료 후 1달

※ 고유식별정보 제공에 동의하지 않으시면, 해당 국가로의 배송이 불가합니다.</textarea>
					<input id="privacy_agreement_for_identification_checkbox0"
						name="privacy_agreement_for_identification_checkbox[]"
						fw-filter="" fw-label="고유식별정보수집 동의" fw-msg="" value="T"
						type="checkbox" disabled=""><label
						for="privacy_agreement_for_identification_checkbox0">동의</label>
				</div>
				<div class="box displaynone displaynone"
					id="ec-orderform-informationAgreementRow" style="display: none;">
					<h4>개인정보 제3자 제공 동의 (선택)</h4>
				</div>
				<div class="box displaynone displaynone"
					id="ec-orderform-ConsignmentAgreementRow" style="display: none;">
					<h4>개인정보취급 위탁 동의 (선택)</h4>
				</div>
			</div>
		</div>
		<!-- 결제 예정 금액 -->
		<div class="title">
			<h3>결제 예정 금액</h3>
		</div>
		<div class="totalArea">
			<div class="ec-base-table typeList gBorder total">
				<table border="1" summary="">
					<caption>결제 예정 금액</caption>
					<colgroup>
						<col style="width: 33.33%">
						<col style="width: 33.33%" class="">
						<col style="width: 33.33%">
					</colgroup>
					<thead>
						<tr>
							<th scope="col"><strong>총 주문 금액</strong> <a href="#none"
								onclick="EC_SHOP_FRONT_ORDERFORM_DISPLAY.onDiv('order_layer_detail', event);"
								class="more"><img
									src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
									alt="내역보기"></a></th>
							<th scope="col" class=""><strong>총 </strong><strong
								id="total_addsale_text" class="">할인</strong><strong
								id="plus_mark" class=""> + </strong><strong
								id="total_addpay_text" class="">부가결제</strong><strong>
									금액</strong></th>
							<th scope="col"><strong>총 결제예정 금액</strong></th>
						</tr>
					</thead>
					<tbody class="center">
						<tr>
							<td class="price"><div class="box txt16">
									<strong>KRW <span id="total_order_price_view"
										class="txt23">27,500</span></strong> <span class="displaynone"><span
										id="total_order_price_ref_view"></span></span>
								</div></td>
							<td class="option "><div class="box txt16">
									<strong>-</strong> <strong>KRW <span
										id="total_sale_price_view" class="txt23">0</span></strong> <span
										class="displaynone"><span
										id="total_sale_price_ref_view"></span></span>
								</div></td>
							<td><div class="box txtEm txt16">
									<strong>=</strong> <strong>KRW <span
										id="total_order_sale_price_view" class="txt23">27,500</span></strong> <span
										class="displaynone"><span
										id="total_order_sale_price_ref_view"></span></span>
								</div></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="detail">
				<div class="ec-base-table gMerge ">
					<table border="1" summary="">
						<caption>할인 내역</caption>
						<colgroup>
							<col style="width: 139px">
							<col style="width: auto">
						</colgroup>
						<tbody>
							<tr class="sum txt14">
								<th scope="row"><strong>총 할인금액</strong></th>
								<td>KRW <strong id="total_addsale_price_view">0</strong></td>
							</tr>
							<tr class="displaynone mCouponSelect" style="display: table-row;">
								<th scope="row">쿠폰할인</th>
								<td><a href="#none" id="btn_coupon_select"><img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_total_coupon.gif"
										alt="쿠폰적용"></a></td>
							</tr>
							<!-- 참고 : 쿠폰적용 후 -->
							<tr class="mCouponModify" style="display: none;">
								<th scope="row">쿠폰할인</th>
								<td><span class="mTotalCouponDiscount">KRW 0</span> <a
									id="eCouponModify" href="#none"><img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_total_modify.gif"
										alt="수정"></a>
									<div id="divCpnView" style="display: none" class="coupon">
										<span id="txt_cpn_contents"></span> <span id="txt_cpn_price"></span>
										<span id="txt_cpn_attr_D"></span> <span id="txt_cpn_attr_M"></span>
										<span id="txt_cpn_attr_C"></span>
									</div>
									<div id="divCpn" style="display: none" class="couponArea"></div>
								</td>
							</tr>
							<!-- //참고 -->
							<tr class="displaynone"
								id="ec-shop-orderfom-total-benefit-view-id">
								<th scope="row">추가할인금액</th>
								<td><span class="gSpace20">KRW <span
										id="total_benefit_price_view">0</span></span> <a href="#none"
									onclick="EC_SHOP_FRONT_ORDERFORM_DISPLAY.onDiv('order_layer_addsale', event);"><img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
										alt="내역보기"></a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="ec-base-table gMerge ">
					<table border="1" summary="">
						<caption>부가결제 내역</caption>
						<colgroup>
							<col style="width: 139px">
							<col style="width: auto">
						</colgroup>
						<tbody>
							<tr class="sum txt14">
								<th scope="row"><strong>총 부가결제금액</strong></th>
								<td>KRW <strong id="total_addpay_price_view">0</strong></td>
							</tr>
						</tbody>
						<!-- 적립금 -->
						<tbody class="displaynone">
							<tr>
								<th scope="row">적립금</th>
								<td>
									<p>
										<input id="input_mile" name="input_mile" fw-filter=""
											fw-label="적립금" fw-msg="" class="inputTypeText" placeholder=""
											size="10" value="" type="text"> 원 (총 사용가능 적립금 : <strong
											class="txtWarn"></strong>원)
									</p>
									<ul class="info">
										<li>적립금은 최소 이상일 때 결제가 가능합니다.</li>
										<li id="mileage_max_unlimit" class="displaynone">최대 사용금액은
											제한이 없습니다.</li>
										<li id="mileage_max_limit" class="displaynone">1회 구매시 적립금
											최대 사용금액은 입니다.</li>
										<li>적립금으로만 결제할 경우, 결제금액이 0으로 보여지는 것은 정상이며 [결제하기] 버튼을 누르면
											주문이 완료됩니다.</li>
										<li id="mileage_shipfee" class="displaynone">적립금 사용 시
											배송비는 적립금으로 사용 할 수 없습니다.</li>
										<li id="mileage_exception" class="displaynone">적립금 사용 시
											해당 상품에 대한 적립금은 적립되지 않습니다.</li>
									</ul>
								</td>
							</tr>
						</tbody>
						<!-- 예치금 -->
						<tbody class="">
							<tr>
								<th scope="row">예치금</th>
								<td>
									<p>
										KRW <input id="input_deposit" name="input_deposit"
											fw-filter="" fw-label="예치금" fw-msg="" class="inputTypeText"
											placeholder="" size="10" value="" type="text"> 원 (총
										사용가능 예치금 : KRW <strong class="txtWarn">0</strong>원)
									</p>
									<ul class="info">
										<li>예치금은 사용제한 없이 언제든 결제가 가능합니다.</li>
										<li>예치금으로만 결제할 경우, 결제금액이 0으로 보여지는 것은 정상이며 [결제하기] 버튼을 누르면
											주문이 완료됩니다.</li>
										<li>현금환불요청 예치금이 있을 경우, 현금환불요청 예치금을 차감한 금액만 사용할 수 있으며, 예치금
											환불요청을 취소하시면 전액 사용 가능합니다.</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- 결제수단 -->
		<div class="title">
			<h3>결제수단</h3>
			<span class="txtEm gIndent20-2 "> <input type="checkbox"
				id="save_paymethod" name="save_paymethod" value=""> <label
				for="save_paymethod"> 지금 선택한 결제수단을 다음에도 사용</label>
			</span>
		</div>
		<div class="payArea">
			<div class="payment">
				<div class="method">
					<span class="ec-base-label"><input id="addr_paymethod0"
						name="addr_paymethod" fw-filter="isFill" fw-label="결제방식" fw-msg=""
						value="cash" type="radio" checked="checked"><label
						for="addr_paymethod0">무통장 입금</label></span> <span class="ec-base-label"><input
						id="addr_paymethod1" name="addr_paymethod" fw-filter="isFill"
						fw-label="결제방식" fw-msg="" value="card" type="radio"><label
						for="addr_paymethod1">카드 결제</label></span> <span class="ec-base-label"><input
						id="addr_paymethod2" name="addr_paymethod" fw-filter="isFill"
						fw-label="결제방식" fw-msg="" value="cell" type="radio"><label
						for="addr_paymethod2">휴대폰 결제</label></span> <span class="ec-base-label"><input
						id="addr_paymethod3" name="addr_paymethod" fw-filter="isFill"
						fw-label="결제방식" fw-msg="" value="tcash" type="radio"><label
						for="addr_paymethod3">에스크로(실시간 계좌이체)</label></span>
				</div>

				<div class="ec-base-table">
					<!-- 무통장입금 -->
					<table border="1" summary="" id="payment_input_cash"
						style="display: table;">
						<caption>무통장입금</caption>
						<colgroup>
							<col style="width: 139px">
							<col style="width: auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">입금자명</th>
								<td><input id="pname" name="pname" fw-filter=""
									fw-label="무통장 입금자명" fw-msg="" class="inputTypeText"
									placeholder="" size="15" maxlength="20" value="" type="text"></td>
							</tr>
							<tr>
								<th scope="row">입금은행</th>
								<td><select id="bankaccount" name="bankaccount"
									fw-filter="" fw-label="무통장 입금은행" fw-msg="">
										<option value="-1">::: 선택해 주세요. :::</option>
										<option
											value="bank_04:437201-04-192634:서지우(애즈클로):국민은행:www.kbstar.com">국민은행:437201-04-192634
											서지우(애즈클로)</option>
								</select>
									<p class="gBlank5 ">
										<a href="#none" id="btn_bank_go"><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_bank.gif"
											alt="은행사이트 바로가기"></a>
									</p></td>
							</tr>
						</tbody>
					</table>
					<!-- 실시간 계좌이체 -->
					<table border="1" summary="" id="payment_input_tcash"
						style="display: none;">
						<caption>실시간 계좌이체</caption>
						<colgroup>
							<col style="width: 139px">
							<col style="width: auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">예금주명</th>
								<td><input id="allat_account_nm" name="allat_account_nm"
									fw-filter="" fw-label="무통장 입금자명" fw-msg=""
									class="inputTypeText" placeholder="" size="26" maxlength="30"
									value="" type="text"></td>
							</tr>
							<tr>
								<th scope="row"></th>
								<td><input type="checkbox" name="flagEscrowUse"
									id="flagEscrowUse0" value="T"><label
									for="flagEscrowUse0"> 에스크로(구매안전)서비스를 적용합니다.</label></td>
							</tr>
						</tbody>
					</table>
					<!-- 에스크로(가상계좌) -->
					<table border="1" summary="" id="payment_input_icash"
						style="display: none;">
						<caption>에스크로(가상계좌)</caption>
						<colgroup>
							<col style="width: 139px">
							<col style="width: auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">에스크로</th>
								<td><input id="flagEscrowIcashUse0"
									name="flagEscrowIcashUse" fw-filter="" fw-label="에스크로(구매안전)"
									fw-msg="" value="T" type="checkbox"><label
									for="flagEscrowIcashUse0"></label><label
									for="flagEscrowIcashUse0">에스크로(구매안전)서비스를 적용합니다.</label></td>
							</tr>
						</tbody>
					</table>
					<!-- 무통장입금, 카드결제, 휴대폰결제, 실시간계좌이체 -->
					<div id="pg_paymethod_info" class="payHelp" style="display: block;">
						<p id="pg_paymethod_info_shipfee" class="ec-base-help">최소 결제
							가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</p>
						<p id="pg_paymethod_info_pg" class="ec-base-help"
							style="display: none;">소액 결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수
							있습니다.</p>
					</div>

					<!-- 케이페이 도움말 -->
					<div id="kpay_info" class="payHelp" style="display: none;">
						<p class="ec-base-help">휴대폰에 설치된 케이페이 앱에서 비밀번호 입력만으로 빠르고 안전하게
							결제가 가능한 서비스 입니다.</p>
						<p class="ec-base-help">
							안드로이드의 경우 구글 플레이, 아이폰의 경우 앱 스토어에서 케이페이 앱을 설치 한 후,<br> 최초 1회
							카드정보를 등록하셔야 사용 가능합니다.
						</p>
					</div>

					<!-- 페이나우 도움말 -->
					<div id="paynow_info" class="payHelp" style="display: none;">
						<p class="ec-base-help">휴대폰에 설치된 페이나우 앱에서 비밀번호 입력만으로 빠르고 안전하게
							결제가 가능한 서비스 입니다.</p>
						<p class="ec-base-help">
							안드로이드의 경우 구글 플레이, 아이폰의 경우 앱 스토어에서 페이나우 앱을 설치 한 후,<br> 최초 1회
							카드 및 계좌 정보를 등록하셔야 사용 가능합니다
						</p>
					</div>

					<!-- 페이코 도움말 -->
					<div id="payco_info" class="payHelp" style="display: none;">
						<p class="ec-base-help">페이코 결제 팝업창에서 비밀번호 입력만으로 빠르고 안전하게 결제가
							가능한 서비스 입니다.</p>
						<p class="ec-base-help">
							<a href="//www.payco.com" target="_blank">www.payco.com</a> 에
							회원가입 후, 최초 1회 카드 및 계좌 정보를 등록하셔야 사용 가능합니다.
						</p>
					</div>

					<!-- 카카오페이 도움말 -->
					<div id="kakaopay_info" class="payHelp" style="display: none;">
						<p class="ec-base-help">휴대폰에 설치된 카카오톡 앱에서 비밀번호 입력만으로 빠르고 안전하게
							결제가 가능한 서비스 입니다.</p>
						<p class="ec-base-help">
							안드로이드의 경우 구글 플레이, 아이폰의 경우 앱 스토어에서 카카오톡 앱을 설치 한 후,<br> 최초 1회
							카드 및 계좌 정보를 등록하셔야 사용 가능합니다.
						</p>
						<p class="ec-base-help">인터넷 익스플로러의 경우 8 이상에서만 결제 가능합니다.</p>
						<p class="ec-base-help">BC카드 중 신한, 하나, 국민카드는 결제가 불가능합니다.</p>
					</div>
				</div>

				<!-- 증명서류 발급 -->
				<div class="agree">
					<table border="1" summary="">
						<caption>증명서류 발급</caption>
						<tbody class="receipt">
							<tr id="cashreceipt_display_area" class="displaynone"
								style="display: table-row;">
								<th scope="row">현금영수증 신청</th>
								<td>
									<div class="methods"></div>
									<div id="cashreceipt_form_area" class="ec-base-table cash">
										<table border="1" summary="">
											<caption>현금영수증 발급 정보 입력</caption>
											<colgroup>
												<col style="width: 129px">
												<col style="width: auto">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">구분</th>
													<td></td>
												</tr>
												<tr class="mobile" id="cashreceipt_mobile_display_area">
													<th scope="row">핸드폰 번호</th>
													<td></td>
												</tr>
												<tr class="regno" id="cashreceipt_regno_display_area">
													<th scope="row">사업자 번호</th>
													<td></td>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							<tr id="tax_request_display_area" class="displaynone"
								style="display: table-row;">
								<th scope="row">세금계산서 신청</th>
								<td>
									<div class="methods"></div>
									<div id="tax_request_form_area" class="tax">
										<ul class="info">
											<li>- 세금 계산서 발행 신청을 위해 아래 모든 입력사항을 빠짐없이 입력하십시오.</li>
											<li>- 신청양식 작성 후 사업자 등록증 사본을 팩스(02.1234.5678)로 보내주십시오.</li>
										</ul>
										<strong class="title">신청자 정보</strong>
										<div class="ec-base-table">
											<table border="1" summary="">
												<caption>세금계산서 신청자 정보 입력</caption>
												<colgroup>
													<col style="width: 129px">
													<col style="width: auto">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">신청자 이름</th>
														<td></td>
													</tr>
													<tr class="mobile">
														<th scope="row">신청자 전화번호</th>
														<td></td>
													</tr>
													<tr class="regno">
														<th scope="row">E-Mail</th>
														<td></td>
													</tr>
												</tbody>
											</table>
										</div>
										<strong class="title">사업자 정보</strong>
										<div class="ec-base-table">
											<table border="1" summary="">
												<caption>세금계산서 사업자 정보 입력</caption>
												<colgroup>
													<col style="width: 129px">
													<col style="width: auto">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">사업자 구분</th>
														<td>
															<div class="businessType"></div>
														</td>
													</tr>
													<tr>
														<th scope="row">사업자등록번호</th>
														<td></td>
													</tr>
													<tr>
														<th scope="row">상호(법인명)</th>
														<td></td>
													</tr>
													<tr>
														<th scope="row">대표자명</th>
														<td></td>
													</tr>
													<tr>
														<th scope="row">사업장 주소</th>
														<td><a href="#none" id="btn_search_tzipcode"><img
																src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_address_search.gif"
																alt="주소검색"></a><br> <br></td>
													</tr>
													<tr>
														<th scope="row">업태</th>
														<td></td>
													</tr>
													<tr>
														<th scope="row">종목</th>
														<td></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
						<!-- 청약철회방침 -->
						<tbody class="displaynone">
							<tr>
								<th scope="row">청약철회방침</th>
								<td>
									<div class="textArea">
										<textarea id="subscription_terms" name="subscription_terms"
											fw-filter="" fw-label="청약철회방침" fw-msg="" maxlength="250"
											cols="70" readonly="1">①“애즈클로”과 재화등의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를 받은 날부터 7일 이내에는 청약의 철회를 할 수 있습니다.

② 이용자는 재화등을 배송받은 경우 다음 각호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.
1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)
2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우
3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우
4. 같은 성능을 지닌 재화등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우

③ 제2항제2호 내지 제4호의 경우에 “몰”이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회등이 제한되지 않습니다.

④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화등을 공급받은 날부터 3월이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.

제16조(청약철회 등의 효과)

① “애즈클로”은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화등의 대금을 환급합니다. 이 경우 “몰”이 이용자에게 재화등의 환급을 지연한 때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.

② “애즈클로”은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화등의 대금을 지급한 때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 재화등의 대금의 청구를 정지 또는 취소하도록 요청합니다.

③ 청약철회등의 경우 공급받은 재화등의 반환에 필요한 비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회등을 하는 경우 재화등의 반환에 필요한 비용은 “애즈클로”이 부담합니다.

④ 이용자가 재화등을 제공받을때 발송비를 부담한 경우에 “몰”은 청약 철회시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.</textarea>
										<a href="#none"
											onclick="winPop('/order/agreement/subscription.html')"><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_more.gif"
											alt="전체보기"></a>
									</div>
									<p>
										<input id="subscription_agreement_chk0"
											name="subscription_agreement_chk" fw-filter="" fw-label=""
											fw-msg="" value="T" type="checkbox" disabled=""><label
											for="subscription_agreement_chk0"></label><label
											for="subscription_agreement_chk0"><strong>동의함</strong></label>
									</p>
								</td>
							</tr>
						</tbody>
						<!-- 전자보증보험-->
						<tbody class="guarantee displaynone" style="display: none;">
							<tr>
								<th scope="row">전자보증보험</th>
								<td>
									<div>
										<p>
											전자보증보험 발급 여부 : <input id="eguarantee_flag0"
												name="eguarantee_flag" fw-filter="" fw-label="전자보증보험 발급여부"
												fw-msg="" value="T" type="radio" disabled=""><label
												for="eguarantee_flag0">발급</label> <input
												id="eguarantee_flag1" name="eguarantee_flag" fw-filter=""
												fw-label="전자보증보험 발급여부" fw-msg="" value="F" type="radio"
												checked="checked" disabled=""><label
												for="eguarantee_flag1">미발급</label>
										</p>
										<p>
											전자보증보험 안내(100% 매매보호 안전결제) <a href="/common/usafe_notice.php"
												target="_blank"
												onclick="window.open(this.href,'new','height=500 width=550 toolbar=no location=no directory=no status=no resizable=no'); return false;">[자세히보기]</a>
										</p>
										<p>물품대금결제시 구매자의 피해보호를 위해 '(주)서울보증보험'의 보증보험증권이 발급됩니다.</p>
										<p>증권이 발급되는 것의 의미는, 물품대금 결제시에 소비자에게 서울보증보험의 쇼핑몰보증보험 계약체결서를
											인터넷상으로 자동 발급하여, 피해발생시 쇼핑몰보증보험으로써 완벽하게 보호받을 수 있습니다.</p>
										<p>또한, 입력하신 개인정보는 증권발급을 위해 필요한 정보이며 다른 용도로 사용되지 않습니다.</p>
										<p>전자보증보험 발생시 별도의 수수료가 부과되지 않습니다.</p>
									</div>
									<div id="eguarantee_personal">
										<p>
											생년월일 : <input id="eguarantee_year" name="eguarantee_year"
												fw-filter="" fw-label="전자보증보험 생년월일1" fw-msg=""
												class="inputTypeText" placeholder="" size="4" maxlength="4"
												value="" type="text" disabled=""> 년 <input
												id="eguarantee_month" name="eguarantee_month" fw-filter=""
												fw-label="전자보증보험 생년월일2" fw-msg="" class="inputTypeText"
												placeholder="" size="2" maxlength="2" value="" type="text"
												disabled=""> 월 <input id="eguarantee_day"
												name="eguarantee_day" fw-filter="" fw-label="전자보증보험 생년월일3"
												fw-msg="" class="inputTypeText" placeholder="" size="2"
												maxlength="2" value="" type="text" disabled=""> 일
										</p>
										<p>
											성별 : <input id="eguarantee_user_gender0"
												name="eguarantee_user_gender" fw-filter=""
												fw-label="전자보증보험 성별" fw-msg="" value="1" type="radio"
												checked="checked" disabled=""><label
												for="eguarantee_user_gender0">남자</label> <input
												id="eguarantee_user_gender1" name="eguarantee_user_gender"
												fw-filter="" fw-label="전자보증보험 성별" fw-msg="" value="2"
												type="radio" disabled=""><label
												for="eguarantee_user_gender1">여자</label>
										</p>
										<p>
											개인정보 이용동의 : <input id="eguarantee_personal_agreement0"
												name="eguarantee_personal_agreement" fw-filter=""
												fw-label="전자보증보험 개인정보 이용동의" fw-msg="" value="T" type="radio"
												disabled=""><label
												for="eguarantee_personal_agreement0">동의함</label> <input
												id="eguarantee_personal_agreement1"
												name="eguarantee_personal_agreement" fw-filter=""
												fw-label="전자보증보험 개인정보 이용동의" fw-msg="" value="F" type="radio"
												checked="checked" disabled=""><label
												for="eguarantee_personal_agreement1">동의안함</label>
										</p>
									</div>
								</td>
							</tr>
						</tbody>
						<!-- Daum 비회원 구매 동의 -->
						<tbody class="displaynone">
							<tr>
								<th scope="row">Daum 비회원 구매<br>쇼핑정보 제공동의
								</th>
								<td>
									<div class="textArea">
										<a href="#none" onclick=""><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_more.gif"
											alt="전체보기"></a>
									</div>
									<p>
										<label for="daum_agreement_chk0"><strong>동의함</strong></label>
									</p>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<!-- 최종결제금액 -->
			<div class="total">
				<h4>
					<strong id="current_pay_name">무통장 입금</strong> <span>최종결제 금액</span>
				</h4>
				<p class="price">
					<span>KRW </span><input id="total_price" name="total_price"
						fw-filter="isFill" fw-label="결제금액" fw-msg="" class="inputTypeText"
						placeholder=""
						style="text-align: right; ime-mode: disabled; clear: none; border: 0px; float: none;"
						size="10" readonly="1" value="27500" type="text"><span></span>
				</p>
				<p class="paymentAgree" id="chk_purchase_agreement"
					style="display: block;">
					<input id="chk_purchase_agreement0" name="chk_purchase_agreement"
						fw-filter="" fw-label="구매진행 동의" fw-msg="" value="T"
						type="checkbox" style="display: block;"><label
						for="chk_purchase_agreement0">결제정보를 확인하였으며, 구매진행에 동의합니다.</label>
				</p>
				<div class="button">
					<a href="#none"><img src="/images/btn_place_order.gif"
						id="btn_payment" alt="결제하기"></a>
				</div>
				<div class="mileage ">
					<dl class="ec-base-desc gLarge right">
						<dt>
							<strong>총 적립예정금액</strong>
						</dt>
						<dd id="mAllMileageSum" class="txtWarn" style="display: block;">200원</dd>
					</dl>
					<dl class="ec-base-desc gLarge right">
						<dt>상품별 적립금</dt>
						<dd id="mProductMileage">200원</dd>
						<dt>회원 적립금</dt>
						<dd id="mMemberMileage">0원</dd>
						<dt>쿠폰 적립금</dt>
						<dd id="mCouponMileage">0원</dd>
					</dl>
				</div>
			</div>
		</div>
		<!-- 무이자 할부 이용안내 -->
		<div class="ec-base-help">
			<h3>무이자 할부 이용안내</h3>
			<div class="inner">
				<ul>
					<li>무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에
						대해 무이자할부가 적용되지 않습니다.</li>
					<li>무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기 바랍니다.</li>
				</ul>
			</div>
		</div>
		<!-- 이용안내 -->
		<div class="ec-base-help">
			<h3>이용안내</h3>
			<div class="inner">
				<h4>WindowXP 서비스팩2를 설치하신후 결제가 정상적인 단계로 처리되지 않는경우, 아래의 절차에 따라
					해결하시기 바랍니다.</h4>
				<ol>
					<li class="item1"><a href="javascript:;"
						onclick="window.open('http://service-api.echosting.cafe24.com/shop/notice_XP_ActiveX.html','','width=795,height=500,scrollbars=yes',resizable=1);">안심클릭
							결제모듈이 설치되지 않은 경우 ActiveX 수동설치</a></li>
					<li class="item2"><a
						href="http://www.microsoft.com/korea/windowsxp/sp2/default.asp"
						target="_blank">Service Pack 2에 대한 Microsoft사의 상세안내 </a></li>
					<li class="item3"></li>
				</ol>
				<!-- 크로스 브라우징 지원 -->
				<div class="">
					<h4>아래의 쇼핑몰일 경우에는 모든 브라우저 사용이 가능합니다.</h4>
					<ol>
						<li class="item1"><strong>KG이니시스, KCP, LG U+를 사용하는
								쇼핑몰일 경우</strong></li>
						<li class="item2">결제가능브라우저 : 크롬,파이어폭스,사파리,오페라 브라우저에서 결제 가능<br>(단,
							window os 사용자에 한하며 리눅스/mac os 사용자는 사용불가)
						</li>
						<li class="item3">최초 결제 시도시에는 플러그인을 추가 설치 후 반드시 브라우저 종료 후
							재시작해야만 결제가 가능합니다.<br>(무통장, 휴대폰결제 포함)
						</li>
					</ol>
				</div>
				<h4>세금계산서 발행 안내</h4>
				<ol>
					<li class="item1">부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달
						10일까지만 요청하실 수 있습니다.</li>
					<li class="item2">세금계산서는 사업자만 신청하실 수 있습니다.</li>
					<li class="item3">배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</li>
					<li class="item4">[세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로
						사업자등록증사본을 보내셔야 세금계산서 발생이 가능합니다.</li>
					<li class="item5">[세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수 있습니다.</li>
				</ol>
				<h4>부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경안내</h4>
				<ol>
					<li class="item1">변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신 주문에
						대해서는 세금계산서 발행이 불가하며</li>
					<li class="item2">신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법 시행령 57조)</li>
					<li class="item3">상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만 세금계산서
						발행이 가능함을 양지하여 주시기 바랍니다.</li>
				</ol>
				<h4>현금영수증 이용안내</h4>
				<ol>
					<li class="item1">현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체, 에스크로,
						예치금)에 대해 발행이 됩니다.</li>
					<li class="item2">현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은 포함되지 않습니다.</li>
					<li class="item3">발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을 해야
						합니다.</li>
					<li class="item4">현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에 따라
						변경 될 수 있습니다.)</li>
					<li class="item5">현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</li>
				</ol>
			</div>
		</div>
	</div>



</body>
</html>