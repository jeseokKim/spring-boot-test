<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="tilesx" uri="http://tiles.apache.org/tags-tiles-extras"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<tiles:insertAttribute name="header"/>
<body>
        <!-- start: Header -->
    <header class="navbar">
        <div class="container">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".sidebar-nav.nav-collapse">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
            </button>
            <a id="main-menu-toggle" class="hidden-xs open"><i class="fa fa-bars"></i></a>
                <a class="navbar-brand col-lg-2 col-sm-1 col-xs-12" href="index.html"><span>GS EPS</span></a>
            <!-- start: Header Menu -->
            <div class="nav-no-collapse header-nav">
                <ul class="nav navbar-nav pull-right">
                    <!-- start: User Dropdown -->
                    <li class="dropdown">
                        <a class="btn account dropdown-toggle" data-toggle="dropdown" href="table.html#">
                            <div class="user">
                                <span class="hello">Welcome!</span>
                                <span class="name">Łukasz Holeczek</span>
                            </div>
                        </a>
                    </li>
                    <!-- end: User Dropdown -->
                </ul>
            </div>
            <!-- end: Header Menu -->

        </div>
    </header>
    <!-- end: Header -->


    <tilesx:useAttribute name="main_menu" />
    <c:set var="mainMenu" value="${main_menu}" scope="session"/>
    <tilesx:useAttribute name="sub_menu" />
    <c:set var="subMenu" value="${sub_menu}" scope="session"/>

    <div class="container">
        <div class="row">
            <tiles:insertAttribute name="leftMenu"/>
            <!-- start: Title -->
            <div id="page-title" class="col-md-10 col-xs-12">
                <h2 style="padding:15px; margin:0px;"><b id="page-title-desc">Home / Alba</b></h2>
            </div>
            <!-- end: Title -->

             <!-- start: Content -->
             <div id="content" class="col-md-10 col-xs-12">
                 <tiles:insertAttribute name="content"/>
             </div>
             <!-- end: Content -->
        </div>
    </div>
    <div class="clearfix"></div>

    <footer>

        <div class="row">

            <div class="col-sm-5">
                &copy; 2014 creativeLabs. <a href="http://bootstrapmaster.com">Admin Templates</a> by BootstrapMaster
            </div><!--/.col-->

            <div class="col-sm-7 text-right">
                Powered by: <a href="http://bootstrapmaster.com/demo/simpliq/" alt="Bootstrap Admin Templates">SimpliQ Dashboard</a> | Based on Bootstrap 3.1.1 | Built with brix.io <a href="http://brix.io" alt="Brix.io - Interface Builder">Interface Builder</a>
            </div><!--/.col-->

        </div><!--/.row-->

    </footer>
    <tiles:insertAttribute name="footer"/>
</body>
</html>