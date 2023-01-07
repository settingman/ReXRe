/* img hover */
/* example 
<img src="/_image/common/이미지.jpg" alt="" title="" onmouseover="imgOver(this)" onmouseout="imgOver(this,'out')"> 
*/
function imgOver(imgEl,opt) {
	if(imgEl.getAttribute('checked')) return;
	var src = imgEl.getAttribute('src');
	var ftype = src.substring(src.lastIndexOf('.'), src.length);
	if (opt == 'out') imgEl.src = imgEl.src.replace("_over"+ftype, ftype);
	else imgEl.src = imgEl.src.replace(ftype, "_over"+ftype);
}

/* 즐겨찾기 */
function addBookmark(){
	var url = root_url;
	var title = document.title;
 	if(window.sidebar && window.sidebar.addPanel){
		/* Mozilla Firefox Bookmark - Works With Opening In A Side Panel Only */
		window.sidebar.addPanel(title, url, "");
	}else if(window.opera && window.print) {
		/* Opera Hotlist */
		alert("이 브라우저에서는 즐겨찾기 기능을 사용할 수 없습니다.nCtrl 키와 D 키를 동시에 눌러서 즐겨찾기에 추가할 수 있습니다.");
		return true;
	}else if(window.external){
		/* IE Favorite */
		try{
			window.external.AddFavorite(url, title);
		}catch(e){
			alert("이 브라우저에서는 즐겨찾기 기능을 사용할 수 없습니다.nCtrl 키와 D 키를 동시에 눌러서 즐겨찾기에 추가할 수 있습니다.");
		}
	}else{
		/* Other - Google Chrome, Safari */
		alert("이 브라우저에서는 즐겨찾기 기능을 사용할 수 없습니다.nCtrl 키와 D 키를 동시에 눌러서 즐겨찾기에 추가할 수 있습니다.");
	}
}

/* 체크박스 전체선택 */
/* example 
<input type="checkbox" onclick="cartCheckAll(this.checked)">
*/
function cartCheckAll(checked) {
	$(':checkbox[name^="cno["], :checkbox[name^="wno["]').attrprop('checked', checked);
}

/* 토글 */
function toggle_view(selector, obj){
	var search = $('#'+selector+'');
	var obj = $(obj);
	if (search.css('display') == 'none') {
		search.show();
		obj.addClass('active');
	} else {
		search.hide();
		obj.removeClass('active');
	}
}

/* 탭뷰 */
function tabover(name, no) {
	var tabs = $('.tab_'+name+'').find('li');
	tabs.each(function(idx) {
		var detail = $('.tabcnt_'+name+idx);
		var link = $(this).find('a');
		if(no == idx) {
			detail.show();
			link.addClass('active');
		} else {
			detail.hide();
			link.removeClass('active');
		}
	})
}

/* 스크롤 이동 */
$(window).scroll(function(){
	var y = $(this).scrollTop();
	var hH = $('#sub_hd').offset().top;
	if ($('#sub_hd').hasClass('main_hd') || $('#sub_hd').hasClass('az_hd') != true) {
		if (y > hH) {
			$('.header').addClass('fixed');
		} else {
			$('.header').removeClass('fixed');
		}
	}
});
function scrollup(){
	$('html, body').animate({scrollTop:0}, 'slow');
}
function scrolldown(){
	$('html, body').animate({scrollTop:$(document).height()}, 'slow');
}

/* 상단 카테고리 하위메뉴 노출 */
function sub_over(obj, selector) {
	var cnt = $('.'+obj+'');
	var selector = $(selector);
	cnt.addClass('active');
	selector.addClass('active');
}
/* 상단 카테고리 하위메뉴 숨김 */
function sub_out(obj, selector) {
	var cnt = $('.'+obj+'');
	var selector = $(selector);
	cnt.removeClass('active');
	selector.removeClass('active');
}
/*
var intervalobj;  
	function fdelay(){
		$('p.next').click();
	}
	function reloadstop(){
		clearInterval(intervalobj);
	}
	function reloadstart(){
		intervalobj=window.setInterval('fdelay()',6000);
	}
	
$(document).ready(function(){
	console.log('ddddddddddddd')
	$('#fp-nav ul li').click(function(){
		var idx = $(this).index;
		console.log('ddddddddddddd')
		
	});
})
*/
$(document).ready(function(){
	$('.name1226').each(function(){
		if( $(this).text().length > 25){
			$(this).html($(this).text().substr(0,25)+"...");
		}
	});
});