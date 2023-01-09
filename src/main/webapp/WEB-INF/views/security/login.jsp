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
<link rel="shortcut icon" type="image/x-icon" href="https://www.rexremall.com/favicon.ico">
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_data/wing_skbioland_200731_temp.css">
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/wm_engine_SW/_engine/common/loading.css??202212301203">
<script type="text/javascript" src='https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-1.11.3.min.js'></script>
<script type="text/javascript" src='https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui-1.11.3.min.js'></script>
<script type="text/javascript" src='https://www.rexremall.com/wm_engine_SW/_engine/common/jquery.serializeObject.js'></script>
<script type="text/javascript" src="https://www.rexremall.com/_skin/skbioland_200731/script.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/lang/lang_kor.js?00000002"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/shop.review.js?202212301203"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/R2Na/R2Na.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/smartEditor/js/HuskyEZCreator.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/sec.js"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/security.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/common.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/member.js"></script>
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
				<h2 class="subtitle">로그인</h2>
				<div id="login" class="box_member">
					<div class="form_member form_left">
						<c:if test="${error eq 'true'}">
							<p class="fail">
								로그인에 실패했습니다.<br>아이디와 비밀번호를 다시 확인하세요.
							</p>
						</c:if>
						<form method="post" action="/login" style="margin: 0px">
							<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
							<fieldset class="login_field">
								<legend>로그인</legend>
								<div class="fld">
									<label for="login_id">아이디</label>
									<input type="text" name="username" value="" maxlength="50" id="login_id" class="form_input member block" placeholder="아이디">
								</div>
								<div class="fld">
									<label for="login_pwd">비밀번호</label>
									<input type="password" name="password" value="" id="login_pwd" class="form_input member block" placeholder="비밀번호">
								</div>
								<div class="savessl">
									<input type="checkbox" name="id_save" value="Y" id="member_id_save">
									<label for="member_id_save" style="font-size: 13px;">아이디저장</label>
									<input type="checkbox" name="pw_save" value="Y" id="member_pwd_save">
									<label style="font-size: 13px;" for="member_pwd_save">비밀번호저장</label>
									<input type="checkbox" name="remember-me" id="remember-me" style="margin-left:20px;">
									<label style="font-size: 13px;" for="remember-me">로그인 유지</label>
								</div>
								<span class="box_btn block h55 fs15 kor"><input type="submit" value="로그인"></span>
							</fieldset>
						</form>
						<p class="findidpwd">
							<a href="./find">아이디/비밀번호 찾기</a>
						</p>
					</div>
					<div class="form_nomember form_right">
						<form method="post" action="https://www.rexremall.com/mypage/order_detail.php" onSubmit="return checkGuestOrderFrm(this)" style="margin: 0px">
							<input type='hidden' name='exec' value='orderDetail' />
							<fieldset>
								<legend>비회원 주문조회</legend>
								<div class="fld">
									<label for="login_order_no">주문번호</label>
									<input type="text" name="ono" id="login_order_no" class="form_input member block" placeholder="주문번호">
								</div>
								<div class="fld">
									<label for="login_phone">전화번호</label>
									<input type="text" name="phone" id="login_phone" class="form_input member block" placeholder="전화번호">
								</div>
								<div class="msg">
									결제 완료 후 안내해드린 주문번호와 주문 결제 시에<br>작성한 비밀번호를 입력해주세요
								</div>
								<div class="btn_col col2">
									<span class="box_btn block h55 fs15 kor"><input type="submit" value="주문조회"></span>
								</div>
							</fieldset>
						</form>
					</div>
					<div class="sns_join">
						<dl class="membersjoin" style="margin: 0 auto; float: sdf;">
							<dt>회원가입</dt>
							<dd>
								아직 회원이 아니신가요?<br>회원가입 하고 회원 등급별 많은 혜택을 누리세요
							</dd>
							<dd class="box_btn block h55 fs15 kor">
								<a href="/security/join">회원가입</a>
							</dd>
						</dl>
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