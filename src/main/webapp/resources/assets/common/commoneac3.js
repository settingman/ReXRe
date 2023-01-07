var NUM = "0123456789";
var DNUM = NUM+".";
var SALPHA = "abcdefghijklmnopqrstuvwxyz";
var ALPHA = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"+SALPHA;
var EMAIL = "!#$%&*+-./=?@^_`{|}"+NUM+ALPHA;
var PASSWORD = "!?@.#,$%^*&_-"+ALPHA+NUM;

var oldNum=new Array();
oldNum['qna']='';
oldNum['rev']='';

var isCRM;

String.prototype.trim = function() {
	var str = this;
	return this.replace(/^(\s|\u00A0)+|(\s|\u00A0)+$/g, '');
}

String.prototype.toNumber = Number.prototype.toNumber = function() {
	var num = this;
	if(typeof this == 'string') {
		num = this.replace(/[^0-9.]/, '');
		num = num.replace(',', '');
	}

	num = /^[0-9]+\.[0-9]+$/.test(num) ? parseFloat(num) : parseInt(num);
	if(isNaN(num)) num = 0;
	return num;
}

String.prototype.format = function(args1, args2, args3, args4, args5) {
	var arguments = new Array();
	if(args1) arguments[0] = args1;
	if(args2) arguments[1] = args2;
	if(args3) arguments[2] = args3;
	if(args4) arguments[3] = args4;
	if(args5) arguments[4] = args5;

    var formatted = this;
    for (var arg in arguments) {
        formatted = formatted.replace("{" + arg + "}", arguments[arg]);
    }
    return formatted;
}

function byName(nm, from) { // document.폼네임 으로 처리한 구스크립트 처리용
	if(!from) from = document;
	var el = from.getElementsByName(nm);
	return (el.length > 0) ? el[0] : null;
}

function CheckType(s,spc) {
	var i;
	for(i=0; i<s.length; i++) {
		if(spc.indexOf( s.substring(i, i+1)) < 0) {
			return false;
		}
	}
	return true;
}

function nextTab(obj,nxt,len){
	if(obj.value.length>=len) nxt.focus();
}

function setConfig(name,value){
	setCookie( name, value, 365 );
	window.alert(_lang_pack.common_save_setting);
}

