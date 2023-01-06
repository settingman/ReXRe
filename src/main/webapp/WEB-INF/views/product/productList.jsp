<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!--Add by seeun 카테고리 이동 -->
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="shortcut icon" type="image/x-icon"
	href="https://www.rexremall.com/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="https://www.rexremall.com/_data/wing_skbioland_200731_temp.css">
<link rel="stylesheet" type="text/css"
	href="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="https://www.rexremall.com/wm_engine_SW/_engine/common/loading.css??202212301607">
<script async="true" type="text/javascript"
	src="https://sslwidget.criteo.com/event?a=71354&amp;v=5.12.3&amp;p0=e%3Dce%26type%3D&amp;p1=e%3Dexd%26site_type%3Dd&amp;p2=e%3Dvl%26p%3D%255BB2EEB7362EF83DEFF5C7813A67E14F0A%252C076A0C97D09CF1A0EC3E19C7F2529F2B%252CFDE9264CF376FFFE2EE4DDF4A988880D%255D&amp;p3=e%3Ddis&amp;adce=1&amp;bundle=Ut6X918zUHd5NjRiTUNLV2FmYkMlMkI3ajdFOXppTnJPcjluRkdnWFFnMWN0VmhKNEVDaG15SUJmcWpPUmclMkZBMnB2TXdYZkVVVU5zQ0pra3NGTUVCYVNHd3ZxZlU0TWU0WmlSanNKTVAlMkZiTU5NYnNxYnIyaUpwaDhhOGJNQ0FaWTdseUxzc0lnMjcwNEppTkxoUVdQTFhZT1hlNUElM0QlM0Q&amp;tld=rexremall.com&amp;fu=https%253A%252F%252Fwww.rexremall.com%252Fshop%252Fbig_section.php%253Fcno1%253D1012&amp;pu=https%253A%252F%252Fwww.rexremall.com%252F&amp;dtycbr=61315"
	data-owner="criteo-tag"></script>
<script async="" defer=""
	src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js"></script>
<script async="" defer=""
	src="https://cdn.megadata.co.kr/dist/prod/enp_mbris.min.js"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script
	src="https://connect.facebook.net/signals/config/484907168870305?v=2.9.90&amp;r=stable"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript">
var hid_frame='hidden1672384053';
var mlv='10';
var alv='';
var root_url='https://www.rexremall.com';
var engine_url='https://www.rexremall.com/wm_engine_SW';
var this_url='https://www.rexremall.com/shop/big_section.php?cno1=1012';
var ssl_url='https://www.rexremall.com/main/exec.php';
var soldout_name='품절';
var ace_counter_gcode='';
var uip = "112.221.225.164";
var currency = "원";
var currency_type = "원";
var currency_decimal='0';
var r_currency_type = "";
var r_currency_decimal='0';
var exchangeRate = '';
var juso_api_use = 'Y';
var browser_type = 'pc';
var mobile_browser = '';
var ssl_type = 'Y';

var click_prd=new Array();
var click_prd_limit=2;
var click_prd_start=1;
var click_prd_finish=click_prd_limit+1;
</script>
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
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/common.js?202212301607"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/shop.review.js?202212301607"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/R2Na/R2Na.js"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/smartEditor/js/HuskyEZCreator.js"></script>
<script type="text/javascript">
var date_picker_default = {
	'monthNamesShort':['1','2','3','4','5','6','7','8','9','10','11','12'],
	'dayNamesMin':[_lang_pack.data_week_sun, _lang_pack.data_week_mon, _lang_pack.data_week_tue, _lang_pack.data_week_wed, _lang_pack.data_week_thu, _lang_pack.data_week_fri, _lang_pack.data_week_sat],
	'weekHeader':'Wk',
	'dateFormat':'yy-mm-dd',
	'autoSize':false,
	'changeYear':true,
	'changeMonth':true,
	'showButtonPanel':true,
	'currentText':_lang_pack.common_info_today+'2022-12-30',
	'closeText':_lang_pack.coommon_info_close
}

/* Timer */
const use_ts_mark_1 = 'Y';
const ts_mark_1 = '일';
const use_ts_mark_2 = 'Y';
const ts_mark_2 = ' :';
const use_ts_mark_3 = 'Y';
const ts_mark_3 = ' :';
const use_ts_mark_4 = 'Y';
const ts_mark_4 = '';

</script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/sec.js"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "s_36b65d5f3061";
if(typeof wcs != 'undefined') {
	wcs.inflow("rexremall.com");
}
</script>
<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', "484907168870305");
fbq('track', 'PageView');




</script>
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=484907168870305&ev=PageView&noscript=1" />
</noscript>
<!-- DO NOT MODIFY -->
<!-- End Facebook Pixel Code -->
<meta property="”og:type”" content="”website”">
<meta property="”og:title”" content="”ReXRe" mall”="">
<meta property="”og:description”" content="”리바이리몰에" 오신="" 것을=""
	환영합니다”="">
<meta property="”og:url”content=https://rexremall.com">
<link rel="canonical" href="https://rexremall.com/">

<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('4206431215218999756').pageView();
</script>


