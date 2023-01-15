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
<meta name="_csrf" content="${_csrf.token}" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
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
	var code;
	var id;
	var name;
	var email;
	var pwch;
		$(document).ready(function() {
			
			var csrfToken = $("meta[name='_csrf']").attr("content");
			$.ajaxPrefilter(function(options, originalOptions, jqXHR) {
				if (options['type'].toLowerCase() === "post") {
					jqXHR.setRequestHeader('X-CSRF-TOKEN', csrfToken);
				}
			});
			$('#find_id_submit').on("click", function() {
				 name = $('#find_id_name').val(); //id값이 "id"인 입력란의 값을 저장
				 email = $("#find_id_email").val();
				 var expression = RegExp(/[^a-zA-Z0-9]/);	
				 var exptext = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
				if (checkSpace(name) == true) {
				 alert("이름에 공백이 없어야 합니다");
				 } else if (checkSpecial(name) == true) {
				 alert("특수문자를 사용 할수 없습니다");
				 }  else if (exptext.test(email) == false) {
				 //이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우         
				 alert("이메일형식이 올바르지 않습니다.");
				 $("#find_id_email").focus();
				 } else {
				$.ajax({
					 url : "./findID.do", //Controller에서 요청 받을 주소
					 type : "POST", //POST 방식으로 전달
					 data : {
					 id : name,
					 email : email
					 },
					 success : function(data) { 
					 	if (data != 0) {  
					 		$('#fixed_email').val(email);
					 		$('#exampleModal').modal("show");
						 	id = data;
				 		} else { 
						 alert("아이디나 이메일이 잘못 입력되었습니다");
						 $('#find_id_id').focus();
						 }
					 },
				 	error : function(request,error) {
						 alert("에러: 잠시후 다시 시도해주세요");
						 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					 }
				 });
					
				 }
			});
			$('#find_pw_submit').on("click", function() {
				 id = $('#find_pwd_id').val(); //id값이 "id"인 입력란의 값을 저장
				 var name = $("#find_pwd_name").val();
				 email = $("#find_pwd_email").val();
				 var expression = RegExp(/[^a-zA-Z0-9]/);	
				 var exptext = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
				 if (id.length < 6) {
						alert("아이디는 6자 이상이여야 합니다");
					} else if (checkSpace(id) == true) {
						alert("아이디에 공백이 없어야 합니다");
					} else if (checkSpecial(id) == true) {
						alert("특수문자를 사용 할수 없습니다");
					} else if (expression.test(id)) {
						alert("아이디는 영어로만 생성가능합니다");
					}
				 else if (checkSpace(name) == true) {
				 alert("이름에 공백이 없어야 합니다");
				 } else if (checkSpecial(name) == true) {
				 alert("특수문자를 사용 할수 없습니다");
				 }  else if (exptext.test(email) == false) {
				 //이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우         
				 alert("이메일형식이 올바르지 않습니다.");
				 $("#find_pwd_email").focus();
				 } else {
				 
				$.ajax({
					 url : "./findPW.do", //Controller에서 요청 받을 주소
					 type : "POST", //POST 방식으로 전달
					 data : {
						 id : id,
					 name : name,
					 email : email
					 },
					 success : function(data) { 
					 	if (data != 0) {  
					 		$('#fixed_email').val(email);
					 		$('#exampleModal').modal("show");
					 		pwch = "1";
						 	id = data;
				 		} else { 
							 alert("아이디, 이름 혹은 이메일이 잘못 입력되었습니다");
						 	$('#find_pwd_id').focus();
						 }
					 },
				 	error : function(request,error) {
						 alert("에러: 잠시후 다시 시도해주세요");
						 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					 }
				 });
					
				 }
				
			});
			$('#veri_send').on('click',function(){
				$.ajax({
					type : 'get',
					 data : {
						 email : email
					},
					url : '/email.do', 
					success : function (data) {
						console.log("data : " +  data);
						code = data;
						alert('인증번호가 전송되었습니다.');
					},
					error : function() {
						 alert("에러: 잠시후 다시 시도해주세요");
						 }
					 });
				});
			
			$('#veri_btn').on('click',function () {
				var inputCode = $('#veri_num').val();
				console.log(code);
				if(inputCode == code){
					alert('인증번호가 일치합니다');
					$('#verifyed').val("1");
					if(pwch != "1"){
						$(".modal-body").append('<h4>아이디 : '+id+'</h4>');
						
					}
				}else{
					alert("인증번호가 일치하지 않습니다");
				}
			});
			$('#btn-confirm').on('click', function(){
				var verifyed = $('#verifyed').val(); 
				console.log(id);
				if(pwch =="1"){
					location.href = '/security/pwChange?id=' + id; 
				}else if(verifyed == "1"){
					location.href = '/security/login';
				}else{
					alert("인증 되지 않았습니다");
				}
			});
		});
	</script>
	<script src="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.css">
	<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../animate.css">
	<div id="wrapper">
		<%@include file="../include/header.jsp"%>
		<!-- 중앙 -->
		<div id="cnt">
			<div class="cntbody">
				<h2 class="subtitle">아이디/비밀번호 찾기</h2>
				<div id="find" class="box_member">
					<div class="form_left">
						<fieldset>
							<legend>아이디 찾기</legend>
							<div class="fld">
								<label for="find_id_name">이름</label>
								<input type="text" name="name" id="find_id_name" class="form_input member block" placeholder="이름">
							</div>
							<div class="fld find_id_item_2" style="display: block;">
								<label for="find_id_email">이메일</label>
								<input type="text" name="email" id="find_id_email" class="form_input member block" placeholder="이메일">
							</div>
							<span class="box_btn block h55 white fs15 kor"><button id="find_id_submit">확인</button></span>
						</fieldset>
					</div>
					<div class="form_right">
							<input type="hidden" name="exec_file" value="member/new_find_id.exe.php">
							<input type="hidden" name="ftype" value="2">

							<fieldset>
								<legend>비밀번호 찾기</legend>
								<div class="fld">
									<label for="find_pwd_id">아이디</label>
									<input type="text" name="member_id" id="find_pwd_id" class="form_input member block" placeholder="아이디">
								</div>
								<div class="fld">
									<label for="find_pwd_name">이름</label>
									<input type="text" name="name" id="find_pwd_name" class="form_input member block" placeholder="이름">
								</div>
								<div class="fld find_pw_item_2" style="display: block;">
									<label for="find_pwd_email">이메일</label>
									<input type="text" name="email" id="find_pwd_email" class="form_input member block" placeholder="이메일">
								</div>
								<span class="box_btn block h55 white fs15 kor"><button id="find_pw_submit">확인</button></span>
							</fieldset>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">메일 인증</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
						<input class="form-control me-2" id="fixed_email" disabled aria-label="Search" style="margin-bottom:10px">
						<button class="btn btn-outline-success" id="veri_send"  style="margin-bottom:10px">인증메일전송</button>
						<input class="form-control me-2" type="search" aria-label="Search" placeholder="인증번호확인" id="veri_num" value="" style="margin-bottom:10px">
						<input class="form-control me-2" type="hidden" aria-label="Search" placeholder="인증번호확인" id="verifyed" value="">
						<input type="hidden"  id="pw_change" value="0">
						<input type="hidden" id="code" value="-1">
						<button class="btn btn-outline-success" id="veri_btn"  style="margin-bottom:10px">인증번호확인</button>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary" id="btn-confirm">확인</button>
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