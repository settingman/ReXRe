function checkRevFrm(f) {
	preventContinuousClick(f);

	if(ra==2) {
		if(!memberOnly(this_url,1,1)) return false;

	}
	if(ra==1 && mlv==10) {
		if(f.name.value=='이름') f.name.value='';
		if(f.pwd.value=='비밀번호') f.pwd.value='';
		if(!checkBlank(f.name, _lang_pack.common_input_name)) return false;
		if(!checkBlank(f.pwd, _lang_pack.common_input_pwd)) return false;
	}
	if(typeof f.rev_pt!='undefined') {
		if(f.pno.value) pmsg = _lang_pack.shop_input_revpts1;
		else pmsg = _lang_pack.shop_input_revpts2;

		if(!checkCB(f.rev_pt, pmsg)) return false;
	}

	if(!checkBlank(f.title, _lang_pack.common_input_subject)) return false;
	if(review_strlen) {
		if(review_strlen > f.title.value.length) { window.alert(_lang_pack.shop_error_titlen.format(review_strlen)); return false; }
	}
	if(f.revContent) {
		if(!submitContents('revContent', _lang_pack.common_input_content)) return false;
		f.content.value=f.revContent.value;
	}else{
		if(!checkBlank(f.content, _lang_pack.common_input_content)) return false;
	}
	if(review_con_strlen > 0) {
		if(review_con_strlen > f.content.value.length) { window.alert(_lang_pack.shop_error_content.format(review_con_strlen)); return false; }
	}
	f.target = hid_frame;

	if(seCalled && oEditors) { // 에디터 초기화
		var tmp = seCalled.split('@');
		for(var key in tmp) {
			if(tmp[key] == 'revContent') {
				seCalled = seCalled.replace('@revContent', '');
				oEditors[(key-1)] = null;
				break;
			}
		}
	}

	//캡차
	if(!f.no.value) {
		if($('#grecaptcha_element').length > 0) {
			if(typeof(grecaptcha) != 'undefined') {
				var response = grecaptcha.getResponse(grecaptcha_element_id);
				if(response.length == 0) {
					alert(_lang_pack.board_capcha_connot);
					return false;
				}
			}
		}
	}

	printFLoading();

	return true;
}

function closeReviewDetail(rno, rev_idx) {
	if(rno) {
		openReviewDetail(rno, rev_idx);
	} else {
		removeDimmed();
		$('#revWriteAjaxDiv').remove();
	}
}

function openReviewDetail(rno, rev_idx, animate) {
	$.get(root_url+'/main/exec.php', {'exec_file':'shop/review_detail.php', 'from_ajax':'true', 'rno':rno, 'rev_idx':rev_idx}, function(r) {
		if(r.status == 'error') {
			window.alert(r.message);
		} else {
			if($('bgfilter').length == 0) {
				setDimmed().click(function() {
					closeReviewDetail();
				});
			}
			$('#revWriteAjaxDiv').remove();
			$('body').append("<div id='revWriteAjaxDiv' data-rno='"+rno+"' data-rev_idx='"+rev_idx+"' style='opacity:0;'>"+r.content+"</div>");
			if(animate == true) {
				$('#revWriteAjaxDiv').animate({
					'opacity':1,
				}, 200);
			} else {
				$('#revWriteAjaxDiv').css({
					'opacity':1,
				});
			}
		}
	});
	return false;
}

function reloadReviewDetail(animate) {
	var obj = $('#revWriteAjaxDiv');
	if(obj.length != 1) return false;

	openReviewDetail(
		obj.data('rno'),
		obj.data('rev_idx'),
		animate
	);
}

function writeReviewWithoutRa(ano, rno, rev_idx) { // 상품후기 쓰기 권한 취득 후 후기 폼 출력
	if (typeof ono == 'undefined') {
		ono = '';
	}
	$.post('/main/exec.php', {'exec_file':'shop/review_reg.exe.php', 'exec':'getRa', 'ano':ano, 'rno':rno, 'ono':ono}, function(r) {
		window.ra = r;
		writeReview(true, ano, rno, rev_idx);
	});
}

