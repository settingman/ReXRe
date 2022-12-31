/*********************************
 * @function : 로그인
 * @author : 조일우
 * @Date : Dec 31. 2022.
 * 로그인 기능 구현
 * 로그인 실패 구현
 *********************************/

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
<script type="text/javascript">
	var hid_frame = 'hidden1672369396';
	var mlv = '10';
	var alv = '';
	var root_url = 'https://www.rexremall.com';
	var engine_url = 'https://www.rexremall.com/wm_engine_SW';
	var this_url = 'https://www.rexremall.com/member/login.php';
	var ssl_url = 'https://www.rexremall.com/main/exec.php';
	var soldout_name = '품절';
	var ace_counter_gcode = '';
	var uip = "112.221.225.164";
	var currency = "원";
	var currency_type = "원";
	var currency_decimal = '0';
	var r_currency_type = "";
	var r_currency_decimal = '0';
	var exchangeRate = '';
	var juso_api_use = 'Y';
	var browser_type = 'pc';
	var mobile_browser = '';
	var ssl_type = 'Y';

	var click_prd = new Array();
	var click_prd_limit = 2;
	var click_prd_start = 1;
	var click_prd_finish = click_prd_limit + 1;
</script>
<script type="text/javascript" src='https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-1.11.3.min.js'></script>
<script type="text/javascript" src='https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui-1.11.3.min.js'></script>
<script type="text/javascript" src='https://www.rexremall.com/wm_engine_SW/_engine/common/jquery.serializeObject.js'></script>
<script type="text/javascript" src="https://www.rexremall.com/_skin/skbioland_200731/script.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/lang/lang_kor.js?00000002"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/common.js?202212301203"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/shop.review.js?202212301203"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/R2Na/R2Na.js"></script>
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/smartEditor/js/HuskyEZCreator.js"></script>
<script type="text/javascript">
	var date_picker_default = {
		'monthNamesShort' : [ '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'10', '11', '12' ],
		'dayNamesMin' : [ _lang_pack.data_week_sun, _lang_pack.data_week_mon,
				_lang_pack.data_week_tue, _lang_pack.data_week_wed,
				_lang_pack.data_week_thu, _lang_pack.data_week_fri,
				_lang_pack.data_week_sat ],
		'weekHeader' : 'Wk',
		'dateFormat' : 'yy-mm-dd',
		'autoSize' : false,
		'changeYear' : true,
		'changeMonth' : true,
		'showButtonPanel' : true,
		'currentText' : _lang_pack.common_info_today + '2022-12-30',
		'closeText' : _lang_pack.coommon_info_close
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
<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/sec.js"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<!-- DO NOT MODIFY -->
<body>
	<script type="text/javascript" defer='defer'>
		$(document).ready(function() {
			setInterval("wingQuickSlide(228, 0, 0, 5)", 10);
		});
	</script>
	<script src="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.css">
	<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../animate.css">
	<div id="wrapper">
		<%@include file="include/header.jsp"%>
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
						<form method="post" action="login"  style="margin: 0px">
							<!-- <input type="hidden" name="exec_file" value="member/login.exe.php"> <input type="hidden" name="rURL" value="https://www.rexremall.com"> <input type="hidden"
								name="urlfix" value="Y"> -->
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
									<input type="checkbox" name="setOpenSSL" id="member_ssl" checked onclick="return false;">
									<label style="font-size: 13px;" for="member_ssl">보안접속</label>
								</div>
								<span class="box_btn block h55 fs15 kor"><input type="submit" value="로그인"></span>
							</fieldset>
						</form>
						<p class="findidpwd">
							<a href="/member/find_step1.php">아이디/비밀번호 찾기</a>
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
								<div class="savessl">
									<input type="checkbox" name="setOpenSSL" id="nonmember_ssl" checked onclick="return false;">
									<label for="nonmember_ssl">보안접속</label>
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
								<a href="/member/join_step1.php">회원가입</a>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
		<!-- //중앙 -->
		<!-- 하단 -->
		<%@include file="include/footer.jsp"%>
		<!-- //하단 -->
	</div>
	<script type="text/javascript">
		// 인기검색어 폰트사이즈 제어
		$(document).ready(function() {
			$('.header').each(function(idx) {
				if ($(this).find('.hot_keyword .list li').length > 8) {
					$(this).find('.hot_keyword .list').addClass('small');
				}
			})
		});
	</script>
	</div>
	<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/auto_scroll.js" defer='defer'></script>
	<script type="text/javascript">
		if (typeof wcs != 'undefined') {
			if (typeof cpa == 'undefined')
				var cpa = {};
			if (cpa['order']) {
				cpa['cnv'] = wcs.cnv("1", "0");
			}
			wcs_do(cpa);
		}
	</script>
</body>
</html>