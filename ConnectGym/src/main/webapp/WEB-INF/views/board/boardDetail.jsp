<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"
	type="text/javascript"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js">
	
</script>

	<%
		pageContext.setAttribute("crcn", "\r\n");
		pageContext.setAttribute("br", "<br>");
	%>
	
<style>
#boardDetail {
	width: 65%;
	margin: 0 auto;
	margin-top: 80px;
}

a {
	text-decoration: none;
}

#head {
	font-weight: bold;
}
</style>
<script>
	
</script>
<title>게시판</title>
<jsp:include page="../header2.jsp" />

<div class="container-fluid">
	<div id="boardDetail">
		<div class="col-md-12">
			<table class="table table-striped">
				<tr>
					<td id="head" class="col-md-3 text-center">번호</td>
					<td class="col-md-3 text-left">${boardDet.boNo}</td>
					<td id="head" class="col-md-3 text-center">조회수</td>
					<td class="col-md-3 text-left">${boardDet.boHit}</td>
				</tr>
				<tr>
					<td id="head" class="col-md-3 text-center" style="text-align: center;">제목</td>
					<td class="col-md-3 text-left">${boardDet.boTitle}</td>
					<td id="head" class="col-md-3 text-center">작성일</td>
					<td class="col-md-3 text-left"><fmt:formatDate value="${boardDet.boWritedate}" pattern="yyyy-MM-dd hh:mm" /></td>
				</tr>
				<tr>
					<td id="head" style="text-align: center;">내용</td>
					<td colspan="5">
					${fn:replace(boardDet.boContent, crcn, br)}
					</td>
				</tr>
			</table>
			<div align="right">
				<button type="button" class="btn btn-default navbar-btn"
					onclick="history.back()">게시글 목록</button>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../footer.jsp" />

