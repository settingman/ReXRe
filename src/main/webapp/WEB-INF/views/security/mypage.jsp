<!-- /*********************************
 * @function : 로그인
 * @author : 조일우
 * @Date : Dec 31. 2022.
 * 로그인 기능 구현
 * 로그인 실패 구현
 * 아이디 비밀번호 저장 구현
 *********************************/ -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>리바이리 (ReXRe)</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/security.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/security.css">
 --%>
<%--  <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script> --%>
<script src="${pageContext.request.contextPath }/resources/js/security.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/common.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/member.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="https://www.rexremall.com/favicon.ico">
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_data/wing_skbioland_200731_temp.css">
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/wm_engine_SW/_engine/common/loading.css??202212301453">
<script async="" defer="" src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script async="" defer="" src="https://cdn.megadata.co.kr/dist/prod/enp_mbris.min.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery.serializeObject.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/_skin/skbioland_200731/script.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/lang/lang_kor.js?00000002"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/shop.review.js?202212301453"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/R2Na/R2Na.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/smartEditor/js/HuskyEZCreator.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/sec.js"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
</head>
<!-- DO NOT MODIFY -->
<body>
	<%--  	<c:if test="${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username != null}">
		<c:redirect url="/"></c:redirect>
	</c:if>  --%>
	<script src="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.css">
	<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../animate.css">
	<div id="wrapper">
		<%@include file="../include/header.jsp"%>
		<!-- 중앙 -->
		<div id="cnt">
			<div class="cntbody">
				<h2 class="subtitle">마이페이지</h2>
				<div id="mypage_menu">
					<ul>
						<li>
							<dl>
								<dt>주문관리</dt>
								<dd>
									<a href="/mypage/order_list.php">주문/배송조회</a>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>나의 혜택</dt>
								<dd>
									<a href="/mypage/coupon_down_list.php">쿠폰북</a>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>상품관리</dt>
								<dd>
									<a href="/shop/cart.php">장바구니</a>
								</dd>
								<dd>
									<a href="/shop/click_prd.php">최근 본 상품</a>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>나의 활동</dt>
								<dd>
									<a href="/mypage/review_list.php">상품후기</a>
								</dd>
								<dd>
									<a href="/mypage/qna_list.php">상품 Q/A</a>
								</dd>
								<dd>
									<a href="/mypage/counsel_list.php">1:1 문의</a>
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>나의 정보</dt>
								<dd>
									<a href="/member/edit_step1.php">개인정보 수정</a>
								</dd>
								<dd>
									<a href="/mypage/withdraw_step1.php">회원 탈퇴</a>
								</dd>
							</dl>
						</li>
					</ul>
				</div>
				<div id="mypage">
					<div class="my_info">
						<div class="grade">
							<p>
								<span><sec:authentication property="principal.member.userName"/></span> 님
							</p>
						</div>
						<ul class="shopping">
							<li><a href="/mypage/order_list.php">
									<p class="title">주문조회</p>
									<p class="count">
										<strong>0</strong> 건
									</p>
							</a></li>
							<li><a href="/mypage/coupon_down_list.php">
									<p class="title">쿠폰</p>
									<p class="count">
										<strong>2</strong> 개
									</p>
							</a></li>
						</ul>
						<ul class="btn">
							<li class="counsel"><a href="/mypage/counsel_list.php">1:1 문의</a></li>
						</ul>
					</div>
					<h3 class="title first">
						최근 주문/배송 조회 <a href="/mypage/order_list.php" class="more">더보기</a>
					</h3>
					<p class="empty">주문내역이 존재하지 않습니다.</p>
					<div class="last">
						<h3 class="title">최근 본 상품</h3>
						<div class="arrow"></div>
						<div class="prd_basic slide recent slick-initialized slick-slider">
							<div aria-live="polite" class="slick-list draggable">
								<div class="slick-track" role="listbox" style="opacity: 1; width: 5000px; transform: translate3d(-20px, 0px, 0px);">
									<div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide00">
										<div class="box">
											<div class="img">
												<a href="https://www.rexremall.com/shop/detail.php?pno=B2EEB7362EF83DEFF5C7813A67E14F0A" tabindex="0"><img
													src="https://skbiolandmall.wisacdn.com/_data/product/202208/22/d52eed1ad2c623bd89d0363b846c1365.jpg" width="380" height="466"></a>
											</div>
											<div class="info">
												<p class="name">
													<a href="https://www.rexremall.com/shop/detail.php?pno=B2EEB7362EF83DEFF5C7813A67E14F0A" tabindex="0">리바이리 콤부차 배리옴 스킨케...</a>
												</p>
												<div class="price">
													<p class="sell">
														<strong>153,000</strong>원
													</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //중앙 -->
	<!-- 하단 -->
	<%@include file="../include/footer.jsp"%>
	<!-- //하단 -->
	</div>
	</div>
	<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/auto_scroll.js" defer='defer'></script>
</body>
</html>