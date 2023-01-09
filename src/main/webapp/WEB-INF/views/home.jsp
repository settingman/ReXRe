<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="shortcut icon" type="image/x-icon" href="https://www.rexremall.com/favicon.ico" />
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_data/wing_skbioland_200731_temp.css" />
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/wm_engine_SW/_engine/common/loading.css??202301051045" />
<script type="text/javascript">
	var hid_frame = "hidden1672883154";
	var mlv = "10";
	var alv = "";
	var root_url = "https://www.rexremall.com";
	var engine_url = "https://www.rexremall.com/wm_engine_SW";
	var this_url = "https://www.rexremall.com/";
	var ssl_url = "https://www.rexremall.com/main/exec.php";
	var soldout_name = "품절";
	var ace_counter_gcode = "";
	var uip = "112.221.225.164";
	var currency = "원";
	var currency_type = "원";
	var currency_decimal = "0";
	var r_currency_type = "";
	var r_currency_decimal = "0";
	var exchangeRate = "";
	var juso_api_use = "Y";
	var browser_type = "pc";
	var mobile_browser = "";
	var ssl_type = "Y";

	var click_prd = new Array();
	var click_prd_limit = 2;
	var click_prd_start = 1;
	var click_prd_finish = click_prd_limit + 1;
</script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui-1.11.3.min.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery.serializeObject.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/_skin/skbioland_200731/script.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/lang/lang_kor.js?00000002"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/common.js?202301051045"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/shop.review.js?202301051045"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery-wingNextPage.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/R2Na/R2Na.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/smartEditor/js/HuskyEZCreator.js"></script>
<script type="text/javascript">
	var date_picker_default = {
		monthNamesShort : [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
				"11", "12", ],
		dayNamesMin : [ _lang_pack.data_week_sun, _lang_pack.data_week_mon,
				_lang_pack.data_week_tue, _lang_pack.data_week_wed,
				_lang_pack.data_week_thu, _lang_pack.data_week_fri,
				_lang_pack.data_week_sat, ],
		weekHeader : "Wk",
		dateFormat : "yy-mm-dd",
		autoSize : false,
		changeYear : true,
		changeMonth : true,
		showButtonPanel : true,
		currentText : _lang_pack.common_info_today + "2023-01-05",
		closeText : _lang_pack.coommon_info_close,
	};

	/* Timer */
	const use_ts_mark_1 = "Y";
	const ts_mark_1 = "일";
	const use_ts_mark_2 = "Y";
	const ts_mark_2 = " :";
	const use_ts_mark_3 = "Y";
	const ts_mark_3 = " :";
	const use_ts_mark_4 = "Y";
	const ts_mark_4 = "";
</script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/sec.js"></script>
</head>

<body>
	<iframe name="hidden1672883154" src="about:blank" scrolling="no" style="display: none" width="0" height="0" frameborder="0"></iframe>

	<script type="text/javascript" defer="defer">
		$(document).ready(function() {
			setInterval("wingQuickSlide(228, 0, 0, 5)", 10);
		});
	</script>
	<style type="text/css">
<!--
#skin_main_index_big_div {
	width: 100%;
}
-->
</style>
	<div id="skin_main_index_big_div">
		<script src="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.css" />
		<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../animate.css" />
		<i id="crema-login-username" style="display: none"></i> <i id="crema-login-name" style="display: none"></i>
		<div id="wrapper">
			<!--상단 -->
			<%@ include file="/WEB-INF/views/include/header.jsp"%>
			<!--//상단 -->

			<!-- 중앙 -->
			<div id="cnt">
				<div class="cntbody">


					<style type="text/css" title="">