function writeReview(layer, ano, rno, rev_idx) {
	var tmp=document.getElementById('revWriteDiv');
	var order_no = (typeof ono == 'string') ? ono : null;

	if(layer == true) { // 글쓰기 창 플로팅 레이어
		if(ra=='3') {
			window.alert(_lang_pack.shop_error_revwp);
			return;
		} else if(ra == '4') {
			window.alert(_lang_pack.shop_error_secondReview);
			return;
		} else {
			if(ra != '2' || memberOnly(this_url,1,1)) {
				if(seCalled) { // 에디터 초기화
					seCalled = seCalled.replace('@revContent', '');
				}
				if(!ano) ano = 0;
				$('#revWriteDiv, #revWriteAjaxDiv').remove();
				$.post('/main/exec.php', {'exec_file':'shop/review_reg.exe.php', 'exec':'write_form', 'from_ajax':'true', 'ano':ano, 'rno':rno, 'rev_idx':rev_idx, 'ono':order_no}, function(r) {
					setDimmed().click(function() {
						removeDimmed();
						$('#revWriteAjaxDiv').remove();
					});
					$('body').append('<div id="revWriteAjaxDiv">'+r.content+'</div>');
					$('#revWriteDiv').show();

					// 에디터 호출
					if(document.getElementById('revContent')) {
						var editor = new R2Na('revContent', '', '');
						editor.initNeko(editor_code, 'product_review', 'img');
					}

					// 첨부파일 미리보기 이벤트 생성
					$('#revWriteDiv').find('[name^=upfile]').change(function() {
						var reader = new FileReader();
						var nm = this.name;
						if(this.value && this.files && this.files[0] && this.files[0].type.match('image.*')) {
							reader.onload = function(e) {
								$('#preview_attach_files').find('.'+nm).html("<img src='"+e.target.result+"'>").show();
							}
							reader.readAsDataURL(this.files[0]);
						} else {
							$('#preview_attach_files').find('.'+nm).hide();
						}
					});
				});
			}
		}
		return false;
	}

	// 글쓰기 창 펼침 레이어(legacy code)
	if(ra=='2') {
		if(memberOnly(this_url,1,1)) {
			layTgl(tmp);
			if(document.getElementById('revContent')) {
				var editor = new R2Na('revContent', '', '');
				editor.initNeko(editor_code, 'product_review', 'img');
			}
		}
	} else if(ra=='3') {
		window.alert(_lang_pack.shop_error_revwp);
		return;
	} else if(ra=='4') {
		return;
	}
	else {
		layTgl(tmp);
		if(document.getElementById('revContent')) {
			var editor = new R2Na('revContent', '', '');
			editor.initNeko(editor_code, 'product_review', 'img');
		}
	}
}

function checkRevCmt(f) {
	if(!checkBlank(f.content, _lang_pack.common_input_content)) return false;
	f.target = hid_frame;
	return true;
}

function checkRevCmtAjax(f) {
	if(checkRevCmt(f) == true) {
		$.post(f.action, $(f).serialize(), function(r) {
			if(r) window.alert(r);
			else reloadReviewDetail(false);
		});
	}
	return false;
}

function delRevCmt(no) {
	if(!confirm(_lang_pack.common_confirm_delete)) return;
	var f = document.reviewDelFrm;
	f.no.value=no;
	f.target = hid_frame;
	f.exec_file.value='shop/review_comment.exe.php';
	f.submit();
}

function delRevCmtAjax(no) {
	if(!confirm(_lang_pack.common_confirm_delete)) return;
	$.post(root_url+'/main/exec.php', {'exec_file':'shop/review_comment.exe.php', 'exec':'delete', 'from_ajax':'Y', 'no':no}, function(r) {
		if(r) window.alert(r);
		else reloadReviewDetail(false);
	});
	return false;
}

function delRev(no) {
	var f = $('[name=reviewDelFrm]');
	if(!f.length) {
		$('body').append("<form method='post' name='reviewDelFrm' action='/main/exec.php'><input type='hidden' name='exec_file' /><input type='hidden' name='no' /><input type='hidden' name='exec' /></form>");
	}

	var ams='';
	if(alv!='')	{
		ams = _lang_pack.shop_confirm_rmadmin;
	}
	if(!confirm(_lang_pack.common_confirm_delete+ams)) return;

	$.post(root_url+'/main/exec.php', {'exec_file':'shop/review_reg.exe.php', 'exec': 'delete', 'no':no,}, function(r) {
		location.reload();
	});
	return false;
}

function editRev(no) {
	var f = $('[name=reviewDelFrm]');
	if(!f.length) {
		$('body').append("<form method='post' name='reviewDelFrm' action='/main/exec.php'><input type='hidden' name='exec_file' /><input type='hidden' name='no' /><input type='hidden' name='exec' /></form>");
	}

	if(seCalled && oEditors) { // 에디터 초기화
		var tmp = seCalled.split('@');
		for(var key in tmp) {
			if(tmp[key] == 'revModiContent'+no) {
				seCalled = seCalled.replace('@revModiContent'+no, '');
				oEditors[(key-1)] = null;
				break;
			}
		}
	}

	var f = $('form[name=reviewDelFrm]');
	if(f.length > 0) {
		f = f[0];
		f.no.value = no;
		f.exec_file.value = 'shop/review_edit.php';
		f.target = hid_frame;
		f.submit();
	}
}

function recommendReview(rno, val) {
	if(memberOnly('', 1, 1) == false) {
		return false;
	}
	$.post(root_url+'/main/exec.php', {'exec_file':'shop/review_reg.exe.php', 'exec':'recommend', 'rno':rno, 'exec':'recommend', 'val':val}, function(r) {
		if(r.status == 'error') {
			window.alert(r.message);
		} else {
			reloadReviewDetail(false);
		}
	});
	return false;
}

function conDelRev(no, rev_idx) {
	var f = document.forms["review_pfrm"+no];
	if(f) {
		f.exec_file.value="shop/review_reg.exe.php";
		f.exec.value='delete';
		document.getElementById('review_pwd'+no).style.display='block';
		document.getElementById('review_modi'+no).style.display='none';
	} else {
		var layer = $('#revWriteAjaxDiv');
		if(layer.length != 1) return false;

		$.post(root_url+'/main/exec.php', {'exec_file':'shop/review_reg.exe.php', 'exec':'delete', 'from_ajax':'true', 'no':no, 'rev_idx':rev_idx}, function(r) {
			layer.html(r.content);
		});
	}
}