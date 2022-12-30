<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<div id="sub_hd" class="">

	<div class="header hyaluron">
		<div class="gnb">
			<!--
		<ul class="tab_brand">
			<li class="rexre"><a href="/">ReXRe</a></li>
			<li class="az"><a href="/content/content.php?cont=hyaluronaz">HyaluronAZ</a></li>
		</ul>
		-->
			<div class="inner">
				<h1>
					<a href="/content/content.php?cont=hyaluronaz"><img
						src="https://www.rexremall.com/_skin/skbioland_200731/img/logo/logo_hyaluronaz.png"
						alt="클린 &amp; 비건 뷰티 브랜드 리바이리 "></a>
				</h1>
				<div class="lnb">
					<ul id="az_menu" class="category">
						<li data-menuanchor="buy"><a
							href="/content/content.php?cont=hyaluronaz#buy">PRODUCT</a></li>
						<li data-menuanchor="brand"><a
							href="/content/content.php?cont=hyaluronaz#brand">BRAND</a></li>
						<li class="viewsub event"><a
							href="/board/?db=gallery_1&amp;cate=17">EVENT</a>
							<ul class="list">
								<li><a href="/board/?db=gallery_1&amp;cate=17">진행중인 이벤트</a></li>
								<li><a href="/board/?db=gallery_1&amp;cate=18">종료된 이벤트</a></li>
								<li><a href="/board/?db=basic_3">당첨자발표</a></li>
							</ul></li>
						<li class="viewsub community"><a href="/board/?db=basic_4">COMMUNITY</a>
							<ul class="list">
								<li><a href="/board/?db=basic_4">공지사항</a></li>
								<li><a href="/board/?db=gallery_2">미디어</a></li>
								<!--<li><a href="/content/content.php?cont=benefit">회원혜택</a></li>-->
								<li><a href="/board/?db=basic_2">쇼핑FAQ</a></li>
								<li><a href="/mypage/counsel_list.php">1:1문의</a></li>
							</ul></li>
					</ul>
				</div>
				<ul class="menu">
					<!-- gnb 로그인 메뉴부분에 사용됩니다. 삭제시 문제가 발생할 수 있습니다. -->
					<li class="txt"><a href="/member/login.php">LOGIN</a></li>
					<li class="txt"><a href="/member/join_step1.php">JOIN</a></li>
					<!-- //gnb 로그인 메뉴부분에 사용됩니다. 삭제시 문제가 발생할 수 있습니다. -->
					<li class="viewsub"><a href="/mypage/mypage.php">MYPAGE</a>
						<ul class="list">
							<li><a href="/mypage/order_list.php">주문/배송조회</a></li>
							<li><a href="/mypage/coupon_down_list.php">쿠폰현황</a></li>
							<li><a href="/mypage/wish_list.php">위시리스트</a></li>
							<li><a href="/member/edit_step1.php">정보수정</a></li>
							<li><a href="/shop/product_review_list.php">상품후기</a></li>
							<li><a href="/mypage/counsel_list.php">1:1문의</a></li>
							<li><a href="/board/?db=basic_2">쇼핑 FAQ</a></li>
						</ul></li>
					<li><a href="/shop/cart.php" class="cart">장바구니<span
							class="ea_cart front_cart_rows quick_cart_cnt">0</span><span
							class="balloon">장바구니</span></a></li>
					<li><a href="#" onclick="toggle_view('box_search2',this)"
						class="search">검색 <span class="balloon">통합검색</span></a></li>
				</ul>
			</div>
			<div id="box_search2" class="box_search">
				<span class="close" onclick="toggle_view('box_search2');"></span>
				<form method="get"
					action="https://www.rexremall.com/shop/search_result.php">
					<div class="box">
						<input type="text" name="search_str" value=""
							class="form_input block basic_search" placeholder="검색어 입력">
						<input type="image"
							src="https://www.rexremall.com/_skin/skbioland_200731/img/button/hd_search2.png"
							alt="검색" class="btn">
					</div>
				</form>
				<div class="hot_keyword">
					<h5>인기검색어</h5>
					<ul class="list">
						<li><a href="/shop/search_result.php?search_str=마스크팩">#
								마스크팩</a></li>
						<li><a href="/shop/search_result.php?search_str=바이오파밍">#
								바이오파밍</a></li>
						<li><a href="/shop/search_result.php?search_str=히알루론">#
								히알루론</a></li>
						<li><a href="/shop/search_result.php?search_str=앰플"># 앰플</a></li>
						<li><a href="/shop/search_result.php?search_str=미네랄앰플">#
								미네랄앰플</a></li>
						<li><a href="/shop/search_result.php?search_str=주름개선">#
								주름개선</a></li>
						<li><a href="/shop/search_result.php?search_str=세라마이드">#
								세라마이드</a></li>
						<li><a href="/shop/search_result.php?search_str=펩타이드">#
								펩타이드</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //상단 -->
