<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>리바이리 (ReXRe)</title>

<link rel="shortcut icon" type="image/x-icon"
	href="https://www.rexremall.com/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="https://www.rexremall.com/_data/wing_skbioland_200731_temp.css" />
<link rel="stylesheet" type="text/css"
	href="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="https://www.rexremall.com/wm_engine_SW/_engine/common/loading.css??202301031838" />

<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui-1.11.3.min.js"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery.serializeObject.js"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/_skin/skbioland_200731/script.js"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/lang/lang_kor.js?00000002"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/common.js?202301031838"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/shop.review.js?202301031838"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery-wingNextPage.js"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/R2Na/R2Na.js"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/smartEditor/js/HuskyEZCreator.js"></script>

<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/sec.js"></script>


</head>



<body>
	<iframe name="hidden1672738732" src="about:blank" width="0" height="0"
		scrolling="no" frameborder="0" style="display: none"></iframe>

	<script type="text/javascript"
		src="https://www.rexremall.com/wm_engine_SW/_engine/common/order.js"></script>
	<script type="text/javascript">
      var total_gift = 0;
      var gift_multi = "Y";
    </script>



	<script type="text/javascript" defer="defer">
      $(document).ready(function () {
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
		<script
			src="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.min.js"></script>
		<link rel="stylesheet" type="text/css"
			href="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.css" />
		<link rel="stylesheet" type="text/css"
			href="https://www.rexremall.com/_skin/skbioland_200731/img/../animate.css" />
		<i id="crema-login-username" style="display: none">95parksh</i> <i
			id="crema-login-name" style="display: none">박성환</i>
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
										<td><strong>20230103-99450</strong></td>
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
							<p class="bank">
								무통장 입금계좌 : <strong>기업은행 462-002629-01-017 (주)현대바이오랜드</strong> <br />입금기한
								: <strong>2023-01-05 23:59</strong>
							</p>

							<p class="email">
								고객님의 소중한 주문정보를 <strong>95parksh@naver.com</strong>로 발송해 드렸습니다.<br />(비회원으로
								주문하신 경우 주문 확인시 주문번호가 필요하오니 꼭 메모해 두세요.)
							</p>
							<form method="post"
								action="https://www.rexremall.com/main/exec.php"
								target="hidden1672738732" onsubmit="return checkOrdGift(this)"
								style="margin: 0px">
								<input type="hidden" name="exec_file"
									value="order/order_gift_select.exe.php" />
							</form>
						</div>

						<table class="tbl_col prd">
							<caption>주문상품</caption>
							<colgroup>
								<col style="width: 10%" />
								<col />
								<col style="width: 12%" />
								<col style="width: 12%" />
								<col style="width: 12%" />
								<col style="width: 12%" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col" colspan="2">상품명</th>
									<th scope="col">가격</th>
									<th scope="col">수량</th>
									<th scope="col">총금액</th>
									<th scope="col">적립금</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><a
										href="https://www.rexremall.com/shop/detail.php?pno=FDE9264CF376FFFE2EE4DDF4A988880D&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2Fshop%2Forder_finish.php&amp;ctype=1&amp;cno1="><img
											src="https://skbiolandmall.wisacdn.com/_data/product/202208/08/9146dfae7d1a41ba033e00893a752c87.jpg"
											width="65" height="80" /></a></td>
									<td class="tal"><a
										href="https://www.rexremall.com/shop/detail.php?pno=FDE9264CF376FFFE2EE4DDF4A988880D&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2Fshop%2Forder_finish.php&amp;ctype=1&amp;cno1=">리바이리
											콤부차 배리옴 릴리프 마스크 5매</a><br /></td>
									<td>27,000원<br /></td>
									<td>1</td>
									<td>27,000원</td>
									<td>1,350원</td>
								</tr>
								<tr></tr>
							</tbody>
						</table>
						<div class="btn">
							<span class="box_btn large"><a
								href="/mypage/order_list.php">주문조회하기</a></span> <span
								class="box_btn large white"><a href="/">쇼핑계속하기</a></span>
						</div>
					</div>

					<!-- Enliple Tracker Start -->
					<script type="text/javascript">
              var ENP_VAR = { conversion: { product: [] } };

              ENP_VAR.conversion.ordCode = "20230103-99450";
              ENP_VAR.conversion.totalPrice = "31,000";
              ENP_VAR.conversion.totalQty = "1";

              (function (a, g, e, n, t) {
                a.enp =
                  a.enp ||
                  function () {
                    (a.enp.q = a.enp.q || []).push(arguments);
                  };
                n = g.createElement(e);
                n.async = !0;
                n.defer = !0;
                n.src =
                  "https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";
                t = g.getElementsByTagName(e)[0];
                t.parentNode.insertBefore(n, t);
              })(window, document, "script");
              enp("create", "conversion", "rexreskbio", { device: "W" });
              enp("send", "conversion", "rexreskbio");
            </script>
					<!-- Enliple Tracker End -->
					<!-- mkt script '카카오모먼트' scr_order start-->
					<script type="text/javascript" charset="UTF-8"
						src="//t1.daumcdn.net/adfit/static/kp.js"></script>
					<script type="text/javascript">
              kakaoPixel("4206431215218999756").pageView();
              kakaoPixel("4206431215218999756").purchase({
                total_quantity: "1", // 주문 내 상품 개수(optional)
                total_price: "31000", // 주문 총 가격(optional)
                currency: "KRW", // 주문 가격의 화폐 단위(optional, 기본 값은 KRW)
                products: [
                  // 주문 내 상품 정보(optional)
                  { name: "snack1", quantity: "1", price: "200" },
                  { name: "snack2", quantity: "1", price: "100" },
                ],
              });
            </script>
					<!--mkt script '카카오모먼트' scr_order end-->
					<!--mkt script '카카오모먼트' List start-->

					<!--mkt script '카카오모먼트' List end-->
					<!--mkt script '모비온' List start-->

					<!--mkt script '모비온' List end-->
					<!-- mkt script '모비온' scr_bottom start-->
					<!-- Enliple Insite breakAway Popup start -->
					<script type="text/javascript">
              (function (m, b, r, i, s) {
                m.mbris =
                  m.mbris ||
                  function () {
                    (m.mbris.q = m.mbris.q || []).push(arguments);
                  };
                i = b.createElement(r);
                i.async = !0;
                i.defer = !0;
                i.src = "https://cdn.megadata.co.kr/dist/prod/enp_mbris.min.js";
                0 < b.querySelectorAll("script[src*=enp_mbris]").length &&
                m.ENP_MBRIS_INVOKE
                  ? m.ENP_MBRIS_INVOKE()
                  : ((s = b.getElementsByTagName(r)[0]),
                    s.parentNode.insertBefore(i, s));
              })(window, document, "script");
              mbris(
                "202010303120052258_rexreskbio_3_01,202010303120052259_rexreskbio_3_02"
              );
            </script>
					<!-- Enliple Insite breakAway Popup end -->
					<!-- Enliple Tracker Start -->
					<script type="text/javascript">
              (function (a, g, e, n, t) {
                a.enp =
                  a.enp ||
                  function () {
                    (a.enp.q = a.enp.q || []).push(arguments);
                  };
                n = g.createElement(e);
                n.async = !0;
                n.defer = !0;
                n.src =
                  "https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";
                t = g.getElementsByTagName(e)[0];
                t.parentNode.insertBefore(n, t);
              })(window, document, "script");
              enp("create", "common", "rexreskbio", { device: "W" });
              enp("send", "common", "rexreskbio");
            </script>
					<!-- Enliple Tracker End -->
					<!--mkt script '모비온' scr_bottom end-->
				</div>
			</div>
			<!-- //중앙끝 -->
			
			<!-- 하단 -->
			<%@ include file="/WEB-INF/views/include/footer.jsp"%>
			<!-- //하단끝 -->
			
		</div>
		
	
	<span itemscope="" itemtype="http://schema.org/Organization">
		<link itemprop="url" href="https://www.rexremall.com" /> <a
		itemprop="sameAs" href="https://www.facebook.com/officialrexre/"></a>
		<a itemprop="sameAs" href="https://pf.kakao.com/_xjFMxbT"></a> <a
		itemprop="sameAs" href="https://www.instagram.com/rexre.official"></a>
	</span>

	<div id="criteo-tags-div" style="display: none">
		<iframe
			src='https://gum.criteo.com/syncframe?topUrl=www.rexremall.com&amp;origin=onetag#{"bundle":{"origin":3,"value":"PfEITF8wMzdkQzMlMkJna28xbXJFWCUyQnBnVXFMRU1YM2FSS2kxR013Wks3bVFaWDVvRmdEN0dneGJRZVFreEFUZVl5dGVZJTJGd2VmMEtENHg0ckFKaTNvbVo5Rjg2VVJvemU4OTJaYlR6amR0dEFHNUdLOWJQb3I4SSUyQkVKc094ZDVmSEtneHBUcDJmdkZpVjZpR0J4R0h6Nm05RTV0QSUzRCUzRA"},"cw":true,"optout":{"origin":0,"value":null},"origin":"onetag","pm":0,"sid":{"origin":0,"value":null},"tld":"rexremall.com","topUrl":"www.rexremall.com","version":"5_12_3","ifa":{"origin":0,"value":null},"lsw":true}'
			id="criteo-syncframe-onetag" width="0" height="0" frameborder="0"
			style="border-width: 0px; margin: 0px; display: none"
			title="Criteo GUM iframe"></iframe>
	</div>
	<div id="mbris_bounce_section"
		style="height: 0px; z-index: 100000; visibility: hidden; overflow: hidden">
		<iframe scrolling="no" id="iframe_mbris_bounce_section"
			style="width: 100%; height: 0px; border: none; opacity: 0"></iframe>
	</div>
	<iframe style="display: none"></iframe>
</body>

</html>