#cnt .cntbody {
	width: 100%;
	padding: 0;
}
</style>

					<div id="main">
						<div id="visual" class="section_cnt visual">
							<ul class="slide" style="overflow: hidden">
								<li style="position: absolute; top: 0px; left: -2000px; display: none; z-index: 4; opacity: 1; width: 2000px; height: 564px;"><a href="https://www.rexremall.com/shop/big_section.php?cno1=1009" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/f6702ea245e728e5d74d4d6dff3f82c2.jpg" border="0" /></a></li>
								<li style="position: absolute; top: 0px; left: -2000px; display: none; z-index: 4; opacity: 1; width: 2000px; height: 564px;"><a href="https://www.rexremall.com/shop/detail.php?pno=FFEABD223DE0D4EACB9A3E6E53E5448D&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/95fbc21c707af96e69a932f439c4d27f.jpg" border="0" /></a></li>
								<li style="position: absolute; top: 0px; left: -1904.83px; display: block; z-index: 4; opacity: 1; width: 2000px; height: 564px;"><a href="https://www.rexremall.com/shop/detail.php?pno=26657D5FF9020D2ABEFE558796B99584&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2Fshop%2Fbig_section.php%3Fcno1%3D1021&amp;ctype=1&amp;cno1=1021&amp;n_media=27758&amp;n_query=%EB%A6%AC%EB%B0%94%EC%9D%B4%EB%A6%AC&amp;n_rank=1&amp;n_ad_group=grp" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/9b26524df43817b1e7a4732124754c95.jpg" border="0" /></a></li>

								<li style="position: absolute; top: 0px; left: 95.1254px; display: block; z-index: 5; opacity: 1; width: 2000px; height: 564px;"><a href="https://rexremall.com/member/login.php" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/c82894fa6c52140cb373fd6a19acbee6.jpg" border="0" /></a></li>
							</ul>
							<div class="arrow">
								<p class="prev"></p>
								<p class="next"></p>
							</div>
							<ul class="pagination">
								<li class=""></li>
								<li class=""></li>
								<li class=""></li>
								<li class="activeSlide"></li>
							</ul>
						</div>

						<div class="section_cnt best">
							<div class="wrap_inner">
								<p class="title"></p>

								<div class="prd_basic col3 best_slide slick-initialized slick-slider">
									<button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block">Previous</button>
									<div aria-live="polite" class="slick-list draggable">
										<div class="slick-track" style="opacity: 1; width: 40000px; transform: translate3d(-1220px, 0px, 0px);" role="listbox">
											<div class="slick-slide slick-cloned" data-slick-index="-3" aria-hidden="true" tabindex="-1">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=F0E52B27A7A5D6A1A87373DFFA53DBE5&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1"><img src="https://skbiolandmall.wisacdn.com/_data/product/202208/08/79aaac8f106bacdfa0afe6c2e09ce93c.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=F0E52B27A7A5D6A1A87373DFFA53DBE5&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->


													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 574, '1059');" tabindex="-1">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("F0E52B27A7A5D6A1A87373DFFA53DBE5", this); return false;' tabindex="-1">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("F0E52B27A7A5D6A1A87373DFFA53DBE5", "리바이리 콤부차 배리옴 래디언스 앰플", "36,000"); return false;' tabindex="-1">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#수분광채 #산뜻 #비건앰플</span>

														<p class="name name1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=F0E52B27A7A5D6A1A87373DFFA53DBE5&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1">리바이리 콤부차 배리옴 래디언스 앰플</a>
														</p>

														<div class="summary">풍부한 수분감이 피부에 산뜻하게 흡수되어 촉촉하고 투명한 피부로 가꾸어주는 앰플</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">36,000원</p>

																<p class="sell">
																	<strong>36,000</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>36,000</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 0</li>
															<li>Review 15</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/a7245a1f498d87a81ed58f27c57ce71a.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
											<div class="slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true" tabindex="-1">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<a href="/product/productDetail?productId=1" tabindex="-1"> <img src="https://skbiolandmall.wisacdn.com/_data/product/202208/08/6d01008cb8fb554b26e73dd6733a6ecf.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=DD458505749B2941217DDD59394240E8&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->
													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 568, '1059');" tabindex="-1">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("DD458505749B2941217DDD59394240E8", this); return false;' tabindex="-1">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("DD458505749B2941217DDD59394240E8", "리바이리 콤부차 배리옴 마일드 포밍 클렌저", "24,000"); return false;' tabindex="-1">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#진정세안 #촉촉 #비건클렌저 #초도완판</span>

														<p class="name name1226">
															<a href="/product/productDetail?productId=2" tabindex="-1">리바이리 콤부차 배리옴 마일드 포밍 클렌저</a>
														</p>

														<div class="summary">조밀하고 부드러운 거품으로 말끔한 클렌징을 선사하는 약산성 포밍 클렌저</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">24,000원</p>

																<p class="sell">
																	<strong>24,000</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>24,000</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 1</li>
															<li>Review 8</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/a7245a1f498d87a81ed58f27c57ce71a.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
											<div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<a href="/product/productDetail?productId=2" tabindex="-1"><img src="https://skbiolandmall.wisacdn.com/_data/product/202208/08/984ffaa10c17f95b95baddacb5dc4017.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=E6B4B2A746ED40E1AF829D1FA82DAA10&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->
													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 572, '1059');" tabindex="-1">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("E6B4B2A746ED40E1AF829D1FA82DAA10", this); return false;' tabindex="-1">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("E6B4B2A746ED40E1AF829D1FA82DAA10", "리바이리 콤부차 배리옴 에센스 토너", "32,000"); return false;' tabindex="-1">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#각질정돈 #매끈 #비건토너</span>

														<p class="name name1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=E6B4B2A746ED40E1AF829D1FA82DAA10&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1">리바이리 콤부차 배리옴 에센스 토너</a>
														</p>

														<div class="summary">콤부차배리옴™ 80% 함유하여 피부에 순하고 촉촉하게 스며드는 약산성 토너</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">32,000원</p>

																<p class="sell">
																	<strong>32,000</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>32,000</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 0</li>
															<li>Review 9</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/3f38de1f731a1956e2e8a0cee0642b7d.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
											<div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide00">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<sec:authorize access="isAnonymous()">
																<a href="/product/productDetail?productId=1" tabindex="-1">
															</sec:authorize>
															<sec:authorize access="isAuthenticated()">
																<a href="/product/productDetailid?productId=1&member_idid=${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}" tabindex="-1">
															</sec:authorize>
															<img src="https://skbiolandmall.wisacdn.com/_data/product/202208/22/d52eed1ad2c623bd89d0363b846c1365.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=B2EEB7362EF83DEFF5C7813A67E14F0A&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->
													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 596, '1059');" tabindex="0">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("B2EEB7362EF83DEFF5C7813A67E14F0A", this); return false;' tabindex="0">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("B2EEB7362EF83DEFF5C7813A67E14F0A", "리바이리 콤부차 배리옴 스킨케어 5종 기획", "170,000"); return false;' tabindex="0">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#클렌저 #토너 #앰플 #크림 #마스크</span>

														<p class="name name1226">
															<a href="/product/productDetail?productId=2" tabindex="0">리바이리 콤부차 배리옴 스킨케어 5종 기획</a>
														</p>

														<div class="summary">건강한 피부를 위해 리바이리가 제안하는 비건 스킨케어 5종</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">170,000원</p>

																<p class="sell">
																	<strong>170,000</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>170,000</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 1</li>
															<li>Review 6</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/3f38de1f731a1956e2e8a0cee0642b7d.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
											<div class="slick-slide slick-active" data-slick-index="1" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide01">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<a href="/product/productDetail?productId=2" tabindex="0"><img src="https://skbiolandmall.wisacdn.com/_data/product/202208/22/2a81785d3198690a505a063c87217b3a.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=076A0C97D09CF1A0EC3E19C7F2529F2B&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->
													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 594, '1059');" tabindex="0">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("076A0C97D09CF1A0EC3E19C7F2529F2B", this); return false;' tabindex="0">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("076A0C97D09CF1A0EC3E19C7F2529F2B", "리바이리 콤부차 배리옴 베이직 2종 기획 (토너/폼클렌저)", "56,000"); return false;' tabindex="0">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#비건 #토너폼 #선물구성</span>

														<p class="name name1226">리바이리 콤부차 배리옴 베이직 2종 기획 (토...</p>

														<div class="summary">
															콤부차배리옴™ 80% 함유하여 피부에 순하고 촉촉하게 스며드는 약산성 토너<br /> 조밀하고 부드러운 거품으로 말끔한 클렌징을 선사하는 약산성 포밍 클렌저
														</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">56,000원</p>

																<p class="sell">
																	<strong>56,000</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>56,000</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 0</li>
															<li>Review 2</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/3f38de1f731a1956e2e8a0cee0642b7d.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
											<div class="slick-slide slick-active" data-slick-index="2" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide02">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<a href="/product/productDetail?productId=5" tabindex="0"><img src="https://skbiolandmall.wisacdn.com/_data/product/202208/08/94ffdfb1d7886b83e5cee672dbc11318.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=FFEABD223DE0D4EACB9A3E6E53E5448D&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->
													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 575, '1059');" tabindex="0">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("FFEABD223DE0D4EACB9A3E6E53E5448D", this); return false;' tabindex="0">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("FFEABD223DE0D4EACB9A3E6E53E5448D", "리바이리 콤부차 배리옴 인텐시브 크림", "48,000"); return false;' tabindex="0">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#장벽강화 #탄탄 #비건크림</span>

														<p class="name name1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=FFEABD223DE0D4EACB9A3E6E53E5448D&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="0">리바이리 콤부차 배리옴 인텐시브 크림</a>
														</p>

														<div class="summary">외부로부터 자극받은 피부를 진정시켜주고 피부 장벽 강화에 도움을 주는 인텐시브 크림</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">48,000원</p>

																<p class="sell">
																	<strong>48,000</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>48,000</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 2</li>
															<li>Review 19</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/a7245a1f498d87a81ed58f27c57ce71a.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
											<div class="slick-slide" data-slick-index="3" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide03">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=FDE9264CF376FFFE2EE4DDF4A988880D&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1"><img src="https://skbiolandmall.wisacdn.com/_data/product/202208/08/9146dfae7d1a41ba033e00893a752c87.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=FDE9264CF376FFFE2EE4DDF4A988880D&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->
													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 577, '1059');" tabindex="-1">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("FDE9264CF376FFFE2EE4DDF4A988880D", this); return false;' tabindex="-1">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("FDE9264CF376FFFE2EE4DDF4A988880D", "리바이리 콤부차 배리옴 릴리프 마스크 5매", "30,000"); return false;' tabindex="-1">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#진정보습 #밀착 #비건마스크</span>

														<p class="name name1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=FDE9264CF376FFFE2EE4DDF4A988880D&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1">리바이리 콤부차 배리옴 릴리프 마스크 5매</a>
														</p>

														<div class="summary">콤부차 배양 시트가 피부를 감싸주어 진정과 보습효과를 고스란히 전해주는 비건 릴리프 마스크</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">30,000원</p>

																<p class="sell">
																	<strong>30,000</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>30,000</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 0</li>
															<li>Review 10</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/3f38de1f731a1956e2e8a0cee0642b7d.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
											<div class="slick-slide" data-slick-index="4" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide04">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=58D4D1E7B1E97B258C9ED0B37E02D087&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1"><img src="https://skbiolandmall.wisacdn.com/_data/product/202208/08/9d67faf5de5906f682b3bb52fef7a3dc.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=58D4D1E7B1E97B258C9ED0B37E02D087&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->
													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 615, '1059');" tabindex="-1">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("58D4D1E7B1E97B258C9ED0B37E02D087", this); return false;' tabindex="-1">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("58D4D1E7B1E97B258C9ED0B37E02D087", "리바이리 콤부차 배리옴 릴리프 마스크 1매", "6,500"); return false;' tabindex="-1">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#진정보습 #밀착 #비건마스크</span>

														<p class="name name1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=58D4D1E7B1E97B258C9ED0B37E02D087&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1">리바이리 콤부차 배리옴 릴리프 마스크 1매</a>
														</p>

														<div class="summary">콤부차 배양 시트가 피부를 감싸주어 진정과 보습효과를 고스란히 전해주는 비건 릴리프 마스크</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">6,500원</p>

																<p class="sell">
																	<strong>6,500</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>6,500</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 0</li>
															<li>Review 0</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/3f38de1f731a1956e2e8a0cee0642b7d.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
											<div class="slick-slide" data-slick-index="5" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide05">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=F0E52B27A7A5D6A1A87373DFFA53DBE5&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1"><img src="https://skbiolandmall.wisacdn.com/_data/product/202208/08/79aaac8f106bacdfa0afe6c2e09ce93c.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=F0E52B27A7A5D6A1A87373DFFA53DBE5&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->
													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 574, '1059');" tabindex="-1">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("F0E52B27A7A5D6A1A87373DFFA53DBE5", this); return false;' tabindex="-1">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("F0E52B27A7A5D6A1A87373DFFA53DBE5", "리바이리 콤부차 배리옴 래디언스 앰플", "36,000"); return false;' tabindex="-1">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#수분광채 #산뜻 #비건앰플</span>

														<p class="name name1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=F0E52B27A7A5D6A1A87373DFFA53DBE5&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1">리바이리 콤부차 배리옴 래디언스 앰플</a>
														</p>

														<div class="summary">풍부한 수분감이 피부에 산뜻하게 흡수되어 촉촉하고 투명한 피부로 가꾸어주는 앰플</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">36,000원</p>

																<p class="sell">
																	<strong>36,000</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>36,000</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 0</li>
															<li>Review 15</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/a7245a1f498d87a81ed58f27c57ce71a.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
											<div class="slick-slide" data-slick-index="6" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide06">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=DD458505749B2941217DDD59394240E8&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1"><img src="https://skbiolandmall.wisacdn.com/_data/product/202208/08/6d01008cb8fb554b26e73dd6733a6ecf.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=DD458505749B2941217DDD59394240E8&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->
													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 568, '1059');" tabindex="-1">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("DD458505749B2941217DDD59394240E8", this); return false;' tabindex="-1">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("DD458505749B2941217DDD59394240E8", "리바이리 콤부차 배리옴 마일드 포밍 클렌저", "24,000"); return false;' tabindex="-1">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#진정세안 #촉촉 #비건클렌저 #초도완판</span>

														<p class="name name1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=DD458505749B2941217DDD59394240E8&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1">리바이리 콤부차 배리옴 마일드 포밍 클렌저</a>
														</p>

														<div class="summary">조밀하고 부드러운 거품으로 말끔한 클렌징을 선사하는 약산성 포밍 클렌저</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">24,000원</p>

																<p class="sell">
																	<strong>24,000</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>24,000</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 1</li>
															<li>Review 8</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/a7245a1f498d87a81ed58f27c57ce71a.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
											<div class="slick-slide" data-slick-index="7" aria-hidden="true" tabindex="-1" role="option" aria-describedby="slick-slide07">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=E6B4B2A746ED40E1AF829D1FA82DAA10&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1"><img src="https://skbiolandmall.wisacdn.com/_data/product/202208/08/984ffaa10c17f95b95baddacb5dc4017.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=E6B4B2A746ED40E1AF829D1FA82DAA10&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->
													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 572, '1059');" tabindex="-1">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("E6B4B2A746ED40E1AF829D1FA82DAA10", this); return false;' tabindex="-1">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("E6B4B2A746ED40E1AF829D1FA82DAA10", "리바이리 콤부차 배리옴 에센스 토너", "32,000"); return false;' tabindex="-1">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#각질정돈 #매끈 #비건토너</span>

														<p class="name name1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=E6B4B2A746ED40E1AF829D1FA82DAA10&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1">리바이리 콤부차 배리옴 에센스 토너</a>
														</p>

														<div class="summary">콤부차배리옴™ 80% 함유하여 피부에 순하고 촉촉하게 스며드는 약산성 토너</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">32,000원</p>

																<p class="sell">
																	<strong>32,000</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>32,000</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 0</li>
															<li>Review 9</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/3f38de1f731a1956e2e8a0cee0642b7d.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
											<div class="slick-slide slick-cloned" data-slick-index="8" aria-hidden="true" tabindex="-1">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=B2EEB7362EF83DEFF5C7813A67E14F0A&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1"><img src="https://skbiolandmall.wisacdn.com/_data/product/202208/22/d52eed1ad2c623bd89d0363b846c1365.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=B2EEB7362EF83DEFF5C7813A67E14F0A&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->
													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 596, '1059');" tabindex="-1">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("B2EEB7362EF83DEFF5C7813A67E14F0A", this); return false;' tabindex="-1">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("B2EEB7362EF83DEFF5C7813A67E14F0A", "리바이리 콤부차 배리옴 스킨케어 5종 기획", "170,000"); return false;' tabindex="-1">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#클렌저 #토너 #앰플 #크림 #마스크</span>

														<p class="name name1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=B2EEB7362EF83DEFF5C7813A67E14F0A&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1">리바이리 콤부차 배리옴 스킨케어 5종 기획</a>
														</p>

														<div class="summary">건강한 피부를 위해 리바이리가 제안하는 비건 스킨케어 5종</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">170,000원</p>

																<p class="sell">
																	<strong>170,000</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>170,000</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 1</li>
															<li>Review 6</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/3f38de1f731a1956e2e8a0cee0642b7d.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
											<div class="slick-slide slick-cloned" data-slick-index="9" aria-hidden="true" tabindex="-1">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=076A0C97D09CF1A0EC3E19C7F2529F2B&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1"><img src="https://skbiolandmall.wisacdn.com/_data/product/202208/22/2a81785d3198690a505a063c87217b3a.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=076A0C97D09CF1A0EC3E19C7F2529F2B&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->
													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 594, '1059');" tabindex="-1">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("076A0C97D09CF1A0EC3E19C7F2529F2B", this); return false;' tabindex="-1">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("076A0C97D09CF1A0EC3E19C7F2529F2B", "리바이리 콤부차 배리옴 베이직 2종 기획 (토너/폼클렌저)", "56,000"); return false;' tabindex="-1">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#비건 #토너폼 #선물구성</span>

														<p class="name name1226">리바이리 콤부차 배리옴 베이직 2종 기획 (토...</p>

														<div class="summary">
															콤부차배리옴™ 80% 함유하여 피부에 순하고 촉촉하게 스며드는 약산성 토너<br /> 조밀하고 부드러운 거품으로 말끔한 클렌징을 선사하는 약산성 포밍 클렌저
														</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">56,000원</p>

																<p class="sell">
																	<strong>56,000</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>56,000</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 0</li>
															<li>Review 2</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/3f38de1f731a1956e2e8a0cee0642b7d.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
											<div class="slick-slide slick-cloned" data-slick-index="10" aria-hidden="true" tabindex="-1">
												<div class="box">
													<div class="img">
														<div class="prdimg img1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=FFEABD223DE0D4EACB9A3E6E53E5448D&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1"><img src="https://skbiolandmall.wisacdn.com/_data/product/202208/08/94ffdfb1d7886b83e5cee672dbc11318.jpg" width="380" height="466" /></a>
														</div>
														<!-- 상품품절 영역 -->
														<div class="soldout" onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=FFEABD223DE0D4EACB9A3E6E53E5448D&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059'">SOLD OUT</div>
														<!-- //상품품절 영역 -->
													</div>
													<div class="info">
														<ul class="quick" style="display: none">
															<li class="preview"><a href="javascript:quickDetailPopup(this, 575, '1059');" tabindex="-1">상품팝업</a></li>
															<li class="wish"><a href="#" onclick='wishPartCartAjax("FFEABD223DE0D4EACB9A3E6E53E5448D", this); return false;' tabindex="-1">관심상품 담기</a></li>
															<li class="cart"><a href="#" onclick='cartPartCartAjax("FFEABD223DE0D4EACB9A3E6E53E5448D", "리바이리 콤부차 배리옴 인텐시브 크림", "48,000"); return false;' tabindex="-1">장바구니 담기</a></li>
														</ul>

														<span class="hashtag">#장벽강화 #탄탄 #비건크림</span>

														<p class="name name1226">
															<a href="https://www.rexremall.com/shop/detail.php?pno=FFEABD223DE0D4EACB9A3E6E53E5448D&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2F&amp;ctype=1&amp;cno1=1059" tabindex="-1">리바이리 콤부차 배리옴 인텐시브 크림</a>
														</p>

														<div class="summary">외부로부터 자극받은 피부를 진정시켜주고 피부 장벽 강화에 도움을 주는 인텐시브 크림</div>

														<div class="price">
															<div class="price_boxY">
																<p class="consumer dn">48,000원</p>

																<p class="sell">
																	<strong>48,000</strong>원
																</p>
															</div>
															<div class="price_box">
																<p class="consumer dn"></p>
																<p class="sell">
																	<strong>48,000</strong>원
																</p>
															</div>
														</div>
														<ul class="count" style="display: none">
															<li>Wish 2</li>
															<li>Review 19</li>
															<li>Q&amp;A 0</li>
														</ul>

														<div class="icon">
															<img src="https://skbiolandmall.wisacdn.com/_data/icon/a7245a1f498d87a81ed58f27c57ce71a.gif" align="absmiddle" />
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									&nbsp;&nbsp;&nbsp;&nbsp;
									<button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block">Next</button>
								</div>
							</div>
						</div>

						<div class="section_cnt board">
							<div class="wrap_inner">
								<p class="title"></p>
								<ul class="list">
									<li>
										<div class="img">
											<a href="https://www.rexremall.com/board/?db=gallery_2&amp;no=218&amp;mari_mode=view@view&amp;module=true"><img src="https://skbiolandmall.wisacdn.com/board//_data/gallery_2/202212/29//3910d1da43db5c752b53af1ed3ce6f22.jpg" /></a>
										</div>
										<p class="subject">
											<a href="https://www.rexremall.com/board/?db=gallery_2&amp;no=218&amp;mari_mode=view@view&amp;module=true">비클린 목동점 X 리바이리 GRAND OPEN</a>
										</p>
									</li>
									<li>
										<div class="img">
											<a href="https://www.rexremall.com/board/?db=gallery_2&amp;no=217&amp;mari_mode=view@view&amp;module=true"><img src="https://skbiolandmall.wisacdn.com/board//_data/gallery_2/202212/14//19d24faf4ee9d7b08a59bd4f96d216c6.jpg" /></a>
										</div>
										<p class="subject">
											<a href="https://www.rexremall.com/board/?db=gallery_2&amp;no=217&amp;mari_mode=view@view&amp;module=true">유튜브 채널 '주식회사 굳었-으' 리바이리 친환경 화장품 소개!</a>
										</p>
									</li>
									<li>
										<div class="img">
											<a href="https://www.rexremall.com/board/?db=gallery_2&amp;no=216&amp;mari_mode=view@view&amp;module=true"><img src="https://skbiolandmall.wisacdn.com/board//_data/gallery_2/202211/15//09029cd53ac566b293860aa5c469ed17.jpg" /></a>
										</div>
										<p class="subject">
											<a href="https://www.rexremall.com/board/?db=gallery_2&amp;no=216&amp;mari_mode=view@view&amp;module=true">Beauty FULL 비건 신상공개!</a>
										</p>
									</li>
									<li>
										<div class="img">
											<a href="https://www.rexremall.com/board/?db=gallery_2&amp;no=215&amp;mari_mode=view@view&amp;module=true"><img src="https://skbiolandmall.wisacdn.com/board//_data/gallery_2/202211/14//8cbc619d9cef5b61dd5af21fbfd68ec1.jpg" /></a>
										</div>
										<p class="subject">
											<a href="https://www.rexremall.com/board/?db=gallery_2&amp;no=215&amp;mari_mode=view@view&amp;module=true">현대바이오랜드, 비건 화장품 '리바이리 콤부차배리옴' 출시</a>
										</p>
									</li>
									<li>
										<div class="img">
											<a href="https://www.rexremall.com/board/?db=gallery_2&amp;no=214&amp;mari_mode=view@view&amp;module=true"><img src="https://skbiolandmall.wisacdn.com/board//_data/gallery_2/202211/14//e79a3b7457827a67d05ea5ff38157120.jpg" /></a>
										</div>
										<p class="subject">
											<a href="https://www.rexremall.com/board/?db=gallery_2&amp;no=214&amp;mari_mode=view@view&amp;module=true">"먹지말고 피부에 양보하세요" 뷰티도 '비건'시대</a>
										</p>
									</li>
									<li>
										<div class="img">
											<a href="https://www.rexremall.com/board/?db=gallery_2&amp;no=213&amp;mari_mode=view@view&amp;module=true"><img src="https://skbiolandmall.wisacdn.com/board//_data/gallery_2/202211/14//6f665a83d6ad7e7892964cdb85f972df.jpg" /></a>
										</div>
										<p class="subject">
											<a href="https://www.rexremall.com/board/?db=gallery_2&amp;no=213&amp;mari_mode=view@view&amp;module=true">먹거리~화장품 비건 열풍</a>
										</p>
									</li>
								</ul>
							</div>
						</div>

						<div class="section_cnt sns">
							<div class="wrap_inner">
								<p class="title"></p>
								<div class="img_wrap">
									<div class="img">
										<a href="https://www.instagram.com/p/CCshYU6FwPX" target="_blank" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/82f99981157cc726b0c5c81ecb981dea.jpg" border="0" /></a>
									</div>
									<div class="img">
										<a href="https://www.instagram.com/p/CImocj8nweq/?utm_source=ig_web_copy_link" target="_blank" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/0fd958050e2d0099aa3e4f5557ea1ffc.jpg" border="0" /></a>
									</div>
									<div class="img">
										<a href="https://www.instagram.com/p/CCk-gl3njLM" target="_blank" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/4736a7488463e5bb2addb3f6f830cebc.jpg" border="0" /></a>
									</div>
									<div class="img">
										<a href="https://blog.naver.com/sarah3355/221837801854" target="_blank" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/235b1380361ab132d4f9d7f759f3c9ac.png" border="0" /></a>
									</div>
									<div class="img">
										<a href="https://www.instagram.com/p/B25wShegCOi/?igshid=1l3wavknc45sg" target="_blank" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/581cce1bd01a8b0edcedb82215d23f3d.png" border="0" /></a>
									</div>
									<div class="img">
										<a href="https://www.instagram.com/p/B2LdhvdgTL_/?igshid=18s40pma4e38n" target="_blank" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/d0d9b7904f94edadfb020ddd589699d8.png" border="0" /></a>
									</div>
									<div class="img">
										<a href="https://www.instagram.com/p/B33GkzGAfTN/?igshid=2yobhpxwytqd" target="_blank" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/81b1f66bfabda936398daa7b5925f4bc.png" border="0" /></a>
									</div>
									<div class="img">
										<a href="https://www.instagram.com/p/B2Ldyb5AKI9/?igshid=y8nwvoug1hvq" target="_blank" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/073aa39fb8f44c10c37262c9fc46487b.png" border="0" /></a>
									</div>
									<div class="img">
										<a href="https://www.instagram.com/rexre.official/" target="_blank" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/10a5637b3e0de301085b4d8cdb245b21.png" border="0" /></a>
									</div>
									<div class="img">
										<a href="https://www.instagram.com/p/B25wAYYAFnK/?igshid=f4k4m41kaydb" target="_blank" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/7e17138f124abe9381c5bda4be45313a.png" border="0" /></a>
									</div>
									<div class="img">
										<a href="https://www.instagram.com/p/B25wfG5gmvt/?igshid=1ct6qvh400vqc" target="_blank" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/f25755569aeaf4cfa9f1f231025d3674.png" border="0" /></a>
									</div>
									<div class="img">
										<a href="https://blog.naver.com/syhy0908/221848073990" target="_blank" onfocus="this.blur()"><img src="https://skbiolandmall.wisacdn.com/_data/banner/49f58a8fb8aef7d7a75210c9b6c753dd.png" border="0" /></a>
									</div>
								</div>
								<p class="id">@rexre.official</p>
							</div>
						</div>
					</div>
					<!-- crema.me / 팝업을 띄우는 코드 / 스크립트를 수정할 경우 연락주세요 (support@crema.me) -->
					<div class="crema-popup"></div>
					<script type="text/javascript" src="https://www.rexremall.com/_skin/skbioland_200731/img/../jquery.cycle.all.js"></script>
					<script type="text/javascript">
						$(document).ready(function() {
							$("#visual .slide").cycle({
								fx : "scrollHorz",
								speed : 300,
								timeout : 2000,
								pause : false,
								//pauseOnPagerHover:false,
								startingSlide : 0,
								next : "#visual .next",
								prev : "#visual .prev",
								pager : jQuery("#visual .pagination"),
								pagerAnchorBuilder : function() {
									return "<li></li>";
								},
							});

							$(".best_slide").slick({
								slidesToShow : 3,
								slidesToScroll : 1,
								autoplay : false,
								variableWidth : true,
								centerMode : false,
								dots : false,
								arrows : true,
								loop : true,
							});
						});
					</script>



					<script type="text/javascript">
						(function(a, g, e, n, t) {
							a.enp = a.enp || function() {
								(a.enp.q = a.enp.q || []).push(arguments);
							};
							n = g.createElement(e);
							n.async = !0;
							n.defer = !0;
							n.src = "https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";
							t = g.getElementsByTagName(e)[0];
							t.parentNode.insertBefore(n, t);
						})(window, document, "script");
						enp("create", "common", "rexreskbio", {
							device : "W"
						});
						enp("send", "common", "rexreskbio");
					</script>
					<!-- Enliple Tracker End -->
					<!--mkt script '모비온' scr_bottom end-->
				</div>
			</div>
			<!-- //중앙 -->
			<!-- 하단 -->
			<%@ include file="/WEB-INF/views/include/footer.jsp"%>
			<!-- //하단 -->
		</div>
		<!-- placeholder 스크립트 (삭제하시면 ie 하위브라우저에서 구현되지 않습니다.) -->
		<script src="https://www.rexremall.com/_skin/skbioland_200731/img/../placeholder.js"></script>
		<script type="text/javascript">
			// 인기검색어 폰트사이즈 제어
			$(document).ready(function() {
				$(".header").each(function(idx) {
					if ($(this).find(".hot_keyword .list li").length > 8) {
						$(this).find(".hot_keyword .list").addClass("small");
					}
				});
			});
		</script>
	</div>
	<script type="text/javascript" defer="defer">
		$(document).ready(function() {
		});
	</script>
	<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/auto_scroll.js" defer="defer"></script>
	<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui-1.11.3.min.js"></script>
	<div id="mbris_main_section" style="height: 0px; display: block; position: absolute; z-index: 100000">
		<iframe style="height: 0px; border: medium none" scrolling="no" id="iframe_mbris_main_section"></iframe>
	</div>
	<div id="mbris_bounce_section" style="height: 0px; z-index: 100000; visibility: hidden; overflow: hidden">
		<iframe style="width: 100%; height: 0px; border: medium none; opacity: 0" scrolling="no" id="iframe_mbris_bounce_section"></iframe>
	</div>
	<script language="JavaScript"></script>
	<style type="text/css">
.pop100 img {
	width: 100%;
}
</style>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script type="text/javascript">
		Kakao.init("35f0e015717743bf7c71437e8faf25bd");
	</script>
	<script type="text/javascript" src="https://static.criteo.net/js/ld/ld.js" async="true"></script>
	<script type="text/javascript">
		window.criteo_q = window.criteo_q || [];
		window.criteo_q.push({
			event : "setAccount",
			account : "71354"
		}, {
			event : "setEmail",
			type : ""
		}, {
			event : "setSiteType",
			type : "d"
		}, {
			event : "viewHome"
		});
	</script>

	<span itemscope="" itemtype="http://schema.org/Organization">
		<link itemprop="url" href="https://www.rexremall.com" /> <a itemprop="sameAs" href="https://www.facebook.com/officialrexre/"></a> <a itemprop="sameAs" href="https://pf.kakao.com/_xjFMxbT"></a> <a itemprop="sameAs" href="https://www.instagram.com/rexre.official"></a>
	</span>

	<div id="criteo-tags-div" style="display: none"></div>
	<iframe style="display: none" title="Criteo DIS iframe" width="0" height="0"></iframe>
</body>
</html>