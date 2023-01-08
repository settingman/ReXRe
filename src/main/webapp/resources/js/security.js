	var hid_frame = 'hidden1672379633';
	var mlv = '10';
	var alv = '';
	var root_url = 'https://www.rexremall.com';
	var engine_url = 'https://www.rexremall.com/wm_engine_SW';
	var this_url = 'https://www.rexremall.com/member/join_step2.php';
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
			var use_biz_memebr = 'Y';
		var member_type = '1';

		var nec_member_phone = '';
		var total_add_info = 0;
		var skip_add_info = new Array();
		var email_org = "";
		var reg_sms = "";
		var reg_email = "";
		var password_min = 8;
		var password_max = 0;
		var member_join_addr = 'Y';
		var member_join_id_email = 'N';
		var browser_type = "pc";
		var nickname_essential = 'N';
		var member_join_birth = 'Y';
		var member_join_sex = 'Y';
		
										window.onload = function() {
									document
											.getElementById("address_kakao")
											.addEventListener(
													"click",
													function() { //주소입력칸을 클릭하면
														//카카오 지도 발생
														new daum.Postcode(
																{
																	oncomplete : function(
																			data) { //선택시 입력값 세팅
																		document
																				.getElementById("addr1").value = data.address; // 주소 넣기
																		document
																				.getElementById("join_address").value = data.zonecode; // 주소 넣기
																		document
																				.querySelector(
																						"input[name=addr2]")
																				.focus(); //상세입력 포커싱
																	}
																}).open();
													});
								}
								
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
/* Timer */
const use_ts_mark_1 = 'Y';
const ts_mark_1 = '일';
const use_ts_mark_2 = 'Y';
const ts_mark_2 = ' :';
const use_ts_mark_3 = 'Y';
const ts_mark_3 = ' :';
const use_ts_mark_4 = 'Y';
const ts_mark_4 = '';
$(document).ready(function(){
	// 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
    var idKey = getCookie("idKey");
    var pwKey = getCookie("pwKey");
    var remKey = getCookie("remember");
    $("#login_id").val(idKey); 
    $("#login_pwd").val(pwKey); 
     
	    // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
    if($("#login_id").val() != ""){ 
        $("#member_id_save").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
    if($("#login_pwd").val() != ""){ 
        $("#member_pwd_save").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
    if(remKey == "1"){ 
        $("#remember-me").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
     
    $("#member_id_save").change(function(){ // 체크박스에 변화가 있다면,
        if($("#member_id_save").is(":checked")){ // ID 저장하기 체크했을 때,
            setCookie("idKey", $("#login_id").val(), 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("idKey");
        }
    });
    $("#member_pwd_save").change(function(){ // 체크박스에 변화가 있다면,
        if($("#member_pwd_save").is(":checked")){ // ID 저장하기 체크했을 때,
            setCookie("pwKey", $("#login_pwd").val(), 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("pwKey");
        }
    });
    $("#remember-me").change(function(){ // 체크박스에 변화가 있다면,
        if($("#remember-me").is(":checked")){ // ID 저장하기 체크했을 때,
            setCookie("remember", "1", 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("remember");
        }
    });
	setInterval("wingQuickSlide(228, 0, 0, 5)", 10);
    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("#login_id").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#member_id_save").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            setCookie("idKey", $("#login_id").val(), 7); // 7일 동안 쿠키 보관
        }
    });
    $("#login_pwd").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#member_pwd_save").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            setCookie("pwKey", $("#login_pwd").val(), 7); // 7일 동안 쿠키 보관
        }
    });	

// 쿠키 저장하기 
// setCookie => saveid함수에서 넘겨준 시간이 현재시간과 비교해서 쿠키를 생성하고 지워주는 역할
function setCookie(cookieName, value, exdays) {
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + exdays);
	var cookieValue = escape(value)
			+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
	document.cookie = cookieName + "=" + cookieValue;
}

// 쿠키 삭제
function deleteCookie(cookieName) {
	var expireDate = new Date();
	expireDate.setDate(expireDate.getDate() - 1);
	document.cookie = cookieName + "= " + "; expires="
			+ expireDate.toGMTString();
}
 
// 쿠키 가져오기
function getCookie(cookieName) {
	cookieName = cookieName + '=';
	var cookieData = document.cookie;
	var start = cookieData.indexOf(cookieName);
	var cookieValue = '';
	if (start != -1) { // 쿠키가 존재하면
		start += cookieName.length;
		var end = cookieData.indexOf(';', start);
		if (end == -1) // 쿠키 값의 마지막 위치 인덱스 번호 설정 
			end = cookieData.length;
            console.log("end위치  : " + end);
		cookieValue = cookieData.substring(start, end);
	}
	return unescape(cookieValue);
} 
});
//a태그를 post방식으로 링크
function goPost(crsfname,crsfvalue){
    let f = document.createElement('form');
    let obj;
    obj = document.createElement('input');
    obj.setAttribute('type' ,'hidden');
    obj.setAttribute('name' ,crsfname);
    obj.setAttribute('value', crsfvalue);
    
    f.appendChild(obj);
    f.setAttribute('method', 'post');
    f.setAttribute('action', '/security/logout');
    document.body.appendChild(f);
    f.submit();
}

		
function checkSpace(str) {
	if(str.search(/\s/) != -1) {
		return true;
	} else {
		return false;
	}
}

// 특수 문자가 있나 없나 체크
function checkSpecial(str) {
	var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;

	if(special_pattern.test(str) == true) {
		return true;
	} else {
		return false;
	}
}

// 비밀번호 패턴 체크 (8자 이상, 문자, 숫자, 특수문자 포함여부 체크)
function checkPasswordPattern(str) {
	var pattern1 = /[0-9]/;				// 숫자
	var pattern2 = /[a-zA-Z]/;			// 문자
	var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/;	// 특수문자

	if(!pattern1.test(str) || !pattern2.test(str) || !pattern3.test(str) || str.length < 8) {
		alert("비밀번호는 8자리 이상 문자, 숫자, 특수문자로 구성하여야 합니다.");
		return false;
	} else {
		return true;
	}
}		

