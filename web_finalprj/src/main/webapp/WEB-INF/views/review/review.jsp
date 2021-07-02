<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="review_header.jsp"></jsp:include>
		<div><h1>무비포스트</h1><a href="<%=request.getContextPath() %>/review/add">무비포스트 작성</a></div>
		<section>
			<div class="row row-cols-lg-6">
				<div class="col">
					<div class="p-3 border bg-light">Row column</div>
				</div>
				<div class="col">
					<div class="p-3 border bg-light">Row column</div>
				</div>
				<div class="col">
					<div class="p-3 border bg-light">Row column</div>
				</div>
				<div class="col">
					<div class="p-3 border bg-light">Row column</div>
				</div>
				<div class="col">
					<div class="p-3 border bg-light">Row column</div>
				</div>
				<div class="col">
					<div class="p-3 border bg-light">Row column</div>
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
			    		<!-- 리뷰 1개 영역 START -->
						<div class="col-md-3">
							<div class="card mb-3 shadow-sm">
								<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
								<div class="card-body">
									<small class="text-muted">sample**</small>
									<h5>영화제목</h5>
									<p>영화가 아주 재미있다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button" class="btn btn-sm btn-outline-secondary"><i class="far fa-thumbs-up fa-fw"></i></button>
											<button type="button" class="btn btn-sm btn-outline-secondary"><i class="far fa-thumbs-down fa-fw"></i></button>
											<button type="button" class="btn btn-sm btn-outline-secondary"><i class="far fa-comment-alt fa-fw"></i></button>
										</div>
										<small class="text-muted">9 mins</small>
									</div>
								</div>
							</div>
						</div>
						<!-- 리뷰 1개 영역 END -->
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