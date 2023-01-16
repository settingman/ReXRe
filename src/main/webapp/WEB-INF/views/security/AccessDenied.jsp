<!-- /*********************************
 * @function : 접근 불가 페이지
 * @author : ILWOO JO
 * @Date : Jan 1. 2023.
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
				<h2 class="subtitle">접근 불가</h2>
				<div id="join_finish">

					<div class="box">
						<p class="finish">접근이 불가한 주소입니다.</p>
						<p>
							권한이 있는 계정으로 접속 가능합니다
						</p>
					</div>


					<div class="btn tac">
						<span class="box_btn w167 h55 w150 fs15 white kor"><a href="/">메인으로 이동</a></span>
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