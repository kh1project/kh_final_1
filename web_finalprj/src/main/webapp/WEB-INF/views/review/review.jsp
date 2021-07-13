<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="review_header.jsp"></jsp:include>
		<div><h1>영화 리뷰</h1><a href="<%=request.getContextPath() %>/review/add">영화 리뷰 작성</a></div>
		<section>
			<div class="row row-cols-lg-6">
				<div class="col">
					<div class="p-3 border bg-light">최신 영화 순위1</div>
				</div>
				<div class="col">
					<div class="p-3 border bg-light">최신 영화 순위2</div>
				</div>
				<div class="col">
					<div class="p-3 border bg-light">최신 영화 순위3</div>
				</div>
				<div class="col">
					<div class="p-3 border bg-light">최신 영화 순위4</div>
				</div>
				<div class="col">
					<div class="p-3 border bg-light">최신 영화 순위5</div>
				</div>
				<div class="col">
					<div class="p-3 border bg-light">내가 등록한 리뷰 보기(회원정보로연결)</div>
				</div>
			</div>
		</section>
		<section>
			<ul class="nav nav-tabs" id="rowTab">
			    <li class="active"><a href="#reviewtab1" data-toggle="tab">모든 영화</a></li>
			    <li><a href="#reviewtab2" data-toggle="tab">현재 상영작</a></li>
			    <li><a href="#reviewtab3" data-toggle="tab">내가 본 영화</a></li>
			</ul>
			<div class="tab-content">
			    <div class="tab-pane active" id="reviewtab1">
			    	<div>
			    		<h5></h5>
			    		<div>
			    			<span>최신순</span>
			    			<span>공감순</span>
			    		</div>
			    		<div>
			    			<input type="text" placeholder="제목, 장르, 감독, 배우, 아이디">
			    			<button type="button"><i class="fas fa-search fa-fw"></i></button>
			    		</div>
			    	</div>
					<div class="row">
						<c:if test="${list == null}">
							<h1>리뷰 리스트가 존재하지 않습니다.</h1>
						</c:if>
						<c:if test="${list != null }">
							<c:forEach var="i" items="${list }" varStatus="loop">
						   		<!-- 리뷰 1개 영역 START -->
								<div class="col-md-3">
									<div class="card mb-3 shadow-sm rlist">
										<a href="<%=request.getContextPath() %>/review/detail?rid=${i.getId() }"><div class="card-image"><img src="${i.getImgurl() }"></div></a>
										<div class="card-body">
											<a href="<%=request.getContextPath() %>/review/detail?rid=${i.getId() }"><small class="text-muted">${i.getAid() }</small></a>
											<a href="<%=request.getContextPath() %>/review/detail?rid=${i.getId() }"><h5>${i.getTitle() }</h5></a>
											<a href="<%=request.getContextPath() %>/review/detail?rid=${i.getId() }"><p>${i.getContents() }</p></a>
											<div class="d-flex justify-content-between align-items-center">
												<div class="btn-group">
													<button type="button" class="btn btn-sm btn-outline-secondary"><i class="far fa-thumbs-up fa-fw"></i>${i.getGcnt() }</button>
													<button type="button" class="btn btn-sm btn-outline-secondary"><i class="far fa-thumbs-down fa-fw"></i>${i.getBcnt() }</button>
													<button type="button" class="btn btn-sm btn-outline-secondary"><i class="far fa-comment-alt fa-fw"></i>${i.getCommcnt() }</button>
												</div>
												<small class="text-muted">9 mins</small>
											</div>
										</div>
									</div>
								</div>
								<!-- 리뷰 1개 영역 END -->
							</c:forEach>
						</c:if>
					</div>
				</div>
			    <div class="tab-pane" id="reviewtab2">
			        222tab data here...
			    </div>
			    <div class="tab-pane" id="reviewtab3">
			        333tab data here...
			    </div>
			</div>
		</section>
<jsp:include page="review_footer.jsp"></jsp:include>