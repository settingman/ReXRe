<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<%@ include file="../include/head.jsp"%>
</head>
<body>


	<div id="skin_board_index_big_div">
		<div id="wrapper">
<%@ include file="../include/header.jsp"%>	
			<!-- 상단 -->
			
			<!-- //상단 -->

			<!-- 중앙 -->
			<div id="cnt">
				<div class="cntbody">

					<h2 class="subtitle">쇼핑FAQ</h2>
					<div id="boardlist">

						<div class="cateList">
							<ul>
								<li class="${param.boardCategory eq 'all' ? 'active' :'' }"><a href="list?boardSubcategory=FAQ&boardCategory=all">전체보기</a></li>
								<li class="${param.boardCategory eq '주문/결제' ? 'active' :'' }"><a href="list?boardSubcategory=FAQ&boardCategory=주문/결제">주문결제</a></li>
								<li class="${param.boardCategory eq '배송' ? 'active' :'' }"><a href="list?boardSubcategory=FAQ&boardCategory=배송">배송</a></li>
								<li class="${param.boardCategory eq '취소' ? 'active' :'' }"><a href="list?boardSubcategory=FAQ&boardCategory=취소">취소</a></li>
								<li class="${param.boardCategory eq '교환/환불' ? 'active' :'' }"><a href="list?boardSubcategory=FAQ&boardCategory=교환/환불">교환/환불</a></li>
								<li class="${param.boardCategory eq '회원' ? 'active' :'' }"><a href="list?boardSubcategory=FAQ&boardCategory=회원">회원</a></li>
								<li class="${param.boardCategory eq '기타' ? 'active' :'' }"><a href="list?boardSubcategory=FAQ&boardCategory=기타">기타</a></li>
							</ul>
						</div>

						<div class="board_search">
							<form method="get">
								<input type="hidden" name="boardSubcategory" value="FAQ">
								<input type="hidden" name="boardCategory" value="${param.boardCategory}">

								<div class="box">
									<select name="searchType" id="searchType">
										<option value="boardtitle" ${param.searchType eq 'boardtitle' ? 'selected' :'' }>제목</option>
										<option value="boardcontent" ${param.searchType eq 'boardcontent' ? 'selected' :'' }>내용</option>
									</select>
									<input type="search" name="keyword" value="${param.keyword}" class="form_input block basic_search" placeholder="FAQ SEARCH">
									<input type="image" src="${pageContext.request.contextPath}/resources/assets/_skin/basic_faq/img/btn_search.png" alt="검색" class="btn">
								</div>
							</form>
						</div>
						<table class="board_col">
							<caption class="hidden">글목록</caption>
							<colgroup>
								<col style="width: 8%;"></col>
								<col></col>
							</colgroup>
							<thead>
								<tr>
									<th scope="col">질문/답변</th>
									<th scope="col">제목</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="board">
									<tr>
										<th scope="row"><span class="icon">Q</span></th>
										<td class="tal"><span>[<c:out value="${board.boardCategory}" />]
										</span> <a href="javascript:show(faq${board.boardId})">${board.boardTitle}</a></td>
									</tr>
									<tr id="faq${board.boardId}" class="faqcnt" style="display: none;">
										<th scope="row"><span class="icon answer">A</span></th>
										<td class="tal">
											<div class="contents">${board.boardContent}</div>
											<div class="inputArea">
												<%-- <label for = "faqsImg">이미지</label>
                                    <p>원본 이미지</p>
                                    <img src="${board.faqsImg}" class = "oriImg"/>
                                    <p>썸네일</p> --%>
												<img src="${board.faqsThumbImg}" class="thumbImg" />
											</div>
											<div class="btn">
												<span class="box_btn w100 white">
													<button class="btn-update" onclick="boardUpdate('${board.boardId}')" style="display:;">수정</button>
												</span> <span class="box_btn w100 white">
													<button onclick="boardDelete('${board.boardId}')" class="btn-delete" style="display:;">삭제</button>
												</span>
											</div>
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>

						<div class="page_write">
							${pagination}

							<div class="box_btn w100 write">
								<a href="${pageContext.request.contextPath}/board/insert">글쓰기</a>
							</div>
						</div>
					</div>



				</div>
			</div>
			<!-- //중앙 -->


			<!-- 하단 -->
			<%@ include file="../include/footer.jsp"%>
			<!-- //하단 -->



		</div>
	</div>

	<script>
      function boardUpdate(boardId){         
         location.href="update?boardId="+boardId
      }
      
      function boardDelete(boardId){
         if(confirm("정말 삭제 하시겠습니까?")){
            $.ajax({
               url:'delete',
               type:"POST",
               data:{boardId},
               success:function(res){
                  if(res==="success"){
                     location.reload();   
                  }                  
               },
               error:function(error){
                  console.error(error);
               }
            })
         }      
      }
      
      
      var seq = "";
      function show(rep) {
         if(seq != rep) {
            if(seq !="") seq.style.display = "none";
            rep.style.display = "";
            seq = rep;
         } else {
            rep.style.display = "none";
            seq = "";
         }
      }
   </script>





</body>
</html>