</head>





<body>




	<input type='hidden' name='category' class='category'
		value='${productCategory}'>
	<iframe name="hidden1672384053" src="about:blank" width="0" height="0"
		scrolling="no" frameborder="0" style="display: none"></iframe>

	<script type="text/javascript"
		src="https://www.rexremall.com/wm_engine_SW/_engine/common/shop.js"></script>
	<script type="text/javascript" defer="defer">$(document).ready(function(){setInterval("wingQuickSlide(228, 0, 0, 5)", 10);});</script>
	<style type="text/css">
<!--
#skin_shop_big_section_big_div {
	width: 100%;
}
-->
</style>
	<div id="skin_shop_big_section_big_div">

		<script
			src="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.min.js"></script>
		<link rel="stylesheet" type="text/css"
			href="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.css">
		<link rel="stylesheet" type="text/css"
			href="https://www.rexremall.com/_skin/skbioland_200731/img/../animate.css">
		<i id="crema-login-username" style="display: none;"></i> <i
			id="crema-login-name" style="display: none;"></i>
		<div id="wrapper">

			<%@ include file="/WEB-INF/views/include/header.jsp"%>


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
									<strong>${total}</strong>개의 상품
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

							<ul class="prd_basic col3">
								<c:forEach items="${productList}" var="productList">
									<li><div class="box ">
											<div class="img">
												<div class="prdimg img1226">
													<a
														href='/product/productDetail?productId=<c:out value="${productList.productId}"/>'>
														<img src="<c:out value='${productList.imagePath}'/>"
														width="380" height="466">
													</a>
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
												<p>
													<a href=""> <c:out value="${productList.productName}" />
													</a>
												</p>

												<div class="summary">건강한 피부를 위해 리바이리가 제안하는 비건 스킨케어 5종</div>

												<div class="price">
													<div class="price_boxY">

														<p class="consumer dn">
															<c:out value="${productList.productPrice}" />
														</p>

														<p class="sell">
															<strong><c:out
																	value="${productList.productPrice}" /></strong>원
														</p>

													</div>
													<div class="price_box">



														<p class="consumer dn"></p>
														<p class="sell">
															<strong><c:out
																	value="${productList.productPrice}" /></strong>원
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


								</c:forEach>
							</ul>
							<!-- 상품 jsplist -->

							<!-- Pagination -->


							<ul class="paging">
								<c:if test="${pageMaker.prev}">
									<li class="paginate_button previous"><a
										href="${pageMaker.firstPage}"> << </a> <a
										href="${pageMaker.startPage - 1}">이전</a></li>

								</c:if>

								<!-- number -->
								<c:forEach var="num" begin="${pageMaker.startPage}"
									end="${pageMaker.endPage }">

									<li class="paginate_button ${pageMaker.cri.pageNum == num ? "action" : "" }">
										<a style="font-weight: bold; margin: 3px;" class="pageNutton"
										href="/product/productList?pageNum=${num}&amount=9"
										id="buttonurl${num}" data-num="${num}"}>${num}</a>
									</li>


									<input type='hidden' name='num' id='num'
										value='${pageMaker.startPage}'>


								</c:forEach>

								<c:if test="${pageMaker.next}">
									<li class="pageinate_button next"><a
										href="${pageMaker.endPage + 1}"></a></li>
								</c:if>
								<!-- <li></li>
								<li><strong>1</strong></li>
								<li><a href="?page=2&amp;cno1=1009">2</a></li>
								<li></li> -->
							</ul>

							<!-- 311p -->
							<form id='actionFrom' action="/product/productList" method="get">
								<input type='hidden' name='pageNum'
									value='${pageNum.cri.pageNum}'> <input type='hidden'
									name='amount' value='${pageNum.cri.amount }'>
							</form>

							<!-- End Pagination -->
						</div>




						<script type="text/javascript">
	//1. paging button event, 페이지 번호를 클릭하면 처리하는 부분 추가
	
/* 	$(document).ready(function() {
		var actionForm = $("#actionForm");
		alert("here" + actionForm);
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
	}); */
	


					
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
						<script type="text/javascript">
						
						
						
						
						
</script>





						<!-- Enliple Insite breakAway Popup end -->
						<!-- Enliple Tracker Start -->
						<script type="text/javascript">
						
						
				
						
    (function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
    enp('create', 'common', 'rexreskbio', { device: 'W' });    
    enp('send', 'common', 'rexreskbio');
</script>

						<script type="text/javascript">

						
						


						
						
						
$(document).ready(function(){
	
	
	
	var category = $('.category').val();
	
	if(category!=""){
	
		
		$("[id^='buttonurl']" ).each( function() {
	          var num = $( this ).attr('data-num');
	          $(this).attr("href", "productCategory?productCategory="+category+"&pageNum="+num+"&amount=9")
	          
	         
	        } );
		
		
		
		
		
		
		
	}
	
	
	
	
	


});


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
			itemprop="sameAs" href="https://www.facebook.com/officialrexre/"></a>
			<a itemprop="sameAs" href="https://pf.kakao.com/_xjFMxbT"></a> <a
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
</body>
</html>