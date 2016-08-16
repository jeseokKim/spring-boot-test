<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <!-- start: Main Menu -->
    <div id="sidebar-left" class="col-lg-2 col-sm-1">
        <div class="nav-collapse sidebar-nav collapse navbar-collapse bs-navbar-collapse">
            <ul class="nav nav-tabs nav-stacked main-menu">
                <li <c:if test="${'sample' eq mainMenu and 'home' eq subMenu}"> class="active"</c:if>><a href="/sample/home"><i class="fa fa-bar-chart-o"></i><span class="hidden-sm"> Dashboard</span></a></li>
                <li>
                    <a class="dropmenu" href="table.html#">
                        <i class="fa fa-star"></i>
                        <span class="hidden-sm">Sample</span>
                        <span class="label">
                            <c:if test="${'flot' eq subMenu or 'table' eq subMenu or 'excel' eq subMenu}"><i class="fa fa-minus"></i></c:if>
                            <c:if test="${'flot' ne subMenu and 'table' ne subMenu and 'excel' ne subMenu}"><i class="fa fa-plus"></i></c:if>
                        </span>
                    </a>
                    <ul>
                        <li <c:if test="${'flot' eq subMenu}"> class="active"</c:if>><a class="submenu" href="/sample/flot"><i class="fa fa-star"></i><span class="hidden-sm">그래프</span></a></li>
                        <li <c:if test="${'table' eq subMenu}"> class="active"</c:if>><a class="submenu" href="/sample/table"><i class="fa fa-star"></i><span class="hidden-sm">테이블</span></a></li>
                        <li <c:if test="${'excel' eq subMenu}"> class="active"</c:if>><a class="submenu" href="/sample/excel"><i class="fa fa-star"></i><span class="hidden-sm">엑셀</span></a></li>
                        <li <c:if test="${'gage' eq subMenu}"> class="active"</c:if>><a class="submenu" href="/sample/gage"><i class="fa fa-star"></i><span class="hidden-sm">게이지</span></a></li>
                    </ul>
                </li>
                <li><a href="../login"><i class="fa fa-lock"></i><span class="hidden-sm"> Login Page</span></a></li>
            </ul>
        </div>
    </div>