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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
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
<script type="text/javascript" defer="defer">
$(document).ready(function(){
	$('#pwd1').on('keyup',function(){
        var pwd1 = $("#pwd1").val();
		if ( pwd1.length < 8 ) {
                $("#pwd1").css("border","solid 1px red")
                $("#join_pwpw").css("color","red")
                $("#join_pwpw").text("비밀번호는 8자 이상이어야 합니다");
                $("#pw_check").val("0");
        } else if (checkSpace(pwd1)) {
        	$("#pwd1").css("border","solid 1px red")
            $("#join_pwpw").css("color","red")
                $("#join_pwpw").text("사용할수 없는 특수 문자를 포함합니다");
                $("#pw_check").val("0");
        }else{
        	$("#pwd1").css("border","solid 1px green");
            $("#join_pwpw").css("color","green")
            $("#join_pwpw").text("적합한 비밀번호입니다");
            $("#pw_check").val("1");
        }
	});
	$('#pwd2').on('keyup',function(){
        var pwd1 = $("#pwd1").val();
        var pwd2 = $("#pwd2").val();
		if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#pwd2").css("border","solid 1px green");
                $("#join_pwpw2").css("color","green")
                $("#join_pwpw2").text("비밀번호 일치");
                $("#join_pwpw2").text("비밀번호 일치");
                $("#pw2_check").val("1");
            } else {
                $("#pwd2").css("border","solid 1px red")
                $("#join_pwpw2").css("color","red")
                $("#join_pwpw2").text("비밀번호 일치하지 않습니다");
                $("#pw2_check").val("0");
            }
        }
	});
	function chkPwdFrm1(){
		var pwcheck = $('#pw_check').val();
		var pwcheck2 = $('#pw_checked').val();
		if (pwcheck2 == "0"){
			alert("올바를 형식의 비밀번호를 입력하세요");
			return false;
		}
		else if (pwcheck == "0"){
			alert("비밀헌호가 일치하지 않습니다");
			return false;
		}
	}
	
});
</script>
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
				<h2 class="subtitle">비밀번호 변경</h2>
				<div id="modify_pwd" class="box_member">
					<form name="pwdFrm" method="post" action="./changePW" target="hidden1673104375" onsubmit="return chkPwdFrm1()"
						style="margin: 0px;">
							<input type="hidden" name="pw_checked" value="0" id="pw_check">
							<input type="hidden" name="pw_check" value="0" id-="pw2_check">
							<input type="hidden" name="id" value="${id }" id-="idid">

						<fieldset>
							<legend>비밀번호 변경</legend>

							<p class="modify_id">${id }</p>

							<div class="fld">
								<label for="pwd1">변경할 비밀번호</label>
								<input type="password" name="pwd[]" id="pwd1" class="form_input member block" placeholder="변경할 비밀번호">
								<h4 id="join_pwpw" ></h4>
							</div>
							<div class="fld">
								<label for="pwd2">변경할 비밀번호 확인</label>
								<input type="password" name="pwd[]" id="pwd2" class="form_input member block" placeholder="변경할 비밀번호 확인">
								<h4 id="join_pwpw2" ></h4>
							</div>
							<span class="box_btn block huge strong"><input type="submit" value="변경하기"></span>

						</fieldset>
					</form>
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