<!-- 중앙 -->
<div id="cnt">
	<div class="cntbody">
		<!-- 서브 타이틀 텍스트(일반페이지) 사용자코드 -->

		<!-- //서브 타이틀 텍스트(일반페이지) 사용자코드 -->
		<!-- 서브 타이틀 텍스트(카테고리) 사용자코드 -->
		<h2 class="subtitle">PRODUCT</h2>
		<!-- //서브 타이틀 텍스트(카테고리) 사용자코드 -->
		<!-- 서브 타이틀 텍스트(게시판) 사용자코드 -->

		<!-- //서브 타이틀 텍스트(게시판) 사용자코드 -->
		<!-- 주문스텝 사용자코드 -->

		<!-- //주문스텝 사용자코드 -->
		<!-- 마이페이지 메뉴 -->

		<!-- //마이페이지 메뉴 -->
		<!-- 타이틀이미지 -->

		<!-- //타이틀이미지 -->

		<style type="text/css">
#cnt .cntbody {
	width: 100%;
	padding: 0;
}
</style>
		<div id="big_section">
			<div class="wrap_inner">

				<ul class="sub_category">
					<li class="mid_code cate_1012"><a
						href="/shop/big_section.php?cno1=1012" class="active">전체</a></li>
					<li class="cate_1020"><a
						href="https://www.rexremall.com/shop/big_section.php?cno1=1020">마스크팩</a></li>
					<li class="cate_1021"><a
						href="https://www.rexremall.com/shop/big_section.php?cno1=1021">스킨케어</a></li>
				</ul>
				<!-- 상품정렬 -->
				<div class="total_sort">
					<p class="total">
						<strong>12</strong>개의 상품
					</p>
					<div class="sort">
						<select onchange="if(this.value){location.href=this.value}"><option
								value="">:: 상품정렬 ::</option>
							<option value="/shop/big_section.php?sort=1&amp;cno1=1012"
								selected="">신상품순</option>
							<option value="/shop/big_section.php?sort=3&amp;cno1=1012">판매량높은순</option>
							<option value="/shop/big_section.php?sort=4&amp;cno1=1012">높은가격순</option>
							<option value="/shop/big_section.php?sort=5&amp;cno1=1012">낮은가격순</option>
							<option value="/shop/big_section.php?sort=9&amp;cno1=1012">판매량낮은순</option></select>

					</div>
				</div>


				<!--// 상품정렬 JSP 적용 -->
				<c:forEach items="${productList}" var="productList">
					<ul class="prd_basic col3">
						<li><div class="box ">
								<div class="img">
									<div class="prdimg img1226">
										<a
											href="https://www.rexremall.com/shop/detail.php?pno=B2EEB7362EF83DEFF5C7813A67E14F0A&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2Fshop%2Fbig_section.php%3Fcno1%3D1012&amp;ctype=1&amp;cno1=1012"><img
											src="https://skbiolandmall.wisacdn.com/_data/product/202208/22/d52eed1ad2c623bd89d0363b846c1365.jpg"
											width="380" height="466"></a>
									</div>
									<!-- 상품품절 영역 -->
									<div class="soldout"
										onclick="location.href='https://www.rexremall.com/shop/detail.php?pno=B2EEB7362EF83DEFF5C7813A67E14F0A&amp;rURL=https%3A%2F%2Fwww.rexremall.com%2Fshop%2Fbig_section.php%3Fcno1%3D1012&amp;ctype=1&amp;cno1=1012'">SOLD
										OUT</div>
									<!-- //상품품절 영역 -->
								</div>
								<div class="info">
									<ul class="quick" style="display: none;">
										<li class="preview"><a
											href="javascript:quickDetailPopup(this, 596, '1012');">상품팝업</a></li>
										<li class="wish"><a href="#"
											onclick="wishPartCartAjax(&quot;B2EEB7362EF83DEFF5C7813A67E14F0A&quot;, this); return false;">관심상품
												담기</a></li>
										<li class="cart"><a href="#"
											onclick="cartPartCartAjax(&quot;B2EEB7362EF83DEFF5C7813A67E14F0A&quot;, &quot;리바이리 콤부차 배리옴 스킨케어 5종 기획&quot;, &quot;170,000&quot;); return false;">장바구니
												담기</a></li>
									</ul>

									<span class="hashtag">#클렌저 #토너 #앰플 #크림 #마스크</span>

									<!-- 상품명 -->
									<p class="name name1226">
										<a href=""> <c:out value="${productList.product_name}" />

										</a>
									</p>

									<div class="summary">건강한 피부를 위해 리바이리가 제안하는 비건 스킨케어 5종</div>

									<div class="price">
										<div class="price_boxY">

											<p class="consumer dn">
												<c:out value="${productList.product_price}" />
											</p>

											<p class="sell">
												<strong><c:out value="${productList.product_price}" /></strong>원
											</p>

										</div>
										<div class="price_box">



											<p class="consumer dn"></p>
											<p class="sell">
												<strong><c:out value="${productList.product_price}" /></strong>원
											</p>

										</div>
									</div>
									<ul class="count" style="display: none;">
										<li>Wish 1</li>
										<li>Review 5</li>
										<li>Q&amp;A 0</li>
									</ul>

									<div class="icon">
										<img
											src="https://skbiolandmall.wisacdn.com/_data/icon/3f38de1f731a1956e2e8a0cee0642b7d.gif"
											align="absmiddle">
									</div>



								</div>
							</div></li>
					</ul>
					<!-- 상품 jsplist -->
				</c:forEach>





				<ul class="paging">
					<li></li>
					<li><strong>1</strong></li>
					<li><a href="?page=2&amp;cno1=1012">2</a></li>
					<li></li>
				</ul>
			</div>
		</div>
		<script type="text/javascript">
	// 하위분류 고정
	var cno = document.location.href;
	var regExp = /cno1=.+&?/gi;
	cno = cno.match(regExp);
	cno = cno[0].replace('cno1=', '');
	cno = cno.replace('#', '');
	cno = cno.replace(/&.+|&/, '');
	if(cno == '1012') {
		$('.sub_category .cate_'+cno+' a').addClass('active');
	} else {
		$('.sub_category .cate_'+cno+' a').removeClass('active');
	}

	// 중분류 노출 제어
	if (1 != 2) {
		$('.sub_category').show();
	} else {
		$('.sub_category').hide();
	}
