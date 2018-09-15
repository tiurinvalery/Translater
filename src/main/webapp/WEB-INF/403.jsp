<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf8"
		 pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/views/control/v1/headerResources.jsp"/>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-red">
				<div class="panel-heading">
					HTTP Status 403 - Access is denied
				</div>
				<div class="panel-body">
					<p><c:choose>
						<c:when test="${empty username}">
					<h3>You do not have permission to access this page!</h3>
					</c:when>
					<c:otherwise>
						<h3>Username : ${username} <br/>You do not have permission to access this page!</h3>
					</c:otherwise>
					</c:choose></p>
					Please. Try to <a href="/logout">Re-login</a> and try again.
				</div>
				<div class="panel-footer">
					Yopsel Mopsel Service
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/control/v1/footer.jsp"/>