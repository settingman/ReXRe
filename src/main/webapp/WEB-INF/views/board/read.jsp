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
				
				<h2 class="subtitle">쇼핑FAQ 업데이트 내용 </h2>
				
			<form id="faqForm" name="faqForm" method="post" action="update" >
				
				<input type="hidden" name="boardId" id="boardId" value="${board.boardId}" >
				<input type="hidden" name="boardSubcategory" value="${board.boardSubcategory}" >
				
				<fieldset>
					<legend>쇼핑FAQ 게시글 업데이트 내용</legend>
					<div class="tblwrap">
						<table class="tbl_wtype1">
							<caption>게시글 업데이트 내용</caption>
							<colgroup>
								<col style="width: 140px">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><strong class="reqd"></strong> 게시판</th>
									<td class="storeQue">
										<p>FAQ</p>
									</td>
								</tr>
								<tr>
									<th scope="row"><strong class="reqd">*</strong>문의 종류</th>
									<td>${board.boardCategory}
										<div class="form-group col-sm-5">
											<select class="form-control" id="boardCategory" name="boardCategory"  style="width: 150px; display: none;" >
												<option value=""></option>
												<option value="주문/결제" ${board.boardCategory eq '주문/결제'? 'selected':''}>주문결제</option>
												<option value="배송" ${board.boardCategory eq '배송'? 'selected':''}>배송</option>
												<option value="취소" ${board.boardCategory eq '취소'? 'selected':''}>취소</option>
												<option value="교환/환불" ${board.boardCategory eq '교환/환불'? 'selected':''}>교환/환불</option>
												<option value="회원" ${board.boardCategory eq '회원'? 'selected':''}>회원</option>
												<option value="기타" ${board.boardCategory eq '기타'? 'selected':''}>기타</option>
											</select>
										</div>
									</td>
								</tr>
								
								
								<tr>
									<th scope="row"><strong class="reqd">*</strong>제목</th>
									<td>${board.boardTitle}</td>
								</tr>
								<tr>
									<th scope="row"><strong class="reqd">*</strong>내용<span class="com_txt_p">(2000자 이하)</span></th>
									<td> ${board.boardContent}
									
									</td>
								</tr>
			 
							</tbody>
						</table>
					</div>
				
					<div class="btnwrap">						 
						<input type="button" id="goList" value="목록으로" class="btn wt">
						<input type="button" id="goUpdate" value="수정하기" class="btn gray mr0">
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
		$("#goList").click(function() {
				location.href="list?boardCategory="+$("#boardCategory").val();
		});

		$("#goUpdate").click(function() {
			location.href="update?boardId="+$("#boardId").val();
		});
		

	</script>
</body>
</html>
