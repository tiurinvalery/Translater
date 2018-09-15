<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Modal -->
<%--Using:--%>
<%--$("#simpleErrorModal_header").text("Error!");--%>
<%--$("#simpleErrorModal_body").text("Error! Cannot save data!");--%>
<%--$("#simpleErrorModal").modal('toggle');--%>
<div class="modal fade" id="simpleErrorModal" role="dialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 id="simpleErrorModal_header" class="modal-title">Modal Header</h4>
            </div>
            <div class="modal-body">
                <p id="simpleErrorModal_body" >This is a small modal.</p>
            </div>
            <div id="simpleErrorModal_footer" class="modal-footer">
                <span style="color: red">Please! Create a screenshot and Contact US !!! <%= new java.util.Date() %></span>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
</div>