function setCookie(name, value, expiredays){
	var todayDate = new Date();
	todayDate.setDate( todayDate.getDate() + expiredays );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

function addFav(url, title) {
	var url = root_url;
	var title = document.title;
 	if(window.sidebar && window.sidebar.addPanel) { // Firefox
		window.sidebar.addPanel(title, url, "");
	} else if(window.opera && window.print) { // Opera
		window.alert(_lang_pack.common_bookmark_function);
		return true;
	}else if(window.external){ // IE
		try {
			window.external.AddFavorite(url, title);
		} catch(e) {
			window.alert(_lang_pack.common_bookmark_function);
		}
	} else {
		window.alert(_lang_pack.common_bookmark_function);
	}
}

function getCookie( name ){
	var nameOfCookie = name + "=";
	var x = 0;
	while(x <= document.cookie.length) {
		var y = (x+nameOfCookie.length);
		if(document.cookie.substring( x, y ) == nameOfCookie ){
		if((endOfCookie=document.cookie.indexOf( ";", y )) == -1)
			endOfCookie = document.cookie.length;
			return unescape( document.cookie.substring( y, endOfCookie ) );
		}
		x = document.cookie.indexOf( " ", x ) + 1;
		if(x == 0) break;
	}
	return "";
}

function layTgl(obj, speed) {
	var obj = $(obj);
	if(obj.length < 1) return;

	if(obj.css('display') == 'none') obj.show(speed);
	else obj.hide(speed);
}

function layTgl2(obj_name) {
	layTgl(document.getElementById(obj_name));
}

function textDisable(o,d){
	if(d) {
		o.style.backgroundColor='#EFEFEF';
		o.disabled=true;
	} else {
		o.style.backgroundColor='';
		o.disabled=false;
	}
}

function checkBlank(o,m){
	if(typeof o=='undefined') return true;
	if(o.value.trim() == '') {
		window.alert(m);
		try { o.focus(); } catch (ex) { }
		return false;
	}
	return true;
}

function checkSel(o,m){
	if(o.selectedIndex == 0) {
		window.alert(m);
		o.focus();
		return false;
	}
	return true;
}

function checkCB(obj, msg){
	var icbk=0;
	if(!obj) {
		window.alert(_lang_pack.common_no_selected);
		return false;
	}

	if(obj.length) {
		for (dh=0; dh<obj.length; dh++) {
			if(obj[dh].checked==true) {
				icbk++;
				break;
			}
		}
	} else if(obj && obj.checked==true) {
		icbk++;
	}

	if(icbk<1) {
		window.alert(msg);
		return false;
	}
	return true;
}

function checkAll(obj, ck){
	if($.prop) {
		$(obj).prop('checked', ck);
	} else {
		$(obj).attr('checked', ck);
	}
	if($(obj).is(':checked') == true) $(obj).parents('tr').addClass('checked');
	else $(obj).parents('tr').removeClass('checked');
}

function checkNum(o, m) {
	if(/[^0-9\.]/.test(o.value)) {
		window.alert(_lang_pack.common_number_only);
		o.focus();
		return false;
	}
	return true;
}

function wisaOpen(url,name,scroll,w,h) {
	if(!scroll) scroll='no';
	if(!w) w='100';
	if(!h) h='100';
	if(isCRM) crmFrm.location.href = url;
	else return window.open(url,name,'top=10px,left=10px,height='+h+'px,width='+w+'px,status=yes,resizable=yes,scrollbars='+scroll+',toolbar=no,menubar=no');
}

function selfResize(w, h){
	var bw = document.documentElement.scrollWidth;
	var bh = document.documentElement.scrollHeight;
	var cw = document.documentElement.clientWidth;
	var ch = document.documentElement.clientHeight;

	if(bh > window.screen.availHeight) bh = window.screen.availHeight-(window.screenY+50); // MS Edge

	var w1 = (w) ? w : bw;
	var h1 = (h) ? h : bh;
	if(w1 < 100) w1 = 100;
	if(h1 < 100) h1 = 100;
	window.resizeBy(w1-cw, h1-ch);
}

// 연속 form submit 방지
var preventContinuousClickEvent = function() {
	return false;
}
function preventContinuousClick(f, sec) {
	if(!sec) sec = 1000;

	$(f).bind('submit', preventContinuousClickEvent);
	setTimeout(function() {
		$(f).unbind('submit', preventContinuousClickEvent);
	}, sec);
}

function Resize(w, h) {
	var sh = screen.Height-150;
	if(h>sh) h=sh;

	if(Math.abs(document.body.offsetWidth - document.body.clientWidth) > 5) window.resizeTo(w + 26, h + 55);
	else window.resizeTo(w + 10, h + 59);
}

function zipSearch(form_nm,zip_nm,addr1_nm,addr2_nm,zip_mode){
	if (browser_type == 'mobile') {
		var f = document.getElementsByName(form_nm)[0];
		zipSearch2(form_nm, f.addressee_dong ? f.addressee_dong.value : '');

		return;
	}

	var zip_mode = (zip_mode == 2) ? 2 : 1;
	var srurl='/common/zip_search.php?form_nm='+form_nm+'&zip_nm='+zip_nm+'&addr1_nm='+addr1_nm+'&addr2_nm='+addr2_nm+'&zip_mode='+zip_mode+'&urlfix=Y';
	window.open(srurl,'zip', ('scrollbars=yes,resizable=no,width=374px, height=170px'));
}

function zipSearch2(form_nm, val) {
	var srurl=root_url+'/main/exec.php?exec_file=common/zipSearch.php&form_nm='+form_nm+'&search='+encodeURIComponent(val);
	var zip_mode = $('form[name='+form_nm+']').find(':checked[name=zip_mode]');
	if(zip_mode) {
		srurl += '&zip_mode='+zip_mode.val();
	}

	//행자부 주소API 사용
	if(juso_api_use == 'Y' || juso_api_use == 'D') {
		//레이어생성
		if(!$('#juso_api_layer').length) {
			$('body').append("<div id='juso_api_layer' style='display:none; overflow-y:scroll; position:fixed; z-index:10; width:100%; height:100%; background-color:#fff;'></div>");
			var element_layer = document.getElementById('juso_api_layer');
			element_layer.style.border = '1px solid';
			element_layer.style.left = '0px';
			element_layer.style.top  = '0px';

			//주소검색창 제거
			if($('#addressee_sel').length)$('#addressee_sel').remove();

			//페이징이벤트 동적 로드
			$(document).on("click",".loadAJAXPaging_juso",function() {
				var _paramEncode = $(this).attr("href").split('&');
				$.each(_paramEncode, function(i, val) {
					if(/^search/i.test(val)) {
						_tmp_val = val.split('=');
						val = _tmp_val[0]+"="+encodeURIComponent(_tmp_val[1]);
					}
					if(i) _paramEncode += "&"+val;
					else  _paramEncode = val;
				});
				$.ajax({
					type: 'get',
					url:  root_url+'/main/exec.php'+_paramEncode+'&exec_file=common/zipSearch.php',
					dataType : 'json',
					async : false,
					success: function(result) {
						if(result.result == true) {
							$('#juso_api_layer').html(result.data);
						} else {
							alert(result.message);
						}
					}
				});
				return false;
			})
		}

		//데이터 로드
		if (juso_api_use == 'D') {
			$.ajaxSetup({cache: true});
			$.getScript('https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js', function() {
				juso_api_layer_show();

				$.get('/main/exec.php?exec_file=common/zipSearch.php', function(r) { // 스킨
					$('#juso_api_layer').html(r);
					$('.layer_zip_addr_list>table').replaceWith('<div id="daum_wrap"></div>');
					$('#daum_wrap').css({
						'height':(window.screen.availHeight-$('.layer_zip_addr_list>.title').outerHeight()-2)+'px'}
					);

					// 다음 우편번호 본체
					var f = $('form[name='+form_nm+']')[0];
					new daum.Postcode({
						oncomplete: function(data) {
							zipInputLayer(form_nm, data.address, data.zonecode);
						}, 
						width: '100%',
						height: '100%'
					}).embed(document.getElementById('daum_wrap'), {q: val});					
				});
			});
		} else {
			$.ajax({
				type: 'get',
				url:  srurl,
				dataType : 'json',
				async : false,
				success: function(result) {
					if(result.result == true) {
						$('#juso_api_layer').html(result.data);
						juso_api_layer_show();
					} else {
						alert(result.message);
					}
				}
			});
		}
	} else {
		var frm = document.getElementsByName(hid_frame);
		frm[0].src = srurl;
	}
}

function zipInput(f) {
	var sel = $('[name=addressee_sel]', f).val();
	var tmp = sel.split(' ');
	var zip = tmp[0];
	var addr = sel.replace(new RegExp('^'+zip, 'gi'), '');

	if(f.elements['addressee_zip']) {
		f.elements['addressee_zip'].value=zip;
		f.elements['addressee_addr1'].value=addr;
	} else {
		f.elements['zip'].value=zip;
		f.elements['addr1'].value=addr;
	}

	if(f.ono) {
		useMilage(f, 3);
	}
}

function zipInputLayer(form_nm, addr, zip) {

	var f = document.getElementsByName(form_nm)[0];
	if(f.elements['addressee_zip']) {
		f['addressee_zip'].value=zip;
		f['addressee_addr1'].value=addr;
	} else {
		f.elements['zip'].value=zip;
		f.elements['addr1'].value=addr;
	}

	//레이어 숨김처리
	juso_api_layer_hide();

	if(f.ono) {
		useMilage(f, 3);
	}
}

function juso_api_layer_show() {
	window.oriScroll = $(window).scrollTop();
	$('body').children().each(function(i) {
		if($(this).css('display') != 'none') {
			$(this).addClass('juso_api_hidden');
		}
		$(this).hide();
	});
	$('#juso_api_layer').show();
	return false;
}

function juso_api_layer_hide() {
	$('.juso_api_hidden').show().removeClass('juso_api_hidden');
	$('#juso_api_layer').hide();
	$(window).scrollTop(window.oriScroll);
	return false;
}

function CheckMail(email){
	var aindex=email.indexOf("@");
	var dotindex=email.indexOf(".");

	if(aindex==-1 || dotindex==-1) return false;
	return true;
}

function isEmpty(data){
	for(ii=0; ii<data.length; ii++) {
		if(data.substring(ii, ii+1) != " ") return false;
	}
	return true;
}

function checkPhone(o,m){
	var r=9;

	if(o && o.tagName) {
		if(isEmpty(o.value) == true) r = 0;
		return r;
	}

	for (i=0; i<3; i++)	{
		if(isEmpty(o[i].value) || !CheckType(o[i].value, NUM))	{
			r=i;
			break;
		}
	}
	return r;
}

function chgEmail(txt,sel,current) {
	if(typeof sel=='undefined') return;

	if(current) {
		for (i=0; i<sel.length; i++) {
			if(sel[i].value==current) {
				sel.selectedIndex=i;
				break;
			}
		}

		if(sel.selectedIndex==0) sel.selectedIndex=sel.length-1;
	}
	else txt.value=sel.value;

	if(sel.selectedIndex<sel.length-1) {
		txt.readOnly=true;
		txt.style.backgroundColor='#e0e0e0';
	} else {
		txt.readOnly=false;
		txt.style.backgroundColor='';
	}
}

var openssl_bak = "";
function checkLoginFrm(f){
	if(f.member_type) {
		if(!checkCB(f.member_type, _lang_pack.common_input_mtype)) return false;
	}
	if(!checkBlank(f.member_id, _lang_pack.common_input_memberid)) return false;
	if(!checkBlank(f.pwd, _lang_pack.common_input_pwd)) return false;

	/*
	if(f.setHttps) {
		f.action = (f.setHttps.checked == true) ? f.action.replace ("http:","https:") : f.action.replace ("https:","http:");
	}

	if(f.setOpenSSL) { // 전역변수 setOpenSSL 은 common.js 에 선언되어있습니다.
		if(!openssl_bak) openssl_bak = f.action;
		f.action = (f.setOpenSSL.checked == true) ? ssl_url : openssl_bak;
	}
	*/
	printFLoading();
}

function checkGuestOrderFrm(f){
	if(!checkBlank(f.ono, _lang_pack.common_input_ono)) return false;
	if(!checkBlank(f.phone, _lang_pack.common_input_phonenum)) return false;

	/*
	if(ssl_type != 'Y') {
		if(f.setOpenSSL) { // 전역변수 setOpenSSL 은 common.js 에 선언되어있습니다.
			if(!openssl_bak) openssl_bak = f.action;
			f.action = (f.setOpenSSL.checked == true) ? ssl_url : openssl_bak;
		}
	}
	*/
}

function memberOnly(u,c,t){
	if(mlv==10) {
		if(c==1 && !confirm(_lang_pack.common_confirm_login)) {
			if(t==1) return false;
			else return;
			u='';
		}
		u=root_url+'/member/login.php?rURL='+escape(u);
	}
	if(u && t!=3) location.href=u;
	else if(t==1 || t==3) return true;
}

function checkSearchFrm(f){
	if(!checkBlank(f.search_str, _lang_pack.common_input_searchstr)) return false;
}

function layTglList(old,lay_name,lay_no){
	var olay = document.getElementById(lay_name+oldNum[old]);
	var nlay = document.getElementById(lay_name+lay_no);

	if(oldNum[old]!=lay_no) {
		if(oldNum[old]) {
			if(olay) olay.style.display="none";
		}
		if(nlay) nlay.style.display="block";
		oldNum[old]=lay_no;
	} else {
		if(nlay) nlay.style.display="none";
		oldNum[old]="";
	}

	$('.layTgl_img_'+lay_no).each(function() {
		try {
			var img = $(this);
			var _width = parseInt(img.attr('_width'));
			var _height = parseInt(img.attr('_height'));

			if(img.width() > _width) img.width(_width);
			else if(img.height() > _height) img.height(_height);
		} catch(ex) {

		}
	});
}

function setComma(str, chk) {
	if(typeof str != 'string' && typeof str != 'number') return str;
	if(currency_decimal > 0){
		var str = str.toString().replace(/,/g, '');
	}else{
		var str = str.toString().replace(/,/g, '').replace(/^0+([^0])/, '$1');
	}
	if(chk) {
		if(/[^0-9]/.test(str)) {
			window.alert(_lang_pack.common_number_only);
			return false;
		}
	}

	return str.replace(/([0-9])(?=([0-9]{3})+(?![0-9]))/g, '$1,');
}

function removeComma(str) {
	if(typeof(str) == 'string') str = str.replace(/,/g, '');
	return str;
}

function removeDot(str) {
	if(typeof(str) == 'string') str = str.replace("\.", '');
	return str;
}

function kcpCardReceipt(tno){
	url='http://admin.kcp.co.kr/Modules/Sale/Card/ADSA_CARD_BILL_Receipt.jsp?c_trade_no='+tno
	window.open(url,name,'top=10,left=10,height=700,width=440,status=no,scrollbars=yes,toolbar=no,menubar=no');
}

function inicisCardReceipt(tid) {
	var receiptUrl = "https://iniweb.inicis.com/DefaultWebApp/mall/cr/cm/mCmReceipt_head.jsp?noTid=" + tid + "&noMethod=1";
	window.open(receiptUrl,"receipt","width=430,height=700");
}

function closePopup(popup){
	setCookie(popup,'Y',1);
	window.close();
}

function closePopup2(popup,n, cookie){
	if (cookie == true) {
		setCookie(popup,'Y',1);
	}
	$('#wm_popup_'+n).remove();
	if ($('[id^=wm_popup_]').length == 0) {
		removeDimmed();
	}
}

function closePopup7(popup,n){
	setCookie(popup,'Y',7);
	layTgl2('wm_popup_'+n);
}

function closePopup3(url){
	if(url) {
		parent.document.location.href=url;
	}
	window.close();
}

function newSMSpwd(){
	url=root_url+'/member/sms_find.php';
	location.href = url;
}

function click_prd_scroll(t){
	if(click_prd.length<1) return;

	if(t=="+")	{
		tmp=click_prd_finish+1;
		if(tmp>click_prd.length)		{
			window.alert(_lang_pack.common_recentprd_last);
			return;
		}
		click_prd_start++;
		click_prd_finish++;
	} else {
		tmp=click_prd_finish-1;
		if(tmp==click_prd_limit) {
			window.alert(_lang_pack.common_recentprd_first);
			return;
		}
		click_prd_start--;
		click_prd_finish--;
	}

	for (i=click_prd_start; i<click_prd_finish; i++) {
		tmp=i-click_prd_start;
		document.getElementById('click_prd_title'+tmp).innerHTML=click_prd[i];
	}
}

function viewMember2(n,id){
	if(id == undefined) id='';
	var nurl=root_url+'/_manage/?body=member@member_view.frm&ref_front=true&mno='+n+'&mid='+id;
	window.open(nurl,'view_member','top=10,left=10,width=950,status=no,toolbars=no,scrollbars=yes');
}

function flashMovie(fid, src, wid, hei, fvs, wmd, version) {
	var fPrint = '';
	var Id = document.getElementById(fid);
	var Src = src;
	var Width = wid;
	var Height = hei;
	var FlashVars = (fvs != undefined)? fvs :'';
	var Wmod = (wmd != undefined)? wmd :'';
	if(!version) version = '10,0,0,0';

	if(isObject(Id)) {
		fPrint  = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version="'+version+' width="'+Width+'" height="'+Height+'" id="wisa_'+fid+'">';
		fPrint += '<param name="movie" value="'+Src+'">';
		fPrint += '<param name="allowScriptAccess" value="always" />';
		fPrint += '<param name="allowFullScreen" value="false" />';
		fPrint += '<param name="quality" value="high">';
		fPrint += (FlashVars != null) ? '<param name="FlashVars" value="'+FlashVars+'">' : '';
		fPrint += (Wmod != null) ? '<param name="wmode" value="'+Wmod+'">' : '';
		fPrint += '<embed';
		fPrint += ' src="'+Src+'"';
		fPrint += (FlashVars != null) ? ' FlashVars="'+FlashVars+'"' : '';
		fPrint += (Wmod != null) ? ' wmode="'+Wmod+'"' : '';
		fPrint += ' quality="high"';
		fPrint += ' allowScriptAccess="always"';
		fPrint += ' allowFullScreen="false"';
		fPrint += ' pluginspage="http://www.macromedia.com/go/getflashplayer"';
		fPrint += ' type="application/x-shockwave-flash" ';
		fPrint += ' width="'+Width+'"';
		fPrint += ' height="'+Height+'"';
		fPrint += '></embed>';
		fPrint += '</object>';
		Id.innerHTML = fPrint;
	}
}

function isObject(a) {
    return (a && typeof a == 'object');
}

function flashMovie2(fid,src,wid,hei,fvs,wmd) {
	flashMovie(fid, src, wid, hei, fvs, wmd, '9,0,0,0');
}

function viewWMMsg(n) {
	var url = (n) ? root_url+'/mypage/msg_view.php?no='+n : root_url+'/mypage/msg_list.php?mode=1';
	wisaOpen(url,'wmMgsWin');
}

function trim(str){
	return str.replace(/^\s*/,'').replace(/\s*$/, '');;
}

function qmc_check(o){
	if(o.checked==true) r='Y';
	else r='N';

	setCookie('quick_menu_move_check',r,365);
}

function seImgSize(o,width) {
	if(o.width > width) o.style.width=width;
}

function AdminMailSend(url,w,h){
	if(!w) w=500; if(!h) h=500;
	var Op=window.open(url, "AdminM", "width="+w+", height="+h+", status=no, scrollbars=yes");
	Op.focus();
}

function adminMSck(f) {
	if(!checkBlank(f.from_name, _lang_pack.common_input_name)) return false;
	if(!checkBlank(f.from_email, _lang_pack.common_input_email)) return false;
	if(!checkBlank(f.sub, _lang_pack.common_input_subject)) return false;
	if(!checkBlank(f.content, _lang_pack.common_input_content)) return false;
}

function getHttpRequest(URL,method) {
	nochache = new Date();

	if( URL.indexOf("?") < 0) URL += "?";

	URL = URL+"&ncache="+nochache;
	if( method == null ) method = "GET";

	var xmlhttp = null;
	if(window.XMLHttpRequest) xmlhttp = new XMLHttpRequest();
	else 	xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.open(method, URL, false);

	xmlhttp.onreadystatechange = function() {
		if(xmlhttp.readyState==4 && xmlhttp.status == 200 && xmlhttp.statusText=='OK') {
			responseText = xmlhttp.responseText;
		}
	}
	xmlhttp.send('');

	return responseText = xmlhttp.responseText;
}

function createBackDiv(target, bgC, w, h, fr){
	var w=w ? w : 830;
	var h=h ? h : 500;
	var fr=fr ? fr : '';
	var bw=target.document.body.clientWidth;
	var bh=target.document.body.scrollHeight;
	var bh2=target.document.body.clientHeight;
	var oh=target.document.body.scrollTop;
	var posX=(bw-w)/2;
	var posY=(bh-h)/2;

	if(!target.document.getElementById('dmMainBgDiv')){
		var obj=target.document.createElement('div');
		with(obj.style){
			position='absolute';
			left=0;
			top=0;
			width='100%';
			height=(bh < bh2) ? bh2 : bh;
			backgroundColor='#000000';
			filter='Alpha(Opacity=50)';
			opacity='0.5';
			zIndex='50';
		}
		obj.id='dmMainBgDiv';
		target.document.body.appendChild(obj);
		obj.innerHTML='<iframe style="width:100%; height:100%; opacity:0; filter=\'Alpha(Opacity=0);\'"></iframe>';

		obj=target.document.createElement('div');
		with(obj.style){
			position='absolute';
			left=posX;
			top=oh+10;
			width=w;
			height=bh2-20;
			if(bgC) backgroundColor=bgC;
			zIndex='100';
		}
		obj.id='dmMainDiv';
		target.document.body.appendChild(obj);
	}
}

function finishedHosting(url, type){
	createBackDiv(this, '');
	bh=document.body.clientHeight;
	posY=(bh-417)/2;
	div=document.getElementById('dmMainDiv');
	if(type == 1){ // 사용자
		content='<img src="'+url+'/_manage/image/service/hosting_end2.gif" width="550" height="417">';
	}else{
		content='<img src="'+url+'/_manage/image/service/hosting_end1.gif" width="550" height="417" usemap="#goExtend">\n';
		content+='<map name="goExtend"><area shape="rect" href="./?body=service@service_main&stype=1" coords="212,180,339,220"></map>';
	}
	div.innerHTML='<div id="finishHDiv" align="center" style="padding-top:'+posY+'px;">'+content+'</div>';
}

function wclose() {
	if(parent.isCRM) {
		var frm = parent.document.getElementById("crmFrm");
		frmHeight = frm.offsetHeight;
		if(frm) frm.style.height = 0;

		parent.Resize(parent.document.body.scrollWidth, parent.document.body.scrollHeight);
		parent.document.getElementById("crmDiv").style.overflow = "hidden";
	}
	else window.close()
}

function FilterNumOnly(i) {
	if(!i) return;

	if(currency_decimal > 0){
		var exp = /[^0-9.]+/;
	}else{
		var exp = /[^0-9]+/;
	}
	while(exp.test(i.value) == true){
		i.value = i.value.replace(exp, '');
	}
}

function addEvent(object, event ,listener) {
	if(object.addEventListener) object.addEventListener (event, listener, false);
	else if(object.attachEvent) object.attachEvent ('on' + event, listener);
}

function moveCate(db) {
	var f = document.getElementById('selectCateFrm');
	document.location.href=root_url+"/board/?db="+db+"&cate="+f.selectCate.value;
}

function goValidEscrow(mertid){
	var strMertid = mertid;
	window.open("https://pgweb.dacom.net/pg/wmp/mertadmin/jsp/mertservice/s_escrowYn.jsp?mertid="+strMertid,"check","width=339, height=263, scrollbars=no, left = 200, top = 50");

}

function goValidEscrowByBusiNo(busino, hashdata){
	window.open("https://pgweb.dacom.net/pg/wmp/mertadmin/jsp/mertservice/s_escrowYn.jsp?busino="+busino+"&hashdata="+hashdata,"check","width=339, height=263, scrollbars=no, left = 200, top = 50");
}

// Quick Preview
function quickDetailPopup(obj, pno, cno1, ref) {
	$.get(root_url+'/main/exec.php?exec_file=shop/quickDetail.exe.php', {"type":"popup", "pno":pno}, function(json) {
		var json = $.parseJSON(json);

		if(json.qd1_use != 'Y') {
			document.location.href = root_url+'/shop/detail.php?ano='+pno;
			return;
		}

		$('#qdBackground').remove();
		$('#qdMain').remove();

		var de = document.documentElement.scrollTop >= document.body.scrollTop ? document.documentElement : document.body;
		var clientHeight = $(window).height();
		var bodyType = navigator.appName.indexOf("Internet Explorer") != -1 ? 'html' : 'body';

		$(bodyType).css('overflow','hidden');
		$('body').attr('_mr_', $('body').css('margin-right')).css('margin-right','18px');

		// background
		var bg = $(document.createElement('div'))
			.css({"z-index":99, "position":"absolute", "left":"0", "top":"0", "width":de.scrollWidth, "height":de.scrollHeight, "background-color":json.qd1_bgcolor, "opacity":(json.qd1_opacity/100)})
			.addClass('qdBackground')
			.attr('id', 'qdBackground');

		$('body').append(bg);

		var param = '';
		if(json.qd1_scroll == '2') {
			param += '&height='+(clientHeight-json.qd1_margin-30);
		}
		if(cno1) param += '&cno1='+cno1;
		if (ref) param += '&'+ref;

		// main
		$('body').append("<iframe id='qdMain' class='qdMain' allowtransparency=true frameborder=0></iframe>");
		$('#qdMain').css({"z-index":100, "position":"absolute", "top":de.scrollTop, "left":0, "width":de.scrollWidth, "height":"100%", "display":"none"})
		     		.attr("src", "/main/exec.php?exec_file=shop/quickDetail.inc.php&striplayout=1&type=popup&ano="+pno+param)
					.ready(function() {
						$('#qdMain').show();
					});
	});
}

function setAnchorLink() {
	$('a').each(function() {
		if(!this.target) {
			if(/quickDetail|^javascript/i.test(this.href) == false) {
				this.target = '_parent';
			}
		}
	});
}

function removequickDetailPopup() {
	if(navigator.userAgent.indexOf('Trident') > -1) {
		$('#qdBackground').remove();
		$('#qdMain').remove();

		$(document.documentElement).css('overflow','auto');
		$('body').css('margin-right', $('body').attr('_mr_'));
	} else {
		$('#qdBackground').fadeOut('fast', function() {
			$(this).remove();
		});
		$('#qdMain').fadeOut('fast', function() {
			$(this).remove();

			var bodyType = navigator.appName.indexOf("Internet Explorer") != -1 ? 'html' : 'body';
			$(bodyType).css('overflow','auto');
			$('body').css('margin-right', $('body').attr('_mr_'));
		});
	}
}

function quickDetailFrame(obj, pno, cno1) {
	var frameno = $(obj).attr('frameno');
	if(!frameno) {
		frameno = $('.preview_frame').attr('id').replace(/preview_frame_/, '');
	}
	if(!frameno) return false;
	var frame = $('#preview_frame_'+frameno);
	if(frame.length > 0) {
		if(!cno1) cno1 = '';
		frame.animate({"opacity":"0"}, 'fast')
			.attr('src', root_url+'/main/exec.php?exec_file=shop/quickDetail.exe.php&type=frame&cno1='+cno1+'&frameno='+frameno+'&pno='+pno)
			.animate({"opacity":"1"}, 'fast');
	}
}


function previewResize(frameno, htype) {
	var de = document.documentElement.scrollHeight > document.body.scrollHeight ? document.documentElement : document.body;

	if(typeof is_mobile != 'undefined' && is_mobile == 'Y') { // 모바일에서는 가로 100%
		$('#preview_frame_'+frameno, parent.document).width('100%');
	}

	if(htype == '1') {
		$('#preview_frame_'+frameno, parent.document).height(1).height(de.scrollHeight);
	}
	$('#preview_frame_'+frameno, parent.document).animate({"opacity":"1"},'fast');
}

function bgmPlayer(mode){
	var elem = parent.frames[0].document.getElementById('bgmPlayer');
	switch (mode) {
		case 'prev' :
			elem.previous();
			break;
		case 'next' :
			elem.next();
			break;
		case 'play' :
			elem.play();
			break;
		case 'stop' :
			elem.stop();
			break;
		case 'pause' :
			elem.pause();
			break;
	}
}

function printReceipt(cate, cart_selected, ono) { // 장바구니/주문서/마이페이지 영수증 출력
	var param = '';
	if(cate == 2 || cate == 3) {
		param = '&ono='+$('input[name=ono]').val();
	}
	if(ono) {
		param = '&ono='+ono;
	}
	if(cart_selected) {
		param += '&cart_selected='+cart_selected;
	}

	var win = window.open('/main/exec.php?exec_file=mypage/receipt.php&cate='+cate+param, 'receipt', 'status=no, width=100px, height=100px, resize=no');
	if(!win) {
		window.alert(_lang_pack.common_blocked_popup);
		return;
	}
	win.focus();
}

function checkcpnFrm(f) {
	if(!checkBlank(f.sccode, _lang_pack.common_input_scnum)) return false;
}

// Smart Editor
var oEditors = [];
var eType=2;
var seCalled=false;
function seCall(contentId, editor_code, neko_gr) {
	if(seCalled && seCalled.indexOf('@'+contentId) > 0) return;
	if(typeof neko_gr == "undefined") neko_gr="";

	var skin = 'SmartEditor2Skin.php';
	if (typeof browser_type != 'undefined' && browser_type == 'mobile') {
		skin = 'SmartEditor2Skin_m.php';
		$('#'+contentId).css({'width':'100%', 'min-width':'260px'});
	}

	eType=2;
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: contentId,
		sSkinURI: "/main/exec.php?exec_file=smartEditor/"+skin+"&editor_code="+editor_code+"&contentId="+contentId+"&neko_gr="+neko_gr+"&urlfix=Y",
		htParams : {
			bUseToolbar : true,
			bUseVerticalResizer : true,
			bUseModeChanger : true,
			fOnBeforeUnload : function(){

			},
		},
		fOnAppLoad : function(){

		},
		fCreator: "createSEditor2"
	});

	seCalled+='@'+contentId;
}

