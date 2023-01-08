function joinAgree() {
	var f = byName('joinAgreeFrm');
	var memberTypeFrm = byName('member_type_frm');

	if(memberTypeFrm && use_biz_memebr=="Y") {
		if(!checkCB(memberTypeFrm.member_type, _lang_pack.common_input_mtype)) return;
		var mt = $(':checked[name=member_type]', memberTypeFrm).val();

		f.member_type.value=mt;
	}


	// 변경된 개인정보보호규정에 의한 업데이트
	var agree = document.getElementById ("ck_agree");
	var privacy = document.getElementById ("ck_privacy");
	var joinlimit = document.getElementById ("14_up_agree");

	if(agree && privacy) { // 수정된 템플릿에만 적용
		if(agree) f.agree.value = ( agree.checked == true ) ? "Y" : "N";
		if(privacy) f.privacy.value = ( privacy.checked == true ) ? "Y" : "N";

		if(f.agree.value == "N") var msg = _lang_pack.member_confirm_agree1;
		if(f.privacy.value == "N") var msg = _lang_pack.member_confirm_agree2;
		if(msg)	{
			window.alert (msg);
			return;
		}
	}
	if(joinlimit && joinlimit.checked == false) {
		window.alert (_lang_pack.member_join_14_limit);
		return false;
	}

	var cprvd = $(':checked[name=cprvd]').val();
	if(!cprvd && typeof use_ipin != 'undefined') cprvd = 'ipin';
	if(!cprvd && typeof use_ipin_checkplus != 'undefined') cprvd = 'ipinCheckPlus';
	if(cprvd) {
		var cprvd_url = '/main/exec.php?exec_file=member/'+cprvd+'/main.exe.php';
		if (browser_type=='pc'){
			//popup처리
			var win = window.open(cprvd_url, 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
			if(!win){
				window.alert('브라우저의 새창(팝업) 열기가 차단되어있습니다. 새창 열기를 허용해주세요.');
			}
		} else {
			//페이지변환
			location.href = cprvd_url;
		}
		return;
	} else {
		var cert_frm = 0;
		cert_frm += $('#sms_cert_frm').length;
		cert_frm += $('#email_cert_frm').length;

		if(f.reg_data && cert_frm > 0) {
			if(!f.reg_data.value) {
				window.alert(_lang_pack.member_confirm_joincert);
				return;
			}
		}
	}

	f.submit();
}


function checkID(id) {
	if((/[A-Z]/.test(id.value)) == true) {
		if(parent.browser_type == 'mobile') {
			window.alert(_lang_pack.member_info_memberid4);
		} else {
			parent.dialogConfirm(null, parent._lang_pack.member_info_memberid4, {
				Ok: function() {
					parent.dialogConfirmClose();
				}
			});
		}
		return false;
	}

	if(isEmpty(id.value) || !CheckType(id.value, NUM+SALPHA)) {
		if(parent.browser_type == 'mobile') {
			window.alert(_lang_pack.member_info_memberid1);
		} else {
			parent.dialogConfirm(null, parent._lang_pack.member_info_memberid1, {
				Ok: function() {
					parent.dialogConfirmClose();
				}
			});
		}
		return false;
	}
	if(/^[a-z0-9]{4,16}$/.test(id.value) == false) {
		if(parent.browser_type == 'mobile') {
			window.alert(_lang_pack.member_info_memberid2);
		} else {
			parent.dialogConfirm(null, parent._lang_pack.member_info_memberid2, {
				Ok: function() {
					parent.dialogConfirmClose();
				}
			});
		}
		return false;
	}
	if(/[a-z]/.test(id.value) == false) {
		if(parent.browser_type == 'mobile') {
			window.alert(_lang_pack.member_info_memberid3);
		} else {
			parent.dialogConfirm(null, parent._lang_pack.member_info_memberid3, {
				Ok: function() {
					parent.dialogConfirmClose();
				}
			});
		}
		return false;
	}

	return true;
}

function checkDupl(id) {

	if(!id.value) {
		if(parent.browser_type == 'mobile') {
			window.alert(_lang_pack.common_input_memberid);
		} else {
			parent.dialogConfirm(null, parent._lang_pack.common_input_memberid, {
				Ok: function() {
					parent.dialogConfirmClose();
				}
			});
		}
		id.focus();
		return;
	}
	if(!checkID(id)) return;

	var f = document.getElementById('ssl_tmp');
	f.action = root_url+'/main/exec.php';
	f.target = hid_frame;
	f.exec_file.value = 'member/check_dupl.php';
	f.data.value = id.value;
	f.submit();
}

function checkDuplNick(nick) {
	if(!nick.value) {
		if(parent.browser_type == 'mobile') {
			window.alert(_lang_pack.member_input_nickname);
		} else {
			parent.dialogConfirm(null, parent._lang_pack.member_input_nickname, {
				Ok: function() {
					parent.dialogConfirmClose();
				}
			});
		}
		nick.focus();
		return;
	}

	frm=document.getElementsByName(hid_frame);
	frm[0].src=root_url+'/main/exec.php?exec_file=member/check_duplNick.php&nick='+nick.value;
}

function checkBizNo(vencod) {
	var sum = 0;
	var getlist =new Array(10);
	var chkvalue =new Array("1","3","7","1","3","7","1","3","5");

	for(var i=0; i<10; i++) { getlist[i] = vencod.substring(i, i+1); }
	for(var i=0; i<9; i++) { sum += getlist[i]*chkvalue[i]; }

	sum = sum + parseInt((getlist[8]*5)/10);
	sidliy = sum % 10;
	sidchk = 0;

	if(sidliy != 0) { sidchk = 10 - sidliy; }
	else { sidchk = 0; }

	if(sidchk != getlist[9]) { return false; }

	return true;
}

function checkRegMember(f) {
	/*
	if(f.setOpenSSL) { // 전역변수 openssl_bak 은 common.js 에 선언되어있습니다
		if(!openssl_bak) openssl_bak = f.action;
		f.action = (f.setOpenSSL.checked == true) ? ssl_url : openssl_bak;
	}
	*/

	// 폼체크 dhtml
	checkFormResult('all');

	if(mlv==10) {
		if(member_join_id_email != 'Y'){
			if(!checkID(f.member_id)) return false;
			/*
			if(f.member_id_checked.value==0) {
				window.alert(_lang_pack.member_check_memberid);
				return false;
			}
			*/
		}
		if(use_biz_memebr=="Y" && member_type==2) { // 기업회원
			if(!checkBlank(f.dam, _lang_pack.member_input_contactname)) return false;
			if(!checkBlank(f.owner, _lang_pack.member_input_owner)) return false;
			
			// [커스텀] 일부 항목 제외
			/*
			if(!checkBlank(f.name, _lang_pack.member_input_company)) return false;

			var biz_num = $("input[name^='biz_num\[']");
			if(biz_num.length == 3) {
				for(i=0; i<3; i++) {
					if(!checkBlank(biz_num[i], _lang_pack.member_input_biznum)) return false;
					if(!CheckType(biz_num[i].value, NUM)) {
						window.alert(_lang_pack.member_info_biznum);
						biz_num[i].focus();
						return false;
					}
				}
			} else {
				window.alert('biznum error');
				return false;
			}
			var biz_num_sum = '';
			biz_num.each(function() {
				biz_num_sum += this.value;
			});
			if(!checkBizNo(biz_num_sum)) {
				window.alert(_lang_pack.member_wrong_biznum);
				biz_num.focus();
				return false;
			}

			if(!checkBlank(f.biz_type1, _lang_pack.member_input_jobtype1)) return false;
			if(!checkBlank(f.biz_type2, _lang_pack.member_input_jobtype2)) return false;
			*/
			// [커스텀] 일부 항목 제외
		} else  {
			if(!checkBlank(f.name, _lang_pack.common_input_name)) return false;
		}

		if(!checkBlank($('input[name^="pwd["]')[0], _lang_pack.common_input_pwd)) return false;
	}

	if(typeof f.sex != 'undefined') {
		if(member_join_sex == 'Y') {
			if(!checkCB(f.sex, _lang_pack.member_input_gender)) return false;
		}
	}
	if(typeof f.birth1 != 'undefined' && typeof f.birth2 != 'undefined' && typeof f.birth3 != 'undefined') {
		if(member_join_birth == "Y") {
			if(!checkBlank(f.birth1, _lang_pack.member_input_birth1)) return false;
			if(!checkBlank(f.birth2, _lang_pack.member_input_birth2)) return false;
			if(!checkBlank(f.birth3, _lang_pack.member_input_birth3)) return false;
		}
	}
	if(typeof f.nick != 'undefined') {
		if(nickname_essential == 'Y') {
			if(!checkBlank(f.nick, _lang_pack.member_input_nickname)) return false;
		}
	}

	var pwd = $('input[name^="pwd["]');
	if(pwd[0].value) {
		if(pwd[0].value.length < password_min) {
			window.alert(_lang_pack.member_info_pwd1.format(password_min));
			pwd[1].value = '';
			pwd[0].focus();
			return false;
		}
		if(!CheckType(pwd[0].value,PASSWORD)) {
			window.alert(_lang_pack.member_info_pwd2);
			pwd[1].value = '';
			pwd[0].focus();
			return false;
		}
		if(!checkBlank(pwd[1], _lang_pack.member_input_cpwd)) return false;
		if(pwd[0].value!=pwd[1].value) {
			window.alert(_lang_pack.member_error_cpwd);
			pwd[0].value = pwd[1].value = '';
			pwd[0].focus();
			return false;
		}
	}

	for(var i = 0; i <= 1; i++) {
		var fieldname = (i == 0) ? 'phone' : 'cell';
		
		if(f.elements[fieldname+'[]']){
			var p = $(f).find('input[name^="'+fieldname+'["]');
		}else{
			var p = $(f).find('input[name^="'+fieldname+'"]');
		}
		if(p.length > 0) {
			for(var x = 0; x <= p.length; x++) {
				var err = null;
				if(!p[x]) continue;
				if(p[x].value == '') err = _lang_pack['member_input_'+fieldname];
				if(/[^0-9]/.test(p[x].value)) err = _lang_pack['member_error_'+fieldname];

				if(err) {
					p[x].select();
					window.alert(err);
					return false;
				}
			}
		}
	}

	if(member_join_addr != 'N') {
		if(f.zip && !checkBlank(f.zip, _lang_pack.member_input_zipcode)) return false;
		if(f.addr1 && !checkBlank(f.addr1, _lang_pack.member_input_addr1)) return false;
		if(f.addr2 && !checkBlank(f.addr2, _lang_pack.member_input_addr2)) return false;
	}

	if(typeof f.email1 != 'undefined') {
		if(!checkBlank(f.email1, _lang_pack.common_input_email)) return false;
		emails = f.email1.value+'@'+f.email2.value;
	}
	if(typeof f.email3!='undefined') {
		if(!checkSel(f.email3, _lang_pack.common_input_email)) return false;
	}	
	if(f.email) {
		if(!checkBlank(f.email, _lang_pack.common_input_email)) return false;
		emails = f.email.value;
	}
	if(CheckType(emails,EMAIL)==false || CheckMail(emails)==false) {
		window.alert(_lang_pack.common_wrong_email);
		if(f.email1) f.email1.focus();
		if(f.email) f.email.focus();
		return false;
	}

	if(total_add_info>0) {
		for(i=0; i<total_add_info; i++) {
			if(skip_add_info[i]=="Y") {
				continue;
			}
			tmp_obj=document.getElementById('add_info_style'+i);
			if(!tmp_obj) continue;
			tmp=tmp_obj.value.split('::');
			if(tmp[0]=="Y") {
				if(tmp[1]=="radio" && !checkCB(f.elements['add_info'+i], _lang_pack.common_input_addinfo.format(tmp[2]))) {
					return false;
				}
				else if(tmp[1]=="select" && !checkSel(f.elements['add_info_style'+i], _lang_pack.common_input_addinfo.format(tmp[2]))) {
					return false;
				}
				else if(tmp[1]=="checkbox" && !checkCB(f.elements['add_info'+i], _lang_pack.common_input_addinfo.format(tmp[2]))) {
					return false;
				}
				else if(tmp[1]=="text" && !checkBlank(f.elements['add_info'+i], _lang_pack.common_input_addinfo.format(tmp[2]))) {
					return false;
				}
			}
		}
	}

	if(mlv < 10 && f.unique && $(':checked[name=unique]', f).val() == '1') {
		if(email_org && emails != email_org) var reg_email_msg = _lang_pack.member_info_chgemail;
		if(reg_email && reg_sms == 'Y' && reg_email != 'Y') var reg_email_msg = _lang_pack.member_info_chgauth;

		if(reg_email_msg) {
			if(!confirm(reg_email_msg+'\n'+_lang_pack.member_confirm_cert)) {
				return false;
			}
		}
	}

	printFLoading();

	return true;
}

function openCertFrm() {
	var f = document.getElementsByName('joinFrm');
	if(f) f = f[0];
	else return false;

	if(browser_type == 'mobile') {
		var style1 = {'position':'fixed', 'top':0, 'left':0, 'zIndex':1001, 'width':'100%', 'height':'100%'};
		var style2 = {'width':'100%', 'height':'100%'};
	} else {
		var style1 = {'position':'absolute', 'top':($(window).height()/2)-200+$(window).scrollTop(), 'left':($(window).width()/2)-200, 'zIndex':1001};
		var style2 = {'width':'400px', 'height':'400px', 'border':'solid 1px #000'};
	}

	setDimmed('#000000', 0.5);
	$('body').append("<div class='certFrm'><iframe src='/main/exec.php?exec_file=member/joinSmsFrm.php' frameborder='0'></iframe></div>");
	$('.certFrm').css(style1).find('iframe').css(style2);
}

function removeCertFrm() {
	$('.certFrm').remove();
	parent.removeDimmed();

	var f = document.getElementsByName('joinFrm');
	if(f) f = f[0];
	else return false;

	if(!f.reg_code || (f.reg_code && f.reg_code.value == '')) {
		if($.prop) {
			$(f.unique).prop('checked', false);
		} else {
			$(f.unique).attr('checked', false);
		}
	}
	removeFLoading();
}

function checkEditStep1(f) {
	if(f.setOpenSSL) { // 전역변수 openssl_bak 은 common.js 에 선언되어있습니다
		if(!openssl_bak) openssl_bak = f.action;
		f.action = (f.setOpenSSL.checked == true) ? ssl_url : openssl_bak;
	}

	if(!checkBlank(f.pwd, _lang_pack.common_input_pwd)) return false;
	return true;
}


function checkFind(f,t) {
	if(f.setOpenSSL) { // 전역변수 openssl_bak 은 common.js 에 선언되어있습니다
		if(!openssl_bak) openssl_bak = f.action;
		f.action = (f.setOpenSSL.checked == true) ? ssl_url : openssl_bak;
	}

	if(t>1 && !checkBlank(f.member_id, _lang_pack.common_input_memberid)) return false;
	if(!checkBlank(f.name, _lang_pack.common_input_name)) return false;

	var t = 1;
	if(f.find_id_type) t = $(f).find(':checked[name=find_id_type]').val();
	if(f.find_pw_type) t = $(f).find(':checked[name=find_pw_type]').val();

	if(t==1) {
		if(!checkBlank(f.email, _lang_pack.common_input_email)) return false;
	}
	
	if(t==2) {
		if(!checkBlank(f.email, _lang_pack.common_input_email)) return false;
		if(!CheckType(f.email.value,EMAIL) || !CheckMail(f.email.value)) {
			alert(_lang_pack.common_wrong_email);
			f.email.focus();
			return false;
		}
	} else if(t==3)	{
		if(!checkBlank(f.elements['cell[]'][0], _lang_pack.member_input_cell)) return false;
		if(!checkBlank(f.elements['cell[]'][1], _lang_pack.member_input_cell)) return false;
		if(!checkBlank(f.elements['cell[]'][2], _lang_pack.member_input_cell)) return false;
	}
}

function checkDraw(f) {
	if(!checkBlank(f.pwd, _lang_pack.common_input_pwd)) return false;
	if(!checkBlank(f.content, _lang_pack.member_input_rejectreason)) return false;
}

function wingSmsFind(w, h) {
	url=root_url+'/member/sms_find.php';
	window.open(url, 'sms_find', 'scrollbars=yes,resizable=no,width='+w+', height='+h);
}

function smsAuthSend() {
	f=document.findFrm2;
	if(!checkBlank(f.auth_key, _lang_pack.member_input_certnum)) return;
	f.submit();
}

function setFindIDPW(obj) {
	if(!obj) return;

	var prefix = '';
	if(obj.name == 'find_id_type') prefix = 'find_id_item';
	else if(obj.name == 'find_pw_type') prefix = 'find_pw_item';

	if(!prefix) return;

	for(var i = 1; i <= 3; i++) {
		if(obj.value != i) $('.'+prefix+'_'+i).hide();
		else $('.'+prefix+'_'+i).show();
	}
}

var certResult = false;
function showCertForm(t) {
	var f1 = $('#sms_cert_layer');
	var f2 = $('#email_cert_layer');

	if(t == 1) {
		f1.show();
		f2.hide();
	} else {
		f1.hide();
		f2.show();
	}
}

function createCertCode(t, f) {
	if(!f.source) {
		window.alert(_lang_pack.member_info_skin);
		return false;
	}

	if(t == 1) {
		f.source.value = f.source.value.replace(/[^0-9]/g, '');
		if(f.source.value == '') {
			setCertMsg(t, _lang_pack.member_input_cell);
			return false;
		}
		if(/[0-9]{10,11}/.test(f.source.value) == false) {
			setCertMsg(t, _lang_pack.member_wrong_cell);
			return false;
		}
	} else {
		if(f.source.value == '') {
			setCertMsg(t, _lang_pack.common_input_email);
			return false;
		}
		if(CheckMail(f.source.value) == false) {
			setCertMsg(t, _lang_pack.common_wrong_email);
			return false;
		}
	}

	$.post('/main/exec.php?exec_file=member/joinSmsFrm.exe.php', {'exec':'generate', 'type':t, 'source':f.source.value}, function(r) {
		var json = $.parseJSON(r);
		if(json.rcode == '0000') {
			if(t == 1) {
				$('#sms_cert_frm').show();
			} else {
				$('#email_cert_frm').show();
			}
			$('input[type=submit]', f).val(_lang_pack.common_info_recertnum).addClass('checked');
			window.alert(json.rmsg);
		} else {
			setCertMsg(t, json.rmsg);
		}
	});

	return false;
}

function checkCertCode(f) {
	if(!f.reg_code) {
		window.alert(_lang_pack.member_info_skin);
		return false;
	}

	f.reg_code.value = f.reg_code.value.replace(/[^0-9]/g, '');
	if(!f.reg_code.value) {
		window.alert(_lang_pack.member_input_certnum);
		return false;
	}

	$.post('/main/exec.php?exec_file=member/joinSmsFrm.exe.php', {'exec':'confirm', 'reg_code':f.reg_code.value}, function(r) {
		var json = $.parseJSON(r);
		if(json.rcode == '0000') {
			var af = document.getElementById('joinAgreeFrm');
			af.reg_data.value = json.rdata;
		}
		window.alert(json.rmsg);
	});

	return false;
}

function setCertMsg(t, msg) {
	if(t == 1) var ma = $('#cert_sms_msg');
	else var ma = $('#cert_email_msg');

	if(ma.length == 1) ma.html(msg);
	else window.alert(msg);
}

function checkRegSNS(f) {

	if(f.setOpenSSL) { // 전역변수 openssl_bak 은 common.js 에 선언되어있습니다
		if(!openssl_bak) openssl_bak = f.action;
		f.action = (f.setOpenSSL.checked == true) ? ssl_url : openssl_bak;
	}

	// 폼체크 dhtml
	checkFormResult('all');

	var agree = document.getElementById("ck_agree");
	var privacy = document.getElementById("ck_privacy");
	var joinlimit = document.getElementById ("14_up_agree");

	if(agree && privacy) { // 수정된 템플릿에만 적용
		if(agree) f.agree = (agree.checked == true) ? "Y" : "N";
		if(privacy) f.privacy = (privacy.checked == true) ? "Y" : "N";
		
		var msg = '' 
		if(f.agree == "N") msg = _lang_pack.member_confirm_agree1;
		if(f.privacy == "N") msg = _lang_pack.member_confirm_agree2;
		if(msg)	{
			window.alert (msg);
			return false;
		}
	}

	if(joinlimit && joinlimit.checked == false) {
		window.alert (_lang_pack.member_join_14_limit);
		return false;
	}

	if(!checkBlank(f.sns_type, "올바른 접근이 아닙니다.")) return false;
	if(!checkBlank(f.sns_cid, "올바른 접근이 아닙니다.")) return false;
	if(!checkBlank(f.member_id, _lang_pack.common_input_memberid)) return false;
	if(!checkBlank(f.name, _lang_pack.common_input_name)) return false;

	/*
	if (f.member_id_checked.value==0) {
		alert(_lang_pack.member_check_memberid);
		return false;
	}
	*/

	return true;
}

function checkSnsDupl(id, sns_type) {

	if(!id.value) {
		window.alert(_lang_pack.common_input_memberid);
		id.focus();
		return;
	}

	if(!sns_type.value) {
		window.alert("SNS 계정타입이 없습니다.");
		id.focus();
		return;
	}

	frm=document.getElementsByName(hid_frame);
	frm[0].src=root_url+'/main/exec.php?exec_file=member/check_sns_dupl.php&exec=1&member_id='+id.value  + '&sns_type='+sns_type.value;
}

function chkSearchmember(f) {
	if(!f.reg_code.value) {
		window.alert(_lang_pack.member_idpwd_input_sent);
		return false;
	}
	if($('#minsec').val()=='0000') {
		f.reg_code.value = "";
		window.alert(_lang_pack.member_idpwd_reg_code_expired);
		return false;
	}
	f.target = hid_frame;
}

//인증발송
function confirm_send() {
	var f = document.idpwdsearchFrm;
	var find_id_type = f.find_id_type.value;
	var search_val = f.search_val.value;
	var search_name = f.search_name.value;
	var search_member_no = f.search_member_no.value;
	$.post('/main/exec.php', {'exec_file':'member/search_id_pwd_sms.exe.php', 'exec':'regcomplete', 'find_id_type':find_id_type, "search_val":search_val, "search_name":search_name, "search_member_no": search_member_no}, function(r) {
		console.log(r);
		if (r == 'OK') {
			alert(_lang_pack.member_idpwd_confirm_sent);
			$('#btn_confirm').val(_lang_pack.common_info_recertnum);
			$('#limit_5').show();
			$('#reg_code').val('');
			timeInit();
		} else {
			window.alert(r);
		}
	});
}
//비밀번호변경
function chkSearchpwd() {
	var chk_memberno = $(':radio[name=member_no]');
	if(chk_memberno.filter(':checked').length==0) {
		alert("사용할 아이디를 선택해주세요.");
		return false;
	}
	var search_member_no = chk_memberno.filter(':checked').val();
	$.post('/main/exec.php', {'exec_file':'member/new_find_id.exe.php', 'exec':'pwd_log', 'search_member_no':search_member_no}, function(key) {
		if(key) {
			parent.location.href='/main/exec.php?exec_file=member/modify_pwd.php&key='+key;
		}
	});
}

// 가입폼에 입력 체크 이벤트 추가
function setJoinFormResult() {
	var f = document.joinFrm;

	$('[name="member_id"], [name="name"], [name="first_name"], [name="family_name"], [name="nick"], [name="cell"], [name="email"], [name="email1"], [name="email2"], [name="birth_type"], [name="birth_type"], [name="sex"], [name="birth1"], [name="birth2"], [name="birth3"], [name="zip"], [name="addr1"], [name="addr2"], [name="pwd[]"]', f).on('keyup paste change', function() {
		var nm = this.name;
		if(nm == 'pwd[]') {
			nm = ($('[name="pwd[]"]').index(this) == 0) ? 'pwd1' : 'pwd2';
		}
		checkFormResult(nm);
	});

	$('[name="pwd[]"]').blur(function() {
		$('.password_security_lev').hide();
	});
}

// 가입폼 실시간 체크
function checkFormResult(nm) {
	var f = document.joinFrm;

	if($('.form_result').length > 0) {
		if(nm == 'birth1' || nm == 'birth2' || nm == 'birth3') nm = 'birth';
		if(nm == 'zip' || nm == 'addr1' || nm == 'addr2') nm = 'addr';

		var val = $(f).serialize();
		val += '&exec_file=member/join_form_check.exe.php&ajax_return=true&nm='+nm;

		$.post(root_url+'/main/exec.php', val, function(r) {
			for(var key in r) {
				$('.form_result_'+key).html(r[key]);

				var field = null;
				switch(key) {
					case 'pwd1' : field = $('input[name="pwd[]"]').eq(0); break;
					case 'pwd2' : field = $('input[name="pwd[]"]').eq(1); break;
					default : field = $('input[name="'+key+'"]');
				}

				if(r[key]) {
					$('.form_result_'+key).addClass('warning').show();
					field.addClass('invalid');
				} else {
					$('.form_result_'+key).addClass('warning').hide();
					field.removeClass('invalid');
				}
			}
		});
	}

	// 비밀번호 안전도 체크
	if(nm == 'pwd1' && typeof password_max != 'undefined') {
		var pwd = $('[name="pwd[]"]', f).eq(0).val();

		// 사용한 문자 타입에 따른 점수
		var use_types = 0;
		if(/[0-9]/.test(pwd) == true) use_types++;
		if(/[a-z]/.test(pwd) == true) use_types++;
		if(/[^0-9a-z ]/.test(pwd) == true) use_types++;

		// 비밀번호 보안 등급
		var slevel = 1;
		if(pwd.length >= password_min+2 && use_types > 1) slevel = 2;
		if(((password_max > 0 && pwd.length == password_max) || (password_max == 0 && pwd.length >= 10)) && use_types == 3) slevel = 3;

		$('.password_security_lev').not('.password_security_'+slevel).hide();
		$('.password_security_'+slevel).show();
	}
}

/**
 * 마이페이지 SNS 아이디 통합
 **/
function snsIntegrate(type)
{
	eval(type+'Login()');
}

/**
 * 마이페이지 SNS 아이디 연결 해제
 **/
function snsDisconnect(type)
{
	if (confirm('선택하신 SNS계정을 해제하시겠습니까?') == false) {
		return false;
	}
	$.post(root_url+'/main/exec.php', {'exec_file': 'member/sns_integrate.exe.php', 'type': type, 'exec': 'disconnect'}, function(r) {
		if (r.status == 'success') {
			location.reload();
		} else {
			window.alert(r.message);
		}
	});
}