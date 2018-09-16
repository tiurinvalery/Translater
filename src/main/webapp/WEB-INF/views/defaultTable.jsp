<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<script>
    //ex:
//    var tableIdInHTML = "product_names";
//    var tableListLink = "/api/v1/products_names/table_list/"; // get table list data
//    var deleteLink = "/api/v1/products_names/"; // delete req by id, ex: DELETE: /example/{row.id}/
//    var detailLink = "/control/v1/products_names/"; // open in new a tab for edit, ex: /example/{row.id}/
//    var detailCreate = "/control/v1/products_names/create/"; // open in a new tab for create
//    var columns = [
//        {"data": "id"},
//        {"data": "name"}
//
//    ];
    //    buttons = {
    //    text: 'Создать2',
    //        action: function (e, dt, button, config) {
    //        var url = detailCreate;
    //        $("<a>").attr("href", url).attr("target", "_blank")[0].click();
    //    }
    //    },

//    OR IN MULTIPLE TABLES
//    tableIdInHTML = "companies_shops_products";// do not forget to set this on html <table id="
//    tableListLink = "/api/v1/companies_shops_products/table_list/?filterName=RootName_Id&&filterValue=1"; // get table list data
//    deleteLink = "/api/v1/companies_shops_products/"; // delete req by id, ex: DELETE: /example/{row.id}/
//    detailLink = "/control/v1/companies_shops_products/"; // open in new a tab for edit, ex: /example/{row.id}/
//    detailCreate = "/control/v1/companies_shops_products/create/"; // open in a new tab for create
//    columns = [
//        {"data": "id"},
//        {"data": "name"}
//
//    ];
//    createTable(tableIdInHTML, tableListLink, deleteLink, detailLink, detailCreate, columns);


    <%--<jsp:include page="../defaultTable.jsp"/>--%>

    function destroyTable(tableIdInHTML) {

        $('.table_pag_current').text(0);
        $('.table_pag_last').text(0);
        $('.table_total_elem').text(0);
        $('.table_total_pag').text(0);
        $('.table_current_pag').text(0);
        $('.table_search_input').text("");

        $('#'+tableIdInHTML).DataTable().destroy();
    }

    function createTable(tableIdInHTML, tableListLink, deleteLink, detailLink, detailCreate, columns, buttons2 ) {

        destroyTable(tableIdInHTML);

        var search = "";
        var sort = "";
        var size = 10;
        var page = 0;
        var countOfPages ;
        var countOfAllElements ;
        var currentPage ;// spring has zero-based page index !

        var tableFirstRequestUrl;

        if ( tableListLink.indexOf("?") > 0 )
            tableFirstRequestUrl = tableListLink+"&size="+size+"&page="+0+"&search="+search
        else
            tableFirstRequestUrl = tableListLink+"?&size="+size+"&page="+0+"&search="+search

        var table = $('#'+tableIdInHTML).DataTable({
            "ajax": {
                url: tableFirstRequestUrl
            },
            "fnInitComplete": function () {
                updateTableDOM(table);
            },

            "aoColumns": columns,
            "deferRender": true,
            dom: 'Bfrtip',
            select: true,
            "paging":   false,
            "info":     false,
            "searching": false,
            buttons: [
                'csv',
                'excelHtml5',
                'print',
                'selectAll',
                'selectNone',
                {
                    extend: 'selected',
                    text: 'Удалить',
                    action: function (e, dt, button, config) {

                        var selectedRows = table.rows('.selected').data().toArray();
                        selectedRows.forEach(deleteUserUsingAPI);

//                        console.log(selectedRows);

                        function deleteUserUsingAPI(row, index) {
                            $.ajax({
                                url: deleteLink + row.id + "/",
                                type: 'DELETE',
                                success: function (result) {
                                    console.log(result);
                                    reloadTable(table);
                                },
                                error: function (result) {
                                    // modal form
                                    $("#simpleErrorModal_header").text("Error!");
                                    $("#simpleErrorModal_body").html('Error! Cannot delete Entity! <br> Entity id: '
                                        +row.id+'. <br>URL: ' + deleteLink + row.id + '/' +
                                    '<br>May be this entity depends on other entity.');
                                    $("#simpleErrorModal").modal('toggle');
                                    // code of the modal form is situated in footer.jsp
                                }
                            });
                        }
                    }
                },
                {
                    extend: 'selectedSingle',
                    text: 'Изменить',
                    action: function (e, dt, button, config) {

                        var selectedRows = table.rows('.selected').data().toArray();
                        selectedRows.forEach(showDetailPage);

//                        console.log(selectedRows);

                        function showDetailPage(row, index) {
                            var url = detailLink + row.id + "/";
                            window.location.href = url;
//                            $("<a>").attr("href", url).attr("target", "_blank")[0].click(); // open in new tab
                        }
                    }
                },
                {
                    text: 'Создать',
                    action: function (e, dt, button, config) {
                        var url = detailCreate;
                        $("<a>").attr("href", url).attr("target", "_blank")[0].click();
                    }
                },
                buttons2
            ],
            language: {
                buttons: {
                    selectAll: "Выбрать все",
                    selectNone: "Убрать выделения"
                },
                "emptyTable": "<spring:message code="label.datatable.empty"/>"
            }

        });

        //table colum sort action
        $("thead th").click(function() {
            //finding sort data
            var sortColId = $('#'+tableIdInHTML).dataTable().fnSettings().aaSorting[0][0];
            var sortColName = Object.values(columns)[sortColId].data;
            var sortColOrder = $('#'+tableIdInHTML).dataTable().fnSettings().aaSorting[0][1];
            sort = "&sortColName="+sortColName + "&sortColOrder=" + sortColOrder;

            reloadTable(table);
        } );

        // function then creates query string and reload dataTable
        function reloadTable(table) {

            var requestUrl;

            if ( tableListLink.indexOf("?") > 0 )
                requestUrl = tableListLink+"&&size="+size+"&page="+page+"&search="+search+sort;
            else
                requestUrl = tableListLink+"?&size="+size+"&page="+page+"&search="+search+sort;


            table.ajax.url( requestUrl ).load(function () {
                updateTableDOM(table); // and it call function that update DOM of Table
            });

        }

        // Update table DOM - ( search, pagination, sort )
        function updateTableDOM(table) {
            var resp;

            resp = table.ajax.json();

            countOfPages = resp.countOfPages;
            countOfAllElements = resp.countOfAllElements;
            currentPage = resp.currentPageNumber;

            //set search indicator to loaded
            $('.table_search_ind').removeClass("btn-default");
            $('.table_search_ind').addClass("btn-success");

            //pagination prev 1 .. max next
            $(".table_total_elem").text(countOfAllElements);
            $(".table_total_pag").text(countOfPages);
            $(".table_current_pag").text((page+1));// spring has zero-based page index !

            if ( page == 0 ){
                $(".table_pag_first").text(".")
            }else {
                $(".table_pag_first").text("1")
            }

            $(".table_pag_current").text(page+1);// spring has zero-based page index !

            if( page+1 == countOfPages ){
                $(".table_pag_last").hide();
            }else {
                $(".table_pag_last").show();
                $(".table_pag_last").text(countOfPages);
            }

            //pagination query ( table ) size - ex: 10 20 50
            $(".tabl_qu_size").removeClass("btn-default btn-success");

            $(".tabl_qu_size").each(function( index ) {
                var text = $( this ).text();
                if (text == size)
                    $( this ).addClass("btn-success");
                else
                    $( this ).addClass("btn-default");

            });

        }

        //pagination prev
        $(".table_pag_prev").click(function() {
            if (page-1 >= 0){// spring has zero-based page index !
                page--;
                reloadTable(table);
            }
        });

        //pagination next
        $(".table_pag_next").click(function() {
            if (page+1 < countOfPages ){// spring has zero-based page index !
                page++;
                reloadTable(table);
            }
        });

        //pagination click on first
        $(".table_pag_first").click(function() {
            page = 0;
            reloadTable(table);
        });

        //pagination click on last
        $(".table_pag_last").click(function() {
            page = countOfPages-1;// spring has zero-based page index !
            reloadTable(table);
        });

        //pagination click on query ( table ) size. ex: 10 20 50
        $(".tabl_qu_size").click(function() {
            resetToDefaultParams();
            size = $( this ).text();
            reloadTable(table);
        });
        //simple search action
        $('.table_search_input').on('input',function(e){

            search = $('.table_search_input').val();

            //set indicator
            //set search indicator to loaded
            $('.table_search_ind').removeClass("btn-success");
            $('.table_search_ind').addClass("btn-default");

            resetToDefaultParams();

            reloadTable(table);
        });

        function resetToDefaultParams() {
            page = 0;
            countOfPages = 0;
            ountOfAllElements = 0;
            currentPage =0 ;
        }
    }

    $(document).ready(function () {
        if (typeof buttons !== 'undefined' ){
            createTable(tableIdInHTML, tableListLink, deleteLink, detailLink, detailCreate, columns, buttons);
        }else {
            createTable(tableIdInHTML, tableListLink, deleteLink, detailLink, detailCreate, columns);

        }
    });


</script>