function pasteHTML(contentId, html) {
	eType=2;

	if(!oEditors.getById[contentId]) return false;
	oEditors.getById[contentId].exec("PASTE_HTML", [html]);
}

function seDelFile(contentId, no) {
	eType=2;
	if(!confirm(_lang_pack.common_confirm_delete)) return;

	$.ajax({
		type: 'get',
		url: '/main/exec.php?exec_file=smartEditor/upload/upload.exe.php',
		data: 'no='+no+'&wmode=delete',
		dataType : 'html',
		async : false,
		success: function(result) {
			if(result == 'OK') {
				var doc = oEditors.getById[contentId].getWYSIWYGDocument();
				$('.img_obj_'+no, doc).parent('.img_wrapper').remove();
				$('.img_obj_'+no, doc).remove();
				oEditors.getById[contentId].exec("UPDATE_CONTENTS_FIELD", []);

				var preview = $(oEditors.getById[contentId].elEditingAreaContainer)
					.parents('#smart_editor2')
					.find('iframe[name=se2_img_preview_frm]');
				if(preview.length == 1) {
					$('#preview'+no, preview[0].contentWindow.document).remove();
				}
			} else window.alert(_lang_pack.common_faild_fdelete+result);
		}
	});
}

function showHTML(contentId) {
	var sHTML = oEditors.getById[contentId].getIR();
	window.alert(sHTML);
}

