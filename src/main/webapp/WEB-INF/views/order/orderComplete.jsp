<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>리바이리 (ReXRe)</title>

<link rel="shortcut icon" type="image/x-icon" href="https://www.rexremall.com/favicon.ico" />
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_data/wing_skbioland_200731_temp.css" />
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/wm_engine_SW/_engine/common/loading.css??202301031838" />

<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui-1.11.3.min.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery.serializeObject.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/_skin/skbioland_200731/script.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/lang/lang_kor.js?00000002"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/common.js?202301031838"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/shop.review.js?202301031838"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery-wingNextPage.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/R2Na/R2Na.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/smartEditor/js/HuskyEZCreator.js"></script>

<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/sec.js"></script>


</head>



<body>
	<iframe name="hidden1672738732" src="about:blank" width="0" height="0" scrolling="no" frameborder="0" style="display: none"></iframe>

	<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/order.js"></script>
	<script type="text/javascript">
		var total_gift = 0;
		var gift_multi = "Y";
	</script>



	<script type="text/javascript" defer="defer">
		$(document).ready(function() {
			setInterval("wingQuickSlide(228, 0, 0, 5)", 10);
		});
	</script>
	<style type="text/css">
<!--
#skin_shop_order_finish_big_div {
	width: 100%;
}
-->
</style>
	<div id="skin_shop_order_finish_big_div">
		<script src="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.css" />
		<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../animate.css" />
		<i id="crema-login-username" style="display: none">95parksh</i> <i id="crema-login-name" style="display: none">박성환</i>
		<div id="wrapper">
			<!--상단 -->
			<%@ include file="/WEB-INF/views/include/header.jsp"%>
			<!--//상단 -->


			<!-- 중앙 -->
			<div id="cnt">
				<div class="cntbody">


					<h2 class="subtitle">주문완료</h2>



					<ul id="order_step" class="order_step">
						<li>
							<p class="number">01</p>
							<p class="txt">장바구니</p>
						</li>
						<li>
							<p class="number">02</p>
							<p class="txt">주문/결제</p>
						</li>
						<li class="active">
							<p class="number">03</p>
							<p class="txt">주문완료</p>
						</li>
					</ul>

					<!-- //주문스텝 사용자코드 -->
					<!-- 마이페이지 메뉴 -->

					<!-- //마이페이지 메뉴 -->
					<!-- 타이틀이미지 -->

					<!-- //타이틀이미지 -->

					<div id="orderfin">
						<h3>주문내역</h3>
						<div class="box">
							<table class="tbl_order2">
								<caption class="hidden">결제정보</caption>
								<colgroup>
									<col style="width: 50%" />
									<col />
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">주문번호</th>
										<td>
											<strong>20230103-99450</strong>
										</td>
									</tr>
									<tr>
										<th scope="row">총 상품구매금액</th>
										<td>27,000원</td>
										<!-- 상품 총 합계 -->
									</tr>
									<tr>
										<th scope="row">배송비</th>
										<td>4,000원</td>
									</tr>

									<tr>
										<th scope="row">총 주문금액</th>
										<td>31,000원</td>
										<!-- 배송비 포함 합계 -->
									</tr>

									<tr>
										<th scope="row">총 결제금액</th>
										<td>31,000원</td>
										<!-- 실결제금액 -->
									</tr>
								</tbody>
							</table>
						</div>
						<div class="info">

							<p class="email">
								고객님의 소중한 주문정보를 <strong>이메일로</strong>로 발송해 드렸습니다.<br />(비회원으로 주문하신 경우 주문 확인시 주문번호가 필요하오니 꼭 메모해 두세요.)
							</p>

						</div>

						<div class="btn">
							<span class="box_btn large"><a href="/mypage/order_list.php">주문조회하기</a></span> <span class="box_btn large white"><a href="/">쇼핑계속하기</a></span>
						</div>
					</div>


				</div>
			</div>
			<!-- //중앙끝 -->

			<!-- 하단 -->
			<%@ include file="/WEB-INF/views/include/footer.jsp"%>
			<!-- //하단끝 -->

		</div>


		<span itemscope="" itemtype="http://schema.org/Organization">
			<link itemprop="url" href="https://www.rexremall.com" /> <a itemprop="sameAs" href="https://www.facebook.com/officialrexre/"></a> <a itemprop="sameAs" href="https://pf.kakao.com/_xjFMxbT"></a> <a itemprop="sameAs" href="https://www.instagram.com/rexre.official"></a>
		</span>


		<div id="mbris_bounce_section" style="height: 0px; z-index: 100000; visibility: hidden; overflow: hidden">
			<iframe scrolling="no" id="iframe_mbris_bounce_section" style="width: 100%; height: 0px; border: none; opacity: 0"></iframe>
		</div>
		<iframe style="display: none"></iframe>
</body>

</html>
