<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="mainheader row">
	<div class="col-md-2">
	  	<a href="<%=request.getContextPath() %>/movie">영화</a>
	</div>
	<div class="col-md-2">
	  	<a href="<%=request.getContextPath() %>/reserve">영화관</a>
	</div>
	<div class="col-md-4">
		<img src="<%=request.getContextPath() %>/resources/imgs/임시로고.png" alt="SEENEMA 로고" onclick="location.href='<%=request.getContextPath() %>/index';">
	</div>
	<div class="col-md-2">
	    <a href="<%=request.getContextPath() %>/reserve?location=${branchDTO.location }">예매</a>
	</div>
	<div class="col-md-2">
    	<a href="<%=request.getContextPath() %>/review">리뷰</a>
  	</div>
</div>