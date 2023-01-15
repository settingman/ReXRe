<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<title>리바이리 (ReXRe)</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="_csrf" content="${_csrf.token}" />

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
<body class="vsc-initialized">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	<%--  	<c:if test="${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username != null}">
		<c:redirect url="/"></c:redirect>
	</c:if>  --%>
	<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/emailAutoComplete.js"></script>
	<script type="text/javascript" defer="defer">
		var str = '<sec:authentication property="principal.member.member_email" />';
		var birthday = '<sec:authentication property="principal.member.member_birthday" />';
		var sex = '<sec:authentication property="principal.member.member_sex" />';

		var emails = str.split('&#64;');
		var emails2 = emails[1].split('&#46;');
		var birthday1 = birthday.split('&#45;');
		var birthday2 = birthday1[2].split('&#32;');
		$(document).ready(function() {
			$('#email2').val(emails2[0] + '.' + emails2[1]);
			$('#select1').val(birthday1[0]).prop("selected", true);
			$('#select2').val(birthday1[1]).prop("selected", true);
			$('#select3').val(birthday2[0]).prop("selected", true);
			if (sex == "1") {
				$("#sex_male").prop("checked", true)

			} else {
				$("#sex_female").prop("checked", true)

			}
		});
		var csrfToken = $("meta[name='_csrf']").attr("content");
		$.ajaxPrefilter(function(options, originalOptions, jqXHR) {
			if (options['type'].toLowerCase() === "post") {
				jqXHR.setRequestHeader('X-CSRF-TOKEN', csrfToken);
			}
		});
		function checkMID() {
			var id = $('#join_id').val(); //id값이 "id"인 입력란의 값을 저장
			var expression = RegExp(/[^a-zA-Z0-9]/);
			if (id.length < 6) {
				alert("아이디는 6자 이상이여야 합니다");
			} else if (checkSpace(id) == true) {
				alert("아이디에 공백이 없어야 합니다");
			} else if (checkSpecial(id) == true) {
				alert("특수문자를 사용 할수 없습니다");
			} else if (expression.test(id)) {
				alert("아이디는 영어와 숫자로만 생성가능합니다");
			} else {
				$.ajax({
					url : "./IDCheck.do", //Controller에서 요청 받을 주소
					type : "POST", //POST 방식으로 전달
					data : {
						id : id
					},
					dataType : "json",
					success : function(data) {
						if (data == '0') { //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
							alert("사용가능한 아이디입니다");
							$('#id_check').val('1');
						} else { // cnt가 1일 경우 -> 이미 존재하는 아이디
							alert("사용 중인 아이디 입니다, 아이디를 다시 입력해주세요");
							$('#join_id').val('');
							$('#join_id').focus();
						}
					},
					error : function() {
						alert("에러: 잠시후 다시 시도해주세요");
					}
				});
			}

		};
		function validate() {
			var idcheck = $('#id_check').val();
			var pwcheck = $('#pw_check').val();
			var email = $("#email2").val();
			var exptext = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			if (idcheck == "0") {
				alert("아이디 중복확인을 실시해주세요");
				return false;
			} else if (pwcheck == "0") {
				alert("비밀번호를 올바르게 입력해주세요");
				return false;
			} else if (exptext.test(email) == false) {
				//이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우         
				alert("이 메일형식이 올바르지 않습니다.");
				$("#email2").focus();
				return false;
			}
		}
		function validate2() {
			var idcheck = $('#id_check').val();
			var pwcheck = $('#pw_check').val();
			var email = $("#email2").val();
			var exptext = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			if (pwcheck == "0") {
				alert("비밀번호를 올바르게 입력해주세요");
				return false;
			} else if (exptext.test(email) == false) {
				//이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우         
				alert("이 메일형식이 올바르지 않습니다.");
				$("#email2").focus();
				return false;
			} else {
				alert("변경되었습니다");
			}
		}
		$(document)
				.ready(
						function() {
							$('#join_pw')
									.on(
											'keyup',
											function() {
												var pwd1 = $("#join_pw").val();
												if (pwd1.length < 8) {
													$("#join_pw").css("border",
															"solid 1px red")
													$("#join_pwpw").css(
															"color", "red")
													$("#join_pwpw")
															.text(
																	"비밀번호는 8자 이상이어야 합니다");
													$("#pw_check").val("0");
												} else if (checkSpace(pwd1)) {
													$("#join_pw").css("border",
															"solid 1px red")
													$("#join_pwpw").css(
															"color", "red")
													$("#join_pwpw")
															.text(
																	"사용할수 없는 특수 문자를 포함합니다");
													$("#pw_check").val("0");
												} else {
													$("#join_pw").css("border",
															"solid 1px green");
													$("#join_pwpw").css(
															"color", "green")
													$("#join_pwpw").text(
															"적합한 비밀번호입니다");
													$("#pw_check").val("1");
												}
											});
							$('#join_pw2').on(
									'keyup',
									function() {
										var pwd1 = $("#join_pw").val();
										var pwd2 = $("#join_pw2").val();
										if (pwd1 != "" || pwd2 != "") {
											if (pwd1 == pwd2) {
												$("#join_pw2").css("border",
														"solid 1px green");
												$("#join_pwpw2").css("color",
														"green")
												$("#join_pwpw2")
														.text("비밀번호 일치");
												$("#join_pwpw2")
														.text("비밀번호 일치");
												$("#pw2_check").val("1");
											} else {
												$("#join_pw2").css("border",
														"solid 1px red")
												$("#join_pwpw2").css("color",
														"red")
												$("#join_pwpw2").text(
														"비밀번호 일치하지 않습니다");
												$("#pw2_check").val("0");
											}
										}
									});
							$('#join_allergy')
									.on(
											'keyup',
											function() {
												var allergy = $("#join_allergy")
														.val();
												$
														.ajax({
															url : "./alsear.do",
															type : "GET",
															data : {
																allergy : allergy
															},
															dataType : "json",
															success : function(
																	data) {
																if (data.length == 0) {
																	$(
																			'#select-pill')
																			.html(
																					"");
																	$(
																			'#select-pill')
																			.append(
																					'<a herf="#" id="addal">찾으시는 성분이 없나요? 임의 성분 추가</a>');
																} else {
																	$(
																			'#select-pill')
																			.html(
																					"");
																	for (var i = 0; i < data.length; i++) {
																		$(
																				'#select-pill')
																				.append(
																						'<span class="badge rounded-pill text-bg-primary" id="allergy-pill">'
																								+ data[i].allergy_name
																								+ '</span>')
																	}
																}
															},
															error : function() {
																alert("에러: 잠시후 다시 시도해주세요");
															}
														});
											});
							$(document)
									.on(
											"click",
											"#allergy-pill",
											function() {
												var csrfToken = $("meta[name='_csrf']").attr("content");
												$.ajaxPrefilter(function(options, originalOptions, jqXHR) {
													if (options['type'].toLowerCase() === "post") {
														jqXHR.setRequestHeader('X-CSRF-TOKEN', csrfToken);
													}
												});
												var tmp = $(this).text();
												var find = $(
														'input[value=' + tmp
																+ ']').val();
												if (find == null) {
													$
															.ajax({
																url : "./addMemAl.do", 
																type : "POST",
																data : {
																	allergy : tmp
																},
																success : function(data
																		) { 
																	$(
																			'#selected-pill')
																			.append(
																					'<span class="badge rounded-pill text-bg-secondary" id="allergy-pill2">'
																							+ tmp
																							+ '</span>');
																	$(
																			'#selected-pill')
																			.append(
																					'<input type="hidden" name="allergies" value="'+tmp+'" >');
																},
																error : 
																	function(request,status,error){ 
															        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
															       } 
															});

												} else {
													alert("이미 존재하는 항목입니다");
												}
											});
							$(document).on("click", "#allergy-pill2",
									
									function() {
								var tmp = $(this).text();
								var csrfToken = $("meta[name='_csrf']").attr("content");
								$.ajaxPrefilter(function(options, originalOptions, jqXHR) {
									if (options['type'].toLowerCase() === "post") {
										jqXHR.setRequestHeader('X-CSRF-TOKEN', csrfToken);
									}
								});
								$.ajax({
									url : "./deleteMemAl.do", //Controller에서 요청 받을 주소
									type : "POST", //POST 방식으로 전달
									data : {
										allergy : tmp
									},
									context: this , 
									success : function(data
											) { //컨트롤러에서 넘어온 cnt값을 받는다 
										$(this).next().remove();
										$(this).remove();
									},
									error : function(request,status,error){ 
								        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
								       } 
								});

									});
							$(document)
									.on(
											"click",
											"#addal",
											function() {
												var allergy = $('#join_allergy')
														.val();
												var result = confirm(allergy
														+ '를 추가하시겠습니까?');
												if (result) {
													$
															.ajax({
																url : "./addal.do",
																type : "GET",
																data : {
																	allergy : allergy
																},
																success : function() {
																	alert("추가되었습니다");
																	$(
																			'#selected-pill')
																			.append(
																					'<span class="badge rounded-pill text-bg-secondary" id="allergy-pill2">'
																							+ allergy
																							+ '</span>')
																},
																error : function() {
																	alert("에러: 잠시후 다시 시도해주세요");
																}
															});
												}
											});
						});
	</script>
	<div id="skin_member_join_frm_big_div">

		<script src="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.css">
		<link rel="stylesheet" type="text/css" href="https://www.rexremall.com/_skin/skbioland_200731/img/../animate.css">
		<i id="crema-login-username" style="display: none;"></i> <i id="crema-login-name" style="display: none;"></i>
		<div id="wrapper">
			<!-- 상단 -->
			<%@include file="../include/header.jsp"%>
			<!-- //상단 -->
			<!-- 중앙 -->
			<div id="cnt">
				<div class="cntbody">
					<h2 class="subtitle" style="user-select: auto;">회원정보 입력</h2>

					<div id="join_input">
						<form name="joinFrm" method="post" action="./update" onsubmit="return validate2()">
							<input type="hidden" name="member_id_checked" value="0" id="id_check"> <input type="hidden" name="pw_checked" value="0" id="pw_check"> <input
								type="hidden" name="pw_check" value="" id-="pw2_check"> <input type="hidden" name="ipin_num" value=""> <input type="hidden"
								name="${_csrf.parameterName}" id="_csrf_header" value="${_csrf.token}">

							<fieldset>
								<legend>필수정보 입력</legend>
								<div class="box" style="padding-bottom: 20px; border-bottom: 3px solid #000;">
									<div>
										<label for="join_id">아이디</label> <input type="text" name="member_idid" value="<sec:authentication property="principal.member.useridid"/>"
											maxlength="16" readonly id="join_id" class="form_input block" placeholder="아이디">
									</div>

									<div>
										<label for="join_pw">비밀번호</label> <input type="password" name="member_pw" id="join_pw" class="form_input block" placeholder="비밀번호"
											autocomplete="new-password">
									</div>
									<div>
										<label for="join_pwpw"></label>
										<h4 id="join_pwpw"></h4>
									</div>
									<div>
										<label for="join_pw2">비밀번호 확인</label> <input type="password" name="member_pw2" id="join_pw2" class="form_input block" placeholder="비밀번호 확인"
											autocomplete="new-password">
									</div>
									<div>
										<label for="join_pwpw"></label>
										<h4 id="join_pwpw2"></h4>
									</div>
									<div>
										<label for="join_name">이름</label> <input type="text" name="member_name" readonly value="<sec:authentication property="principal.member.userName"/>"
											id="join_name" class="form_input block" placeholder="이름" required="required">
									</div>

									<div class="birth">
										<label>생년월일</label> <select name="birth1" onchange="" required="required" id="select1">
											<option value="">Year</option>
											<option value="2023">2023</option>
											<option value="2022">2022</option>
											<option value="2021">2021</option>
											<option value="2020">2020</option>
											<option value="2019">2019</option>
											<option value="2018">2018</option>
											<option value="2017">2017</option>
											<option value="2016">2016</option>
											<option value="2015">2015</option>
											<option value="2014">2014</option>
											<option value="2013">2013</option>
											<option value="2012">2012</option>
											<option value="2011">2011</option>
											<option value="2010">2010</option>
											<option value="2009">2009</option>
											<option value="2008">2008</option>
											<option value="2007">2007</option>
											<option value="2006">2006</option>
											<option value="2005">2005</option>
											<option value="2004">2004</option>
											<option value="2003">2003</option>
											<option value="2002">2002</option>
											<option value="2001">2001</option>
											<option value="2000">2000</option>
											<option value="1999">1999</option>
											<option value="1998">1998</option>
											<option value="1997">1997</option>
											<option value="1996">1996</option>
											<option value="1995">1995</option>
											<option value="1994">1994</option>
											<option value="1993">1993</option>
											<option value="1992">1992</option>
											<option value="1991">1991</option>
											<option value="1990">1990</option>
											<option value="1989">1989</option>
											<option value="1988">1988</option>
											<option value="1987">1987</option>
											<option value="1986">1986</option>
											<option value="1985">1985</option>
											<option value="1984">1984</option>
											<option value="1983">1983</option>
											<option value="1982">1982</option>
											<option value="1981">1981</option>
											<option value="1980">1980</option>
											<option value="1979">1979</option>
											<option value="1978">1978</option>
											<option value="1977">1977</option>
											<option value="1976">1976</option>
											<option value="1975">1975</option>
											<option value="1974">1974</option>
											<option value="1973">1973</option>
											<option value="1972">1972</option>
											<option value="1971">1971</option>
											<option value="1970">1970</option>
											<option value="1969">1969</option>
											<option value="1968">1968</option>
											<option value="1967">1967</option>
											<option value="1966">1966</option>
											<option value="1965">1965</option>
											<option value="1964">1964</option>
											<option value="1963">1963</option>
											<option value="1962">1962</option>
											<option value="1961">1961</option>
											<option value="1960">1960</option>
											<option value="1959">1959</option>
											<option value="1958">1958</option>
											<option value="1957">1957</option>
											<option value="1956">1956</option>
											<option value="1955">1955</option>
											<option value="1954">1954</option>
											<option value="1953">1953</option>
											<option value="1952">1952</option>
											<option value="1951">1951</option>
											<option value="1950">1950</option>
											<option value="1949">1949</option>
											<option value="1948">1948</option>
											<option value="1947">1947</option>
											<option value="1946">1946</option>
											<option value="1945">1945</option>
											<option value="1944">1944</option>
											<option value="1943">1943</option>
											<option value="1942">1942</option>
											<option value="1941">1941</option>
											<option value="1940">1940</option>
											<option value="1939">1939</option>
											<option value="1938">1938</option>
											<option value="1937">1937</option>
											<option value="1936">1936</option>
											<option value="1935">1935</option>
											<option value="1934">1934</option>
											<option value="1933">1933</option>
											<option value="1932">1932</option>
											<option value="1931">1931</option>
											<option value="1930">1930</option>
											<option value="1929">1929</option>
											<option value="1928">1928</option>
											<option value="1927">1927</option>
											<option value="1926">1926</option>
											<option value="1925">1925</option>
											<option value="1924">1924</option>
											<option value="1923">1923</option>
											<option value="1922">1922</option>
											<option value="1921">1921</option>
											<option value="1920">1920</option>
											<option value="1919">1919</option>
											<option value="1918">1918</option>
											<option value="1917">1917</option>
											<option value="1916">1916</option>
											<option value="1915">1915</option>
											<option value="1914">1914</option>
											<option value="1913">1913</option>
											<option value="1912">1912</option>
											<option value="1911">1911</option>
											<option value="1910">1910</option>
											<option value="1909">1909</option>
											<option value="1908">1908</option>
											<option value="1907">1907</option>
											<option value="1906">1906</option>
											<option value="1905">1905</option>
											<option value="1904">1904</option>
											<option value="1903">1903</option>
											<option value="1902">1902</option>
											<option value="1901">1901</option>
											<option value="1900">1900</option>
										</select> <span class="bar">년</span><select name="birth2" onchange="" required="required" id="select2">
											<option value="">Month</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select> <span class="bar">월</span><select name="birth3" onchange="" required="required" id="select3">
											<option value="">Day</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
										</select> <span class="bar">일</span>
									</div>
									<div class="sex">
										<label>성별</label>
										<div class="select sl">
											<input type="radio" name="sex" value="남" id="sex_male" required="required"> <label for="sex_male">남성</label> <input type="radio" name="sex"
												value="여" id="sex_female"> <label for="sex_female">여성</label>
										</div>
									</div>
									<div>
										<label for="join_cell">휴대전화번호</label> <input type="text" name="member_phone" value="<sec:authentication property="principal.member.member_phone"/>"
											id="join_cell" class="form_input block remove_dash" placeholder="휴대전화번호" required="required">
									</div>
									<div class="email">
										<label for="join_email">이메일</label> <input type="text" name="email1" value="<sec:authentication property="principal.member.useridid"/>"
											id="join_email" class="form_input first" placeholder="이메일" required="required"> <span>@</span> <input type="text" name="email2" value=""
											class="form_input second" id="email2" isplaceholderinited="true" required="required"> <select name="email3"
											onchange="chgEmail(this.form.email2,this,'')">
											<option value="">이메일 선택</option>
											<option value="gmail.com">gmail.com</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.net">daum.net</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="nate.com">nate.com</option>
											<option value="lycos.co.kr">lycos.co.kr</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="outlook.com">outlook.com</option>
											<option value="korea.com">korea.com</option>
											<option value="yahoo.co.kr">yahoo.co.kr</option>
											<option value="dreamwiz.com">dreamwiz.com</option>
											<option id="email-selected" value="" selected="">직접 입력</option>
										</select>
									</div>
									<div class="addr">
										<label for="join_address">주소</label>
										<p class="addbtn">
											<input type="text" name="zip" value="<sec:authentication property="principal.member.member_postNum"/>" id="join_address" class="form_input block"
												readonly="" placeholder="우편번호" required="required"> <span class="box_btn w115 h50 gray light fs15 kor"><a id="address_kakao">우편번호
													검색</a></span>
										</p>
										<input type="text" name="addr1" value="<sec:authentication property="principal.member.member_address1"/>" maxlength="50"
											class="form_input middle_address block" readonly="" placeholder="기본주소" id="addr1" required="required"> <input type="text" name="addr2"
											value="<sec:authentication property="principal.member.member_address2"/>" maxlength="100" class="form_input block" placeholder="나머지 주소"
											required="required">
									</div>
									<div class="allergy">
										<label for="join_allergy">알러지</label> <input type="text" name="allergy" value="" id="join_allergy" class="form_input block" placeholder="알러지">
									</div>
									<div id="selected-pill">
										<span class="badge text-bg-secondary"></span>
										<c:forEach items="${AllergyList }" var="allist">
											<span class="badge rounded-pill text-bg-secondary" id="allergy-pill2">${allist }</span>
											<input type="hidden" name="allergies" value="${allist }">
										</c:forEach>
									</div>
									<div id="select-pill">
										<span class="badge rounded-pill text-bg-primary" id="allergy-pill"></span>
									</div>
								</div>
							</fieldset>
							<div class="btn" style="margin-top: 0; display: block;">
								<span id="testBtn" class="box_btn w167 h55 fs15 kor white"><a href="#">취소</a></span> <span class="box_btn w167 h55 fs15 kor"><input type="submit"
									value="확인"></span>
							</div>
						</form>
					</div>

				</div>
			</div>

			<!-- //중앙 -->
			<!-- 하단 -->
			<%@include file="../include/footer.jsp"%>
			<!-- //하단 -->
		</div>
		<!-- placeholder 스크립트 (삭제하시면 ie 하위브라우저에서 구현되지 않습니다.) -->
		<script src="https://www.rexremall.com/_skin/skbioland_200731/img/../placeholder.js"></script>

	</div>
	<script type="text/javascript" src="https://www.rexremall.com/wm_engine_SW/_engine/common/auto_scroll.js" defer="defer"></script>
	<span itemscope="" itemtype="http://schema.org/Organization">
		<link itemprop="url" href="https://www.rexremall.com"> <a itemprop="sameAs" href="https://www.facebook.com/officialrexre/"></a> <a itemprop="sameAs"
		href="https://pf.kakao.com/_xjFMxbT"></a> <a itemprop="sameAs" href="https://www.instagram.com/rexre.official"></a>
	</span>

</body>
</html>
