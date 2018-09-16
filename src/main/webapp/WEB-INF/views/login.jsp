<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="headerResources.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><spring:message code="label.login.auth"/></h3>
                </div>
                <div class="panel-body">
                    <form role="form" method="POST" action="<c:url value="/login" />">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="<spring:message code="label.login.login" />"
                                       name="j_username" autofocus>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="<spring:message code="label.login.password" />"
                                       name="j_password" type="password" value="">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input name="_spring_security_remember_me" type="checkbox"
                                           value="Remember Me"><spring:message code="label.login.rememberme"/>
                                </label>
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <input class="btn btn-lg btn-success btn-block" type="submit"
                                   value="<spring:message code="label.login.authoorize" />"/>
                        </fieldset>
                    </form>
                </div>
            </div>
            <br>
            <c:if test="${not empty param.error}">
                <div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <spring:message code="label.loginerror"/>
                    : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}.
                </div>
            </c:if>
        </div>
    </div>
</div>


<jsp:include page="footer.jsp"/>