</script>
		<!-- mkt script '모비온' scr_bottom start-->
		<!-- Enliple Insite breakAway Popup start -->
		<script type="text/javascript">(function(m,b,r,i,s){m.mbris=m.mbris||function(){(m.mbris.q=m.mbris.q||[]).push(arguments)};i=b.createElement(r);i.async=!0;i.defer=!0;i.src="https://cdn.megadata.co.kr/dist/prod/enp_mbris.min.js";0<b.querySelectorAll("script[src*=enp_mbris]").length&&m.ENP_MBRIS_INVOKE?m.ENP_MBRIS_INVOKE():(s=b.getElementsByTagName(r)[0],s.parentNode.insertBefore(i,s))})(window,document,"script");mbris("202010303120052258_rexreskbio_3_01,202010303120052259_rexreskbio_3_02");
</script>
		<!-- Enliple Insite breakAway Popup end -->
		<!-- Enliple Tracker Start -->
		<script type="text/javascript">
    (function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
    enp('create', 'common', 'rexreskbio', { device: 'W' });    
    enp('send', 'common', 'rexreskbio');
</script>
		<!-- Enliple Tracker End -->
		<!--mkt script '모비온' scr_bottom end-->


	</div>
</div>
<!-- //중앙 -->
<!-- 하단 -->

<!-- //하단 -->
</div>
<!-- placeholder 스크립트 (삭제하시면 ie 하위브라우저에서 구현되지 않습니다.) -->
<script
	src="https://www.rexremall.com/_skin/skbioland_200731/img/../placeholder.js"></script>
<script type="text/javascript">
// 인기검색어 폰트사이즈 제어
$(document).ready(function(){
	$('.header').each(function(idx) {
		if ($(this).find('.hot_keyword .list li').length > 8){
			$(this).find('.hot_keyword .list').addClass('small');
		}
	})
});
</script>

</div>
<script type="text/javascript" defer="defer">
$(document).ready(function() {
	});
</script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/auto_scroll.js"
	defer="defer"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui-1.11.3.min.js"></script>
<script language="JavaScript">
</script>
<style type="text/css">
.pop100 img {
	width: 100%;
}
</style>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">Kakao.init('35f0e015717743bf7c71437e8faf25bd');</script>
<script type="text/javascript"
	src="https://static.criteo.net/js/ld/ld.js" async="true"></script>
<script type="text/javascript">
window.criteo_q = window.criteo_q || [];
window.criteo_q.push(
	{event:"setAccount",account:"71354"},
	{event:"setEmail",type:""},
	{event:"setSiteType",type:"d"},
	{"event":"viewList","item":["B2EEB7362EF83DEFF5C7813A67E14F0A","076A0C97D09CF1A0EC3E19C7F2529F2B","FDE9264CF376FFFE2EE4DDF4A988880D"]});

</script>
<script type="text/javascript">
	if(typeof wcs != 'undefined') {
		if(typeof cpa == 'undefined') var cpa = {};
		if(cpa['order']) {
			cpa['cnv'] = wcs.cnv("1", "0");
		}
		wcs_do(cpa);
	}
</script>
<span itemscope="" itemtype="http://schema.org/Organization">
	<link itemprop="url" href="https://www.rexremall.com"> <a
	itemprop="sameAs" href="https://www.facebook.com/officialrexre/"></a> <a
	itemprop="sameAs" href="https://pf.kakao.com/_xjFMxbT"></a> <a
	itemprop="sameAs" href="https://www.instagram.com/rexre.official"></a>
</span>

<div id="mbris_bounce_section"
	style="height: 0px; z-index: 100000; visibility: hidden; overflow: hidden;">
	<iframe scrolling="no" id="iframe_mbris_bounce_section"
		style="width: 100%; height: 0px; border: none; opacity: 0;"></iframe>
</div>
<div id="criteo-tags-div" style="display: none;"></div>
<iframe height="0" width="0" title="Criteo DIS iframe"
	style="display: none;"></iframe>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>