<%--
  Created by IntelliJ IDEA.
  User: juse
  Date: 27.10.2017
  Time: 11:23
  Your code is for human first, than for computer only
--%>
<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/control/v1/dash">Yopsel Mopsel Service[0.1v]</a>
    </div>
    <!-- /.navbar-header -->
    <ul class="nav navbar-top-links navbar-right">
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-messages">
                <li>
                    <a href="#">
                        <div>
                            <strong>John Smith</strong>
                            <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                        </div>
                        <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <strong>John Smith</strong>
                            <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                        </div>
                        <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <strong>John Smith</strong>
                            <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                        </div>
                        <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a class="text-center" href="#">
                        <strong>Read All Messages</strong>
                        <i class="fa fa-angle-right"></i>
                    </a>
                </li>
            </ul>
            <!-- /.dropdown-messages -->
        </li>
        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-tasks">
                <li>
                    <a href="#">
                        <div>
                            <p>
                                <strong>Task 1</strong>
                                <span class="pull-right text-muted">40% Complete</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span class="sr-only">40% Complete (success)</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <p>
                                <strong>Task 2</strong>
                                <span class="pull-right text-muted">20% Complete</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                    <span class="sr-only">20% Complete</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <p>
                                <strong>Task 3</strong>
                                <span class="pull-right text-muted">60% Complete</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                    <span class="sr-only">60% Complete (warning)</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <p>
                                <strong>Task 4</strong>
                                <span class="pull-right text-muted">80% Complete</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                    <span class="sr-only">80% Complete (danger)</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a class="text-center" href="#">
                        <strong>See All Tasks</strong>
                        <i class="fa fa-angle-right"></i>
                    </a>
                </li>
            </ul>
            <!-- /.dropdown-tasks -->
        </li>
        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-alerts">
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-comment fa-fw"></i> New Comment
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                            <span class="pull-right text-muted small">12 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-envelope fa-fw"></i> Message Sent
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-tasks fa-fw"></i> New Task
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-upload fa-fw"></i> Server Rebooted
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a class="text-center" href="#">
                        <strong>See All Alerts</strong>
                        <i class="fa fa-angle-right"></i>
                    </a>
                </li>
            </ul>
            <!-- /.dropdown-alerts -->
        </li>
        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="/control/v1/users/edit/${user.username}"><i class="fa fa-user fa-fw"></i> User Profile</a>
                </li>
                <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                </li>
                <li class="divider"></li>
                <li><a href="/logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
    <!-- /.navbar-top-links -->

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li class="sidebar-search">
                    <div class="input-group custom-search-form">
                        <input type="text" class="form-control" placeholder="Search...">
                        <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                    </div>
                    <!-- /input-group -->
                </li>
                <li>
                    <a href="/control/v1/dash"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                </li>
                <sec:authorize access="hasRole('ROLE_ADMIN')">

                    <li>
                        <a href="#"><i class="fa fa-wrench fa-fw"></i><spring:message code="label.moderatorTools"/><span
                                class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#"><spring:message code="label.navi_companies"/><span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="/control/v1/moderator/companies/"><spring:message
                                                code="label.companiesList"/></a>
                                    </li>

                                    <li>
                                        <a href="/control/v1/moderator/companies_shops/"><spring:message
                                                code="label.companiesShops"/> </a>
                                    </li>
                                    <li>
                                        <a href="/control/v1/moderator/companies_shops_products/"><spring:message
                                                code="label.companiesShopsProducts"/> </a>
                                    </li>
                                    <li>
                                        <a href="/control/v1/moderator/categories/"><spring:message
                                                code="label.categories"></spring:message> </a>
                                    </li>
                                </ul>
                                <!-- /.nav-third-level -->
                            </li>

                            <li>
                                <a href="#"><spring:message code="label.navi_concurrent_companies"/><span
                                        class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="/control/v1/moderator/concurent_companies_shops/"> <spring:message
                                                code="label.concurentCompaniesShops"/></a>
                                    </li>
                                    <li>
                                        <a href="/control/v1/moderator/concurent_companies_shops_products/"><spring:message
                                                code="label.concurentCompaniesShopsProducts"/> </a>
                                    </li>
                                </ul>
                                <!-- /.nav-third-level -->
                            </li>

                            <li>
                                <a href="#"><spring:message code="label.navi_users"/><span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="/control/v1/moderator/users/"><spring:message
                                                code="label.userList"/></a>
                                    </li>
                                </ul>
                                <!-- /.nav-third-level -->
                            </li>

                            <li>
                                <a href="#"><spring:message code="label.navi_root_names"/><span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="/control/v1/moderator/products_names/"><spring:message
                                                code="label.ProductRootNameList"/></a>
                                    </li>
                                </ul>
                                <!-- /.nav-third-level -->
                            </li>


                        </ul>
                    </li>

                </sec:authorize>
                <sec:authorize access="hasRole('ROLE_USER')">
                    <li>
                        <a href="#"><i class="fa fa-wrench fa-fw"></i><spring:message code="label.userTools"/><span
                                class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#"><spring:message code="label.navi_companies"/><span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="/control/v1/user/shops/"><spring:message
                                                code="label.your_shops"/></a>
                                    </li>
                                </ul>
                                <!-- /.nav-third-level -->
                            </li>
                        </ul>
                    </li>
                </sec:authorize>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <li>
                        <a href="#"><i class="fa fa-wrench fa-fw"></i><spring:message code="label.userTools"/><span
                                class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#"><spring:message code="label.navi_companies"/><span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="/control/v1/user/shop_select/"><spring:message
                                                code="label.companiesList"/></a>
                                    </li>
                                </ul>
                                <!-- /.nav-third-level -->
                            </li>
                        </ul>
                    </li>
                </sec:authorize>

                <%--<sec:authorize access="hasRole('ROLE_USER')">--%>
                <%--<li>--%>
                <%--<a href="/control/v1/user_products/"><i class="fa fa-companyShopProduct-hunt fa-fw"></i> My--%>
                <%--Products</a>--%>
                <%--</li>--%>
                <%--</sec:authorize>--%>


                <%--<li>--%>
                <%--<a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>--%>
                <%--<ul class="nav nav-second-level">--%>
                <%--<li>--%>
                <%--<a href="flot.html">Flot Charts</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="morris.html">Morris.js Charts</a>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--<!-- /.nav-second-level -->--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="tables.html"><i class="fa fa-table fa-fw"></i> Tables</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="forms.html"><i class="fa fa-edit fa-fw"></i> Forms</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a>--%>
                <%--<ul class="nav nav-second-level">--%>
                <%--<li>--%>
                <%--<a href="panels-wells.html">Panels and Wells</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="buttons.html">Buttons</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="notifications.html">Notifications</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="typography.html">Typography</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="icons.html"> Icons</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="grid.html">Grid</a>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--<!-- /.nav-second-level -->--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>--%>
                <%--<ul class="nav nav-second-level">--%>
                <%--<li>--%>
                <%--<a href="#">Second Level Item</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="#">Second Level Item</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="#">Third Level <span class="fa arrow"></span></a>--%>
                <%--<ul class="nav nav-third-level">--%>
                <%--<li>--%>
                <%--<a href="#">Third Level Item</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="#">Third Level Item</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="#">Third Level Item</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="#">Third Level Item</a>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--<!-- /.nav-third-level -->--%>
                <%--</li>--%>
                <%--</ul>--%>
                <!-- /.nav-second-level -->
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>--%>
                <%--<ul class="nav nav-second-level">--%>
                <%--<li>--%>
                <%--<a href="blank.html">Blank Page</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="login.html">Login Page</a>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--<!-- /.nav-second-level -->--%>
                <%--</li>--%>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>