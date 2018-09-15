<%--
  Created by IntelliJ IDEA.
  User: juse
  Date: 08.11.2017
  Time: 15:29
  Your code is for human first, than for computer only
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/views/control/v1/headerResources.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-green">
                <div class="panel-heading">It works ! but no one knows why</div>
                <div class="panel-body">
                    <h4>
                        <p>Theory is when you know everything but nothing works.
                        <p>Practice is when everything works but no one knows why.
                        <p>Programming is when theory and practice are combined: nothing works and no one knows why</h4>
                    <p><c:choose>
                        <c:when test="${empty user}">
                    You can try to <a href="/login.jsp">Login</a>.
                    </c:when>
                    <c:otherwise>
                        You can try to <a href="/logout">Logout</a>.
                    </c:otherwise>
                    </c:choose></p>
                </div>
                <div class="panel-footer">
                    Yopsel Mopsel Service
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/views/control/v1/footer.jsp"/>