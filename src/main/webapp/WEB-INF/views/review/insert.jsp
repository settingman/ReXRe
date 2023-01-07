<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/head.jsp"%>
</head>
<body>
	<div id="skin_board_index_big_div">
		<div id="wrapper">


			<!-- 상단 -->
			<%@ include file="../include/header.jsp"%>
			<!-- //상단 -->


			<div id="cnt">
				<div class="cntbody">
				
				<h2 class="subtitle">쇼핑FAQ 등록</h2>
				
			<form id="faqForm" name="faqForm" method="post" action="insert" >
				<input type="hidden" name="pageParam"  id="pageParam" value="${pageMaker.pageParam}"  >
				
				<fieldset>
					<legend>쇼핑FAQ 게시글 작성</legend>
					<div class="tblwrap">
						<table class="tbl_wtype1">
							<caption>게시글 작성</caption>
							<colgroup>
								<col style="width: 140px">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><strong class="reqd"></strong> 게시판</th>
									<td class="storeQue">
										<p>FAQ</p>
										<input type="hidden" name="boardSubcategory" maxlength="150" value="FAQ" >
									</td>
								</tr>
								<tr>
									<th scope="row"><strong class="reqd">*</strong>문의 종류</th>
									<td>
										<div class="form-group col-sm-5">
											<select class="form-control" id="boardCategory" name="boardCategory"  style="width: 150px">
												<option value=""></option>
												<option value="주문/결제">주문결제</option>
												<option value="배송">배송</option>
												<option value="취소">취소</option>
												<option value="교환/환불">교환/환불</option>
												<option value="회원">회원</option>
												<option value="기타">기타</option>
											</select>
										</div>
									</td>
								</tr>
								
								
								<tr>
									<th scope="row"><strong class="reqd">*</strong>제목</th>
									<td><input type="text" id="boardTitle" name="boardTitle" title="제목" class="w_all"></td>
								</tr>
								<tr>
									<th scope="row"><strong class="reqd">*</strong>내용<span class="com_txt_p">(2000자 이하)</span></th>
									<td>
										<textarea id="boardContent" name="boardContent" title="내용" cols="30" rows="10" maxlength="2000"	placeholder="내용을 입력해주세요"></textarea>
									</td>
								</tr>
							

							<tr style="display: none;">
									<th scope="row" class="th_space">사진등록</th>
									<td>
										File upload
										<div class="file_upload">
											<input type="text" id="textManToManFile" class="text" title="파일 첨부하기" readonly="readonly" name="fileText">
											<div class="upload_btn">
												<button type="button" id="uploadFile" class="img_upload" title="파일찾기">
													<span>파일찾기</span>
												</button>
												<input type="file" name="mantomanFile" id="mantomanFile" class="btn add_s" title="파일찾기">
											</div>
										</div>
										<p class="txt_guide">10MB 미만의 jpg,gif,png 파일만 첨부하실 수 있습니다.</p> //File upload
									</td>
								</tr> 
							</tbody>
						</table>
					</div>
				
					<div class="btnwrap">
						<input type="button" id="cancleBtn" value="취소" class="btn wt"> 
						<input type="button" id="registerBtn" value="등록" class="btn gray mr0">
					</div>
				
				</fieldset>
			</form>


				</div>
				</div>



			<!-- 하단 -->
			<%@ include file="../include/footer.jsp"%>
			<!-- //하단 -->


		</div>
	</div>

	 
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/css_files/beta.fix.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/common/common_function.js"></script>
	
	<script>
		//취소버튼
		$("#cancleBtn").click(function() {
				location.href="list";
		});
		
		// 등록버튼
		$("#registerBtn").click(function() {
			
			if ($("#boardCategory").val() == "") {
				alert("문의종류를 선택해주시길 바랍니다.");
				$('#boardCategory').focus();
				return false;
			}
			
			if ($('#boardTitle').val() == "") {
				alert("제목을 입력해주시길 바랍니다.");
				$('#boardTitle').focus();
				return false;
			}
			
			if ($('#boardContent').val() == "") {
				alert("내용을 입력해주시길 바랍니다.");
				$('#boardContent').focus();
				return false;
			}
			
			$("#faqForm").submit();		
		});

	

		
		
		
		//check file
		$(document).on('change','input[type=file]',function() {
							var fileName = $(this)[0].files[0].name.split(".");
							var fileSize = $(this)[0].files[0].size;
							var maxSize = 10 * 1024 * 1024;
							var fileExtension = fileName[parseInt(fileName.length - 1)]
									.toUpperCase();
							if (fileExtension == 'JPG'
									|| fileExtension == 'JPEG'
									|| fileExtension == 'GIF'
									|| fileExtension == 'PNG') {
							} else {
								$(this).val('');
								$("input[name=fileText]").val('');
								var la = new layerAlert("파일 확장자를 확인해 주세요");
								la.confirmAction = function() {
									return;
								};
							}

							if (fileSize > maxSize) {
								$(this).val('');
								$("input[name=fileText]").val('');
								var la = new layerAlert(
										"10MB 미만의 jpg,gif,png 파일만 첨부하실 수 있습니다.");
								la.confirmAction = function() {
									return;
								};
							}
							$("input[name=fileText]").val($(this).val());
						});

		
	</script>
</body>
</html>
