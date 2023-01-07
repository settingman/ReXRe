function R2Na(bid, options){
	if(typeof editor_code == "undefined") editor_code="";
	if(typeof editor_gr == "undefined") editor_gr="";

	if(options) {
		if(options.editor_gr) editor_gr = options.editor_gr;
		if(options.editor_code) editor_code = options.editor_code;
	}

	seCall(bid, editor_code, editor_gr);
}

R2Na.prototype.initNeko = function (neko_id, neko_gr, neko_mode) {
	this.neko_conf_id = this.createNekoElement("neko_id", neko_id);
	if(document.wrtFrm) document.wrtFrm.appendChild(this.neko_conf_id);
}

R2Na.prototype.createNekoElement = function (eName, eVal) { // 메인 폼에 Neko™ 의 부수정보를 전달할 inputbox 를 생성
	var el = document.createElement("INPUT");
	el.type = "hidden";
	el.name = eName;
	el.value = eVal;
	return el;
}

function R2Na_Exec(sNo, excute, values) { // 에디터 버튼 실행

	if(excute == "InsertImage") { // 스마트에디터 이미지삽입
		pasteHTML(sNo, "<img src='"+values+"'>");
		return;
	}

	try {
		var win = R2NaIDs[sNo].R2Na_area.contentWindow;
		var selRange = R2NaIDs[sNo].getSelRange ();

		win.focus();

		if ( ( excute == "InsertImage" || excute == "InsertHTML" ) &&  selRange.type != "Control") {
			toimg = (excute == "InsertImage") ? "<img src='"+values+"'>" : values;

			try { // explorer
				selRange.createRange().pasteHTML (toimg);
			} catch (gekko) {
				try { // presto
					win.document.execCommand ('InsertHTML', false, toimg);
				} catch (OperaDom) { // gekko
					selRange.deleteContents();
					selRange.insertNode(selRange.createContextualFragment(toimg));
				}
			}
		} else {
			win.document.execCommand (excute,'',values);
		}

		R2NaIDs[sNo].R2NaTocontent();
	} catch (exception) {
		window.alert ("명령을 실행할수 없습니다\t\t\t\n\n- 오류 내용 : "+exception.description);
	}
}