function submitContents(contentId, msg) {
	eType=2;
	oEditors.getById[contentId].exec("UPDATE_CONTENTS_FIELD", []);

	var content_tmp = document.getElementById(contentId).value.replace(/(<br( ?\/)?>)+$/i, '');
	if(content_tmp == "" && typeof msg != 'undefined' && msg != '') {
		alert(msg);
		return false;
	}

	return true;
}

function setDefaultFont() {
	var sDefaultFont = '궁서';
	var nFontSize = 24;
	oEditors.getById[contentId].setDefaultFont(sDefaultFont, nFontSize);
}

/**
 * 에디터에 이미지 삽입
 **/
function appendUploadedImage(content_id, no, name)
{
	parent.pasteHTML(content_id, '<div class="img_wrapper"><img src="'+name+'" class="img_obj_'+no+'"></div>\n');
}

function prdMore(obj_id, file_name, module, option) { // 윙모바일 더보기 스크립트
	/*
	option.full_reload : true=전체페이지 이동, false=more 형태
	*/
	if(typeof obj_id == 'string') {
		var obj = $('#'+obj_id);
	} else {
		obj = obj_id;
		obj_id = obj.attr('id');
		if(!obj_id) {
			obj_id = 'prd_mode_'+new Date().getTime();
			obj.attr('id', obj_id);
		}
	}
	if(!option) option = {};

	var page = obj.attr('module_page');
	if(!page) page = (option.full_reload == true) ? 1 : 2;

	if(page == 'end' && option.nopaging != true) {
		window.alert(_lang_pack.common_last_page);
		return;
	}

	var param = {"obj_id":obj_id, "_tmp_file_name":file_name, "single_module":module, "striplayout":1, "module_page":page, "document_url":document.URL.replace(/#.*$/, ''), "ajaxSkin":option.ajaxSkin, 'full_reload':option.full_reload};
	var getURL = window.location.toString().split('?');
	if(getURL[1]) {
		var temp = getURL[1].replace(/#.*$/, '').split('&');
		for(var key in temp) {
			var temp2 = temp[key].split('=');
			param[temp2[0]] = temp2[1]
		}
	}
	var _scroll_top = $(window).scrollTop(); // 구글 크롬 변경사항 대응
	$.get(root_url+'/main/exec.php?exec_file=skin_module/skin_ajax.php', param, function(result) {
		if(option.full_reload == true) {
			obj.html('');
		}

		if (parseInt(result.end_page) == page && option.btn) {
			$(option.btn).hide();
		}

		result = result.content;
		if(option.nopaging != true) {
			if($.trim(result)) {
				// 뒤로가기 복구 주소
				var tmpurl = document.URL;
				var hashurl = tmpurl.replace(/.*#/, '');
				var regexp = new RegExp('(&)?(b_'+module+'=)[0-9]+', 'g');
				if(regexp.test(hashurl)) {
					tmpurl = tmpurl.replace(regexp, '$1$2'+page);
				} else {
					tmpurl += (document.URL.indexOf('#') < 0) ? '#' : '&';
					tmpurl += 'b_'+module+'='+page;
				}
				location.href = tmpurl;

				obj.append(result);
				$(window).scrollTop(_scroll_top);
				if(option.full_reload != true) { // more 버튼 이용 시 다음페이지로 커서 이동
					page++;
					obj.attr('module_page', page);
				}
			} else {
				if (option.btn) {
					$(option.btn).hide();
				}
				window.alert(_lang_pack.common_last_page);
				obj.attr('module_page', 'end');
			}
		} else {
			obj.html(result);
		}
		if(option.complete) {
			option.complete();
		}
	});
}

function reloadProductBoard(type, page, sort) {
	// 상품평 상세 레이어 미리고침
	var view_layer = $('#review_detail_layer');
	if(view_layer.length == 1) {
		reloadReviewDetail(true);
	}

	// 상품평 정렬값 저장
	if(sort > 0) { 
		setCookie('b_'+type+'_sort', sort, 30);
	}
	var obj = $('#detail_'+type+'_ajax_list');
	if(obj.length > 0 || view_layer.length == 1) {
		if(page) {
			page = page.replace(new RegExp('^\\?[a-z]+_page=([0-9]+).*', 'gi'), '$1');
			obj.attr('module_page', page);
		}
		prdMore(obj, 'shop_detail.php', 'detail_'+type+'_list', {'full_reload':true, 'nopaging':true});
	} else {
		location.href = page;
	}
}

function getFixedSize(obj, size) {
	if(obj.width > size) {
		obj.style.width = size+'px';
	}
}

function setDimmed(color, opacity) {
	$('bgfilter').remove();

	if(!color) color = '#000';
	if(!opacity) opacity = 0.5;

	var de = document.documentElement.scrollTop >= document.body.scrollTop ? document.documentElement : document.body;
	var clientHeight = $(window).height()
	var bodyType = navigator.appName.indexOf("Internet Explorer") != -1 ? 'html' : 'body';

	if (browser_type != 'mobile') {
		$(bodyType).css('overflow','hidden');
		if(/Mobile/.test(navigator.userAgent) == false) {
			$('body').attr('_mr_', $('body').css('margin-right')).css('margin-right','17px');
		}
	}

	// background
	var bg = $(document.createElement('bgfilter'))
		.css({"z-index":99, "position":"absolute", "left":"0", "top":"0", "width":"100%", "height":de.scrollHeight, "background-color":color, "opacity":opacity})
		.addClass('qdBackground')
		.attr('id', 'qdBackground');

	$('body').append(bg);

	return bg;
}

function removeDimmed() {
	$('bgfilter').fadeOut('fast', function() {
		$(this).remove();
	});

	if (browser_type != 'mobile') {
		var bodyType = navigator.appName.indexOf("Internet Explorer") != -1 ? 'html' : 'body';
		$(bodyType).css('overflow','auto');
		$('body').css('margin-right', $('body').attr('_mr_'));
	}
}

function wishPartCartAjax(pno, o) {
	$.post(root_url+'/main/exec.php', {"exec_file":"mypage/wish.exe.php", "exec":"add", "pno":pno, "from_ajax":true}, function(result) {
		if(result.status == 'faild') {
			window.alert(result.msg);
			return;
		}
		if(result.status == 'on') {
			$(o).addClass('wish_on').removeClass('wish_off');
		} else {
			$(o).addClass('wish_off').removeClass('wish_on');
		}
		if(result.msg && confirm(result.msg+'\n'+_lang_pack.common_confirm_wishlist)) {
			location.href = root_url+'/mypage/wish_list.php';
		}
	});
}

function cartPartCartAjax(pno, product_name, sell_prc) {
	$.post(root_url+'/main/exec.php', {"exec_file":"cart/cart.exe.php", "exec":"add", "pno":pno, "buy_ea":1, "from_ajax":true}, function(r) {
		var result = (typeof r == 'object') ? r.result : r; 

		if(/^[0-9]+$/.test(result) == true) {
			quickDetailPopup(null, result);
		} else if(result == 'OK') {
			if (r.cart_rows) {
				$('.front_cart_rows').html(setComma(r.cart_rows));
			}
			if($('.quick_cart_parent').length > 0) { // 퀵카트 사용시
				openQuickCart(9, 'auto');
			} else { // 미사용시
				if(confirm(_lang_pack.shop_confirm_cartok)) {
					location.href = root_url+'/shop/cart.php';
				}
			}
			addCartExternalActions({
				'hash': pno,
				'product_name': product_name,
				'total_prc': sell_prc,
				'buy_ea': 1
			}, 'add');	
		} else {
			window.alert(result.replace(/\\(\"|\')/g, "$1"));
			return;
		}
	});
}

function ts_replace(str, pre, suf) {
	var tmp = '';
	for(var i = 0; i < str.length; i++) {
		tmp += pre+str.substr(i, 1)+suf;
	}
	return tmp;
}

function removeMemberDeleted(mno, hash) {
	if(confirm(_lang_pack.common_restore_sleep)) {
		$('iframe[name='+hid_frame+']').attr('src', '/main/exec.php?exec_file=member/login.exe.php&exec=removeDeleted&mno='+mno+'&hash='+hash);
	}
}

function showExchangeFee(price){
	var return_val = "0";

	if($.trim(r_currency_type) && price.toNumber() > 0){
		var fee =price.toNumber() * exchangeRate.toNumber();
		return_val = setComma(fee.toFixed(r_currency_decimal));
	}
	return return_val;
}

function snsLogin(sns_type, sns_cid, rurl) {
	if (!rurl) {
		rurl = root_url;
	}
	$.post("/main/exec.php?exec_file=member/login.exe.php", { "sns_type":sns_type,"sns_cid": sns_cid},
	function (rjson) {
		if(rjson["result"]==true){
			if (rjson.group_msg) {
				window.alert(rjson.group_msg);
			}
			if(rjson.app_process){
				if(rjson.app_process_device == 'IOS'){
					eval(rjson.app_process);
				}else{
					eval(rjson.app_process);
					window.location.href=rjson.app_rurl;
				}
			}else{
				try {
					if($(opener).length>0) opener.parent.location.href=rurl;
					if($(opener).length==0) window.location.href=rurl;
					if($(opener).length>0) self.close();
				} catch(e) {
					window.location.href=rurl;
				}
			}
		} else {
			alert(rjson["message"]);
			window.location.href=rurl;
		}
	},'json');
}

if(typeof $ == 'function') {
	$.prototype.attrprop = function(attr, val) {
		if(typeof $.prop == 'function') {
			this.prop(attr, val);
		} else {
			this.attr(attr, val);
		}
	}
}

$(document).ready(function(){
	$('.remove_dash').bind({
		'blur' : function() {
			this.value = this.value.replace(/[^0-9]/g,'');
		},
		'keyup' : function() {
			this.value = this.value.replace(/[^0-9]/g,'');
		}
	}).each(function() {
		this.value = this.value.replace(/[^0-9]/g,'');
	});
});

// 장바구니 관련 스크립트 (shop.js 에서 이전)
function addWish(f, mode) {
	if(!mode) mode = 'add';
	f.exec.value = mode;
	f.target=hid_frame;
	f.action=root_url+'/main/exec.php?exec_file=mypage/wish.exe.php';
	f.submit();
}

function checkWish(f) {
	if(eval(f.total_wish.value)<1) {
		window.alert(_lang_pack.shop_error_nowishlist);
		return false;
	}
	return true;
}

function cartToWish(f) {
	if(!checkCB(f.cno, _lang_pack.shop_select_selwishlist)) return;
	f.exec_file.value = "mypage/wish.exe.php";
	f.exec.value='add';
	f.submit();
}

function deleteWish(f) {
	if(!checkWish(f)) return;
	if(!checkCB(f.wno, _lang_pack.shop_select_rmwishlist)) return;
	f.exec_file = 'mypage/wish.exe.php'
	f.exec.value='delete';
	f.submit();
}

function deletePartWishAjax(wno) {
	if(!confirm(_lang_pack.shop_confirm_rmwishlist)) return false;

	$.post(root_url+'/main/exec.php', {"exec_file":"mypage/wish.exe.php", "exec":"delete", "wno[]":wno}, function(result) {
		document.location.reload();
	});
}

function cartWish(f) {
	if(!checkWish(f)) return;
	if(!checkCB(f.wno, _lang_pack.shop_select_selcart)) return;
	f.exec_file.value = "cart/cart.exe.php";
	f.exec.value='from_wish';
	f.submit();
}

function cartPartWishAjax(wno) {
	var json = {"exec_file":"cart/cart.exe.php", "exec":"from_wish", "wno[]":wno, "from_ajax":true};
	$('[name$="['+wno+']"]', document.wishFrm).each(function() {
		json[this.name] = $(this).val();
	});

	$.post(root_url+'/main/exec.php', json, function(result) {
		if(result == 'OK') {
			if(confirm(_lang_pack.shop_confirm_cartok)) {
				location.href = root_url+'/shop/cart.php';
			}
		} else {
			window.alert(result);
		}
	});
}

function truncateWish(f) {
	if(confirm(_lang_pack.common_confirm_delete)) {
		f.exec.value = 'truncate';
		f.submit();
	}
}

function checkCart(f) {
	if(f.cart_rows.value=="0") {
		window.alert(_lang_pack.shop_error_nocart);
		return false;
	}
	return true;
}

function deleteCart(f) {
	if(!checkCart(f)) return;
	if(!checkCB(f.cno, _lang_pack.shop_select_rmcart)) return;
	f.exec.value='delete';
	f.target = hid_frame;

	if(typeof ace_counter_cart != 'undefined') {
		if(ace_counter_cart == '1') {
			cnum=f['cno[]'].length ? f['cno[]'].length : 1;
			for(ii=0; ii<cnum; ii++) {
				if(cnum > 1) {
					if(f['cno[]'][ii].checked) {
						if(document.getElementsByName("buy_ea["+ii+"]").length > 0) AEC_F_D(_AEC_prodidlist[ii], 'o', f['buy_ea['+ii+']'].value);
						else AEC_F_D(_AEC_prodidlist[ii], 'o', f['buy_ea[]'][ii].value);
					}
				}else{
					if(f['cno[]'].checked) {
						if(document.getElementsByName("buy_ea["+ii+"]").length > 0) AEC_F_D(_AEC_prodidlist[ii], 'o', f['buy_ea['+ii+']'].value);
						else AEC_F_D(_AEC_prodidlist[ii], 'o', f['buy_ea[]'].value);
					}
				}
			}
		}
	}
	f.submit();
}

function deletePartCart(f,cn) {
	if(!checkCart(f)) return;
	if(f['cno[]'].length > 1) {
		f.cno[cn].checked=true;
	} else {
		f.cno.checked=true;
	}
	f.exec.value='delete';
	f.submit();
}

function deletePartCartAjax(cno, is_quickcart) {
	if(!confirm(_lang_pack.shop_confirm_rmcart)) return false;

	var sbscr = (document.cartSbscrFrm) ? 'Y' : 'N';
	$.post(root_url+'/main/exec.php', {"exec_file":"cart/cart.exe.php", "exec":"delete", "cno[]":cno, "sbscr":sbscr, "from_ajax":"true"}, function(result) {
		try {
			for (key in result) {
				addCartExternalActions({
					'hash': result[key].hash,
					'product_name': result[key].name,
					'total_prc': result[key].sell_prc,
					'buy_ea': result[key].buy_ea
				}, 'remove');
			}
		} catch (ex) {}

		if(is_quickcart) {
			openQuickCart(1, 'reload');
		} else {
			document.location.reload();
		}
	});
}

// 장바구니 인입시 외부 스크립트 작동
function addCartExternalActions(data, action) {
	// 구글 향상된 전자상거래
	if (typeof use_google_enhenced_ecommerce == 'boolean' && typeof google_alanytics_id == 'string') {
		if (use_google_enhenced_ecommerce == true) {
			ga('create', google_alanytics_id);
			ga('require', 'ec');
			ga('ec:addProduct', {
			  'id': data.hash,
			  'name': data.product_name,
			  'price': data.total_prc,
			  'quantity': data.buy_ea
			});
			ga('ec:setAction', action);
			ga('send', 'event', 'UX', 'click', 'add to cart');
		}
	}

	// 구글 애즈워드
	if (typeof use_google_ads == 'boolean' && typeof google_ads_cart_id == 'string') {
		if (use_google_ads == true) {
			gtag('event', 'conversion', {
				'send_to': google_ads_cart_id,
				'value': data.total_prc,
				'currency': (currency == '원') ? 'KRW' : currency,
				'transaction_id': data.hash
			});
		}
	}
}

function truncateCart(f) {
	if(!checkCart(f)) return;
	if(!confirm(_lang_pack.shop_confirm_truncatecart)) return;
	f.exec.value='truncate';
	f.target = hid_frame;

	if(typeof ace_counter_cart != 'undefined') {
		if(ace_counter_cart == '1') {
			AEC_D_A();
		}
	}

	if(typeof AEC_CALL_DEL_ALL != 'undefined') {
		AEC_CALL_DEL_ALL( );
	}

	if(typeof ACC_CARTDEL != 'undefined') {
		ACC_CARTDEL();
	}

	f.submit();
}

function updateCart(f) {
	if(!checkCart(f)) return;
	checkAll(f.cno,true);
	f.exec.value='update';
	f.target = hid_frame;

	if(typeof AEC_CALL_STR_FUNC != 'undefined') { // acecounter new
		var  buy_ea = $('input[name^="buy_ea\["]');
		for(i = 0; i < _ace_countvar; i++) {
			var change = parseInt(buy_ea[i].value)-parseInt(_A_nl[i]);
			if(change != 0) {
				var _cnt = Math.abs(change);
				var _type = change > 0 ? 'i' : 'o';
				AEC_CALL_STR_FUNC(_A_pl[i], _type, _cnt);
			}
		}
	}

	if(typeof ACC_INOUT != 'undefined') { // acecounter mobile
		var  buy_ea = $('input[name^="buy_ea\["]');
		for(i = 0; i < cart_pno.length; i++) {
			ACC_INOUT(cart_pno[i], buy_ea[i].value);
		}
	}

	if(typeof ace_counter_cart != 'undefined') { // acecounter old
		if(ace_counter_cart == '1') {
			cnum=f['cno[]'].length ? f['cno[]'].length : 1;
			for(ii=0; ii<cnum; ii++) {
				if(cnum > 1) {
					if(document.getElementsByName("buy_ea["+ii+"]").length > 0) AEC_U_V(_AEC_prodidlist[ii], f['buy_ea['+ii+']'].value);
					else AEC_U_V(_AEC_prodidlist[ii], f['buy_ea[]'][ii].value);
				}else{
					if(document.getElementsByName("buy_ea["+ii+"]").length > 0) AEC_U_V(_AEC_prodidlist[ii], f['buy_ea['+ii+']'].value);
					else AEC_U_V(_AEC_prodidlist[ii], f['buy_ea[]'].value);
				}
			}
		}
	}
	f.submit();
}

function orderCart(f, checked, type) {
	var u2 = '';

	if(!checkCart(f)) return;
	u=root_url+'/shop/order.php';
	if(type=='Y') {
		u2 = 'sbscr=Y';
	}
	if(typeof f.cart_where!='undefined' && f.cart_where.value) {
		u+='?cart_where='+f.cart_where.value+'&'+u2;
	}else {
		if(u2) u+='?'+u2;
	}

	if(checked == 'checked') if(!checkCB(f.cno, _lang_pack.shop_error_noprd)) return;

	if(checked == 'checked') {
		f.action = u;
		f.target = '_self';
		f.submit();
	} else {
		location.href=u;
	}
}

function cartEaChg(obj, type, cno, is_update) {
	if(typeof obj != 'object') return;
	var f = $(obj).parents('form');
	if(f.length != 1) return;

	var ea = $('#buy_ea'+cno, f);
	if(type == 1) {
		ea.val(parseInt(ea.val())+1);
	} else {
		if(parseInt(ea.val()) <= 1) return;
		else {
			ea.val(parseInt(ea.val())-1);
		}
	}

	if(is_update == true) {
		updateCart(f[0]);
	}
}

// 퀵카트
function openQuickCart(quickno, action) {
	var cart = null;

	switch(action) {
		case 'leave' :
			closeQuickCart(quickno, action);
			return;
		break;
		case 'click' :
			if(quickno < 9) {
				if($('.wing_quick_cart_layer'+quickno).html() != '') {
					closeQuickCart(quickno, action);
					return;
				}
			}
		break;
		case 'stopFadeout' :
			$('.wing_quick_cart_layer'+quickno).attr('fadeout', '');
			return;
		break;
		case 'enter' :
			$('.wing_quick_cart_layer'+quickno).attr('fadeout', '');
		break;
	}

	for(var key = 1; key <= 2; key++) {
		if($('.wing_quick_cart_layer'+key).length > 0) {
			$.get(root_url+'/shop/cart.php?quickcart='+key, {'from_ajax':'true'}, function(r) {
				var json = $.parseJSON($.trim(r));
				var cart = $('.wing_quick_cart_layer'+json.quickcart);

				cart.html(json.content).fadeIn('fast');
				$('.quick_cart_cnt').text(json.cnt);

				// chrome bug fix
				if(action == 'enter') {
					$('.quick_cart_parent'+quickno).unbind('mouseenter');
				}

				if(action == 'auto') {
					var interval = parseInt(cart.attr('interval'));
					if(isNaN(interval) == false && interval > 0) {
						cart.attr('fadeout', 'true');
						setTimeout(function() {
							closeQuickCart(json.quickcart, 'fadeout');
						}, (interval*1000));
					}
				}
			});
		}
	}
}

function closeQuickCart(quickno, action) {
	var cart = $('.wing_quick_cart_layer'+quickno);
	if(action == 'fadeout') {
		var is_fadeout = cart.attr('fadeout');
		if(is_fadeout == 'true') {
			cart.attr('fadeout', '');
		} else {
			return;
		}
	}

	cart.fadeOut('fast', function() {
		$(this).html('');

		// chrome bug fix
		if(action == 'leave') {
			$('.quick_cart_parent'+quickno).mouseenter(function(){
				openQuickCart(quickno, 'enter')
			});
		}
	});
}

function commonAjaxUpload(input, url, param, complete) {
	if (param.base64) {
		var input = {'files': [{'base64': param.base64}]}
	}

	if(!input.files) {
		window.alert('다중 업로드를 지원하지 않는 브라우저입니다.\nIE10 이상의 Internet Explorer 또는 크롬 브라우저를 이용해 주세요.');
		return false;
	}
	if(input.files.length < 1) return;

	if (typeof param.changed == 'function') {
		param.changed();
	}

	setTimeout(function() {
		var ret = [];
		for(var i = 0; i < input.files.length; i++) {
			var fd = new FormData();
			for(var key in param) {
				fd.append(key, param[key]);
			}
			fd.append("upfile"+i, input.files[i]);
			fd.append('from_ajax', 'true');

			$.ajax({
				'url': url,
				'type':'post',
				'contentType': false,
				'processData': false,
				'async': false,
				'data': fd,
				'success': function(r) {
					ret[i] = r;
				},
			});
		}
		input.value = '';
		if(typeof complete == 'function') {
			for(var key in ret) {
				complete(ret[key]);
			}
		}

		if (typeof param.completed == 'function') {
			param.completed();
		}
	}, 1);
}

// 더보기 버튼 사용시 뒤로가기 복구
$(window).ready(function() {
	var url = location.href.split('#');
	if(url[1]) {
		var hashurl = url[1].split('&');
		for(var key in hashurl) {
			if(/^b_[^=]+=[0-9]+$/.test(hashurl[key])) {
				var tmp = hashurl[key].split('=');
				console.log(tmp);
				$.ajax({
					type: 'get',
					url:  root_url+'/main/exec.php?exec_file=skin_module/skin_ajax.php',
					data: {'single_module':tmp[0], 'more_page':tmp[1]},
					dataType : 'json',
					async : false,
					success: function(r) {
						$('#'+r.obj_id).html(r.content).attr('module_page', r.next_page);
					}
				});
			}
		}
	}
});

// 공통 confirm 다이얼로그
function dialogConfirm(title, content, buttons) {
	if(!title) title = root_url;
	content = content.replace("\n", "<br>")

	var dialog = $("<div id='_dialogConfirm' class='_dialog_Confirm'></div>");
	$('body').append(dialog);

	$(dialog).dialog({
		title: title,
		resizable: false,
		height: "auto",
		width: 400,
		minHeight: 200,
		modal: true,
		closeOnEscape: false,
		buttons: buttons,
		open: function(event, ui) { 
			$(".ui-dialog-titlebar-close", $(this).parent()).hide();
		 },
	}).html(content);
}

function dialogConfirmClose() {
	$('._dialog_Confirm').dialog("close");
	$('._dialog_Confirm').remove();
}

//시간카운트
function timeInit() {
	timeCnt = 5*60;
	tid = setInterval("timeCounter()",1000);
}
function timeCounter() {
	$('#minsec').val(timePadZero(parseInt(timeCnt/60))+timePadZero(parseInt(timeCnt%60)));
	timeCnt--;
	if (timeCnt<0) {
		clearInterval(tid);
	}
}
function timePadZero(n) {
	return n>9?n:"0"+n;
}

function ordSearchdate(sdate, fdate, type) {
	$('#start_date').val(sdate);
	$('#finish_date').val(fdate);
	if(type==true) {
		document.location.href='/mypage/order_list.php?start_date='+sdate+'&finish_date='+fdate;
	}
}

function ordDatesubmit() {
	var start_date = $('#start_date').val();
	var finish_date = $('#finish_date').val();
	document.location.href='/mypage/order_list.php?start_date='+start_date+'&finish_date='+finish_date;
}

function downLoadCoupon(n) {
	if(confirm(_lang_pack.shop_confirm_downCpn)) {
		$.get('/main/exec.php', {'from_ajax':'true', 'exec_file':'mypage/coupon_download.php', 'no':n}, function(r) {
			var json = $.parseJSON(r);
			if(json.result == 'error') {
				if(json.resultmsg == 'login') {
					if(typeof is_quickDetail == 'boolean' && is_quickDetail) {
						parent.location.href = '/member/login.php?rURL='+escape(parent.this_url)
					} else {
						parent.location.href = '/member/login.php?rURL='+escape(this_url)
					}
				} else {
					window.alert(json.resultmsg);
				}
			} else if(json.result == 'OK') {
				window.alert(json.resultmsg);
				location.reload();
			}
		});
	}
}

// 하위체크박스와 전체체크박스 연동
var chainCheckbox = function(all_chkbox, sub_checkbox) {
	this.all_check = all_chkbox;
	this.sub_checkbox = sub_checkbox;

	var _this = this;
	this.all_check.click(function() {
		_this.sub_checkbox.prop('checked', this.checked);
	});

	if(_this.sub_checkbox.filter(':checked').length == _this.sub_checkbox.length && _this.sub_checkbox.length > 0) {
		_this.all_check.prop('checked', true);
	}

	this.sub_checkbox.click(function() {
		if(_this.sub_checkbox.filter(':checked').length == _this.sub_checkbox.length && _this.sub_checkbox.length > 0) {
			_this.all_check.prop('checked', true);
		} else {
			_this.all_check.prop('checked', false);
		}
	});
}

// 타임세일
function printTimeSale(o) {
	var now = Math.floor(new Date().getTime()/1000);
	var datee = parseInt($(o).data('timestamp'));
	var lefttime = datee-now;
	var unit = [86400, 3600, 60, 1];
	var res = '';
	if(lefttime > 0) {
		for(var key in unit) {
			key = parseInt(key);
			if(eval('use_ts_mark_'+(key+1)) == 'Y') {
				tmp = Math.floor(lefttime/unit[key]);
				if(tmp < 1 && res == '') continue;
				lefttime -= unit[key]*tmp;

				if(res) res += ' ';
				if(key > 0 && tmp < 10) tmp = '0'+tmp;
				res += '<span class="_timer_num _timer_num_'+key+'">'+tmp+'</span><span class="_timer_split _timer_split_'+key+'">'+eval('ts_mark_'+(key+1))+'</span>';
			}
		}
	}
	$(o).html(res);
}
$(function() {
	if($('._timesale_timer').length > 0) {
		setInterval(function() {
			$('._timesale_timer').each(function() {
				printTimeSale(this);
			});
		}, 1000);
	}
});

// 프론트 로딩
function printFLoading() {
	$('body').append('<div id="__smt_loading_layer"><div class="loading"></div></div>');
}

function removeFLoading() {
	$('#__smt_loading_layer').remove();
}

function join19limit(ipin) {
	if (!ipin && typeof use_ipin != 'undefined') ipin = 'ipin';
	else if (!ipin && typeof use_ipin_checkplus != 'undefined') ipin = 'ipinCheckPlus';

	if (ipin) {
		$('iframe[name='+hid_frame+']').attr('src', '/main/exec.php?exec_file=member/'+ipin+'/main.exe.php');
	}
}