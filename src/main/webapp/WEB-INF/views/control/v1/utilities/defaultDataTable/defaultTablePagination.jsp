<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="col-md-4">
<button type="button" class="btn btn-outline btn-info table_pag_prev">Prev</button>
<button hidden type="button" class="btn btn-outline btn-default table_pag_first"></button>
<button type="button" class="btn btn-outline btn-success table_pag_current">0</button>
<button hidden type="button" class="btn btn-outline btn-default table_pag_last">0</button>
<button type="button" class="btn btn-outline btn-info table_pag_next">Next</button>
</div>
<div class="col-md-4">
    <button type="button" class="tabl_qu_size btn btn-outline btn-default">10</button>
    <button type="button" class="tabl_qu_size btn btn-outline btn-success">20</button>
    <button type="button" class="tabl_qu_size btn btn-outline btn-default">50</button>
</div>
<div class="col-md-4">
    Elements: <span  class="font_color_lsg table_total_elem">0</span>.
    Pages: <span class="font_color_lsg table_total_pag">0</span>.
    Page: <span class="font_color_lsg table_current_pag">0</span>.
</div>