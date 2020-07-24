<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FNT(Feel New Item) : 판매</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

section {
	padding-top: 90px;
	padding-left: 240px;
}
</style>
</head>
<body>
<%@ include file="./form/header.jsp"%>
<%@ include file="./form/aside.jsp"%>
	<section>
		<table border="1">
			<tr>
				<th>글번호</th>
				<th>제  목</th>
				<th>작성자</th>
				<th>가  격</th>
				<th>작성일</th>
			</tr>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td colspan="5" align="center">작성된 글이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list }" var="dealboarddto">
						<tr>
							<td>${dealboarddto.dboardno }</td>
							<td>
								<a href="dealboard.do?command=detailsaleboard&dboardno=${dealboarddto.dboardno}">${dealboarddto.dtitle }</a>
							</td>
							<td>${dealboarddto.dnickname }</td>
							<td><fmt:formatNumber value="${dealboarddto.dprice}" pattern="#,###"/>원</td>
							<td>${dealboarddto.dregdate }</td>
						</tr>
					</c:forEach>
					<%
					
						MemberDto dto = (MemberDto) session.getAttribute("memberdto");
						if(dto != null){
					%>		
					<tr>
						<td colspan="5" align="right">
							<input type="button" value="글작성" onclick="location.href='dealboard.do?command=insertsaleboard'">
						</td>
					</tr>
					<%
						}
					%>
				</c:otherwise>
			</c:choose>
		</table>
	</section>
<%@ include file="./form/footer.jsp" %>
</body>
</html>