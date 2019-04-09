<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="Vinh" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>PRJ321 - Presentation</title>

        <meta name="description" content="ProUI is a Responsive Bootstrap Admin Template created by pixelcave and published on Themeforest.">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0">

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="img/favicon.png">
        <link rel="apple-touch-icon" href="img/icon57.png" sizes="57x57">
        <link rel="apple-touch-icon" href="img/icon72.png" sizes="72x72">
        <link rel="apple-touch-icon" href="img/icon76.png" sizes="76x76">
        <link rel="apple-touch-icon" href="img/icon114.png" sizes="114x114">
        <link rel="apple-touch-icon" href="img/icon120.png" sizes="120x120">
        <link rel="apple-touch-icon" href="img/icon144.png" sizes="144x144">
        <link rel="apple-touch-icon" href="img/icon152.png" sizes="152x152">
        <link rel="apple-touch-icon" href="img/icon180.png" sizes="180x180">
        <!-- END Icons -->

        <!-- Stylesheets -->
        <!-- Bootstrap is included in its original form, unaltered -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Related styles of various icon packs and plugins -->
        <link rel="stylesheet" href="css/plugins.css">

        <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
        <link rel="stylesheet" href="css/main.css">

        <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

        <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
        <link rel="stylesheet" href="css/themes.css">
        <!-- END Stylesheets -->

        <!-- Modernizr (browser feature detection library) -->
        <script src="js/vendor/modernizr.min.js"></script>
    </head>
    <body>
        <Vinh:if test="${sessionScope.USERNAME != null}">
            <!-- Page Wrapper -->
            <!-- In the PHP version you can set the following options from inc/config file -->
            <!--
                Available classes:
    
                'page-loading'      enables page preloader
            -->
            <div id="page-wrapper">
                <!-- Preloader -->
                <!-- Preloader functionality (initialized in js/app.js) - pageLoading() -->
                <!-- Used only if page preloader is enabled from inc/config (PHP version) or the class 'page-loading' is added in #page-wrapper element (HTML version) -->
                <div class="preloader themed-background">
                    <h1 class="push-top-bottom text-light text-center"><strong>PRJ</strong>321</h1>
                </div>
                <!-- END Preloader -->

                <!-- Page Container -->
                <!-- In the PHP version you can set the following options from inc/config file -->
                <!--
                    Available #page-container classes:
    
                    '' (None)                                       for a full main and alternative sidebar hidden by default (> 991px)
    
                    'sidebar-visible-lg'                            for a full main sidebar visible by default (> 991px)
                    'sidebar-partial'                               for a partial main sidebar which opens on mouse hover, hidden by default (> 991px)
                    'sidebar-partial sidebar-visible-lg'            for a partial main sidebar which opens on mouse hover, visible by default (> 991px)
                    'sidebar-mini sidebar-visible-lg-mini'          for a mini main sidebar with a flyout menu, enabled by default (> 991px + Best with static layout)
                    'sidebar-mini sidebar-visible-lg'               for a mini main sidebar with a flyout menu, disabled by default (> 991px + Best with static layout)
    
                    'sidebar-alt-visible-lg'                        for a full alternative sidebar visible by default (> 991px)
                    'sidebar-alt-partial'                           for a partial alternative sidebar which opens on mouse hover, hidden by default (> 991px)
                    'sidebar-alt-partial sidebar-alt-visible-lg'    for a partial alternative sidebar which opens on mouse hover, visible by default (> 991px)
    
                    'sidebar-partial sidebar-alt-partial'           for both sidebars partial which open on mouse hover, hidden by default (> 991px)
    
                    'sidebar-no-animations'                         add this as extra for disabling sidebar animations on large screens (> 991px) - Better performance with heavy pages!
    
                    'style-alt'                                     for an alternative main style (without it: the default style)
                    'footer-fixed'                                  for a fixed footer (without it: a static footer)
    
                    'disable-menu-autoscroll'                       add this to disable the main menu auto scrolling when opening a submenu
    
                    'header-fixed-top'                              has to be added only if the class 'navbar-fixed-top' was added on header.navbar
                    'header-fixed-bottom'                           has to be added only if the class 'navbar-fixed-bottom' was added on header.navbar
    
                    'enable-cookies'                                enables cookies for remembering active color theme when changed from the sidebar links
                -->
                <div id="page-container" class="sidebar-partial sidebar-visible-lg sidebar-no-animations">
                    <!-- Main Sidebar -->
                    <div id="sidebar">
                        <!-- Wrapper for scrolling functionality -->
                        <div id="sidebar-scroll">
                            <!-- Sidebar Content -->
                            <div class="sidebar-content">
                                <!-- Brand -->
                                <a href="LoadEventController" class="sidebar-brand">
                                    <i class="gi gi-flash"></i><span class="sidebar-nav-mini-hide"><strong>PRJ</strong>321</span>
                                </a>
                                <!-- END Brand -->

                                <!-- User Info -->
                                <div class="sidebar-section sidebar-user clearfix sidebar-nav-mini-hide">
                                    <div class="sidebar-user-avatar">
                                        <a href="MainController?btnAction=EditUser">
                                            <Vinh:if test="${sessionScope.USERIMG == null}">
                                                <img src="img/placeholders/avatars/avatar2.jpg" alt="avatar">
                                            </Vinh:if>
                                            <Vinh:if test="${sessionScope.USERIMG !=null}">
                                                <img src="${sessionScope.USERIMG}" alt="avatar" width="80" height="80" class="widget-image img-circle"/>
                                            </Vinh:if>
                                        </a>
                                    </div>
                                    <div class="sidebar-user-name">${sessionScope.USERNAME}</div>
                                    <div class="sidebar-user-links">
                                        <a href="MainController?btnAction=EditUser" data-toggle="tooltip" data-placement="bottom" title="Profile"><i class="gi gi-user"></i></a>
                                        <!-- Opens the user settings modal that can be found at the bottom of each page (page_footer.html in PHP version) -->
                                        <a href="MainController?btnAction=LogOut" data-toggle="tooltip" data-placement="bottom" title="Logout"><i class="gi gi-exit"></i></a>
                                    </div>
                                </div>
                                <!-- END User Info -->

                                <!-- Theme Colors -->
                                <!-- Change Color Theme functionality can be found in js/app.js - templateOptions() -->
                                <ul class="sidebar-section sidebar-themes clearfix sidebar-nav-mini-hide">
                                    <!-- You can also add the default color theme
                                    <li class="active">
                                        <a href="javascript:void(0)" class="themed-background-dark-default themed-border-default" data-theme="default" data-toggle="tooltip" title="Default Blue"></a>
                                    </li>
                                    -->
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-night themed-border-night" data-theme="css/themes/night.css" data-toggle="tooltip" title="Night"></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-amethyst themed-border-amethyst" data-theme="css/themes/amethyst.css" data-toggle="tooltip" title="Amethyst"></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-modern themed-border-modern" data-theme="css/themes/modern.css" data-toggle="tooltip" title="Modern"></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-autumn themed-border-autumn" data-theme="css/themes/autumn.css" data-toggle="tooltip" title="Autumn"></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-flatie themed-border-flatie" data-theme="css/themes/flatie.css" data-toggle="tooltip" title="Flatie"></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-spring themed-border-spring" data-theme="css/themes/spring.css" data-toggle="tooltip" title="Spring"></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-fancy themed-border-fancy" data-theme="css/themes/fancy.css" data-toggle="tooltip" title="Fancy"></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-fire themed-border-fire" data-theme="css/themes/fire.css" data-toggle="tooltip" title="Fire"></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-coral themed-border-coral" data-theme="css/themes/coral.css" data-toggle="tooltip" title="Coral"></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-lake themed-border-lake" data-theme="css/themes/lake.css" data-toggle="tooltip" title="Lake"></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-forest themed-border-forest" data-theme="css/themes/forest.css" data-toggle="tooltip" title="Forest"></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-waterlily themed-border-waterlily" data-theme="css/themes/waterlily.css" data-toggle="tooltip" title="Waterlily"></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-emerald themed-border-emerald" data-theme="css/themes/emerald.css" data-toggle="tooltip" title="Emerald"></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-dark-blackberry themed-border-blackberry" data-theme="css/themes/blackberry.css" data-toggle="tooltip" title="Blackberry"></a>
                                    </li>
                                </ul>
                                <!-- END Theme Colors -->

                                <!-- Sidebar Navigation -->
                                <ul class="sidebar-nav">
                                    <li>
                                        <a href="LoadEventController" class=" active"><i class="gi gi-stopwatch sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Dashboard</span></a>
                                    </li>

                                    <Vinh:if test="${sessionScope.USERNAME == 'vinh'}">
                                        <li>
                                            <a href="#" class="sidebar-nav-menu"><i class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="gi gi-notes_2 sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Create New</span></a>
                                            <ul>
                                                <li>
                                                    <a href="eventcreate.jsp">Event</a>
                                                </li>
                                                <li>
                                                    <a href="prizecreate.jsp">Prize</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#" class="sidebar-nav-menu"><i class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="gi gi-table sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Tables</span></a>
                                            <ul>
                                                <li>
                                                    <a href="SearchController">Event</a>
                                                </li>
                                                <li>
                                                    <a href="AwardController">Award</a>
                                                </li>
                                                <li>
                                                    <a href="UserController">User</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </Vinh:if>
                                </ul>
                                <!-- END Sidebar Notifications -->
                            </div>
                            <!-- END Sidebar Content -->
                        </div>
                        <!-- END Wrapper for scrolling functionality -->
                    </div>
                    <!-- END Main Sidebar -->

                    <!-- Main Container -->
                    <div id="main-container">
                        <!-- Header -->
                        <!-- In the PHP version you can set the following options from inc/config file -->
                        <!--
                            Available header.navbar classes:
    
                            'navbar-default'            for the default light header
                            'navbar-inverse'            for an alternative dark header
    
                            'navbar-fixed-top'          for a top fixed header (fixed sidebars with scroll will be auto initialized, functionality can be found in js/app.js - handleSidebar())
                                'header-fixed-top'      has to be added on #page-container only if the class 'navbar-fixed-top' was added
    
                            'navbar-fixed-bottom'       for a bottom fixed header (fixed sidebars with scroll will be auto initialized, functionality can be found in js/app.js - handleSidebar()))
                                'header-fixed-bottom'   has to be added on #page-container only if the class 'navbar-fixed-bottom' was added
                        -->
                        <header class="navbar navbar-default">
                            <!-- Left Header Navigation -->
                            <ul class="nav navbar-nav-custom">
                                <!-- Main Sidebar Toggle Button -->
                                <li>
                                    <a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar');this.blur();">
                                        <i class="fa fa-bars fa-fw"></i>
                                    </a>
                                </li>
                                <!-- END Main Sidebar Toggle Button -->

                                <!-- Template Options -->
                                <!-- Change Options functionality can be found in js/app.js - templateOptions() -->
                                <!-- END Template Options -->
                            </ul>
                            <!-- END Left Header Navigation -->
                            <!-- Right Header Navigation -->
                            <ul class="nav navbar-nav-custom pull-right">
                                <!-- User Dropdown -->
                                <li class="dropdown">
                                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
                                        <Vinh:if test="${sessionScope.USERIMG == null}">
                                            <img src="img/placeholders/avatars/avatar2.jpg" alt="avatar"><i class="fa fa-angle-down"></i>
                                        </Vinh:if>
                                        <Vinh:if test="${sessionScope.USERIMG !=null}">
                                            <img src="${sessionScope.USERIMG}" alt="avatar" width="30" height="30" class="widget-image img-circle"/><i class="fa fa-angle-down"></i>
                                        </Vinh:if>
                                    </a>
                                    <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                                        <li class="dropdown-header text-center">Account</li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="MainController?btnAction=EditUser">
                                                <i class="fa fa-user fa-fw pull-right"></i>
                                                Profile
                                            </a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="MainController?btnAction=LogOut"><i class="fa fa-ban fa-fw pull-right"></i> Logout</a>
                                        </li>
                                    </ul>
                                </li>
                                <!-- END User Dropdown -->
                            </ul>
                            <!-- END Right Header Navigation -->
                        </header>
                        <!-- END Header -->

                        <!-- Page content -->
                        <div id="page-content">
                            <!-- Wizard Header -->
                            <div class="content-header">
                                <div class="header-section">
                                    <h1>
                                        <i class="fa fa-magic"></i>Something<br><small>About You!</small>
                                    </h1> 
                                </div>
                            </div>
                            <!-- END Wizard Header -->
                            <!-- Wizards Row -->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="block">
                                        <div class="block-title">
                                            <h2><strong>Your</strong> Avatar</h2>
                                        </div>
                                        <form action="ChangeAvatarController" method="post" enctype="multipart/form-data">
                                            <Vinh:if test="${sessionScope.USERIMG == null}">
                                                <label for="file-input">
                                                    <img src="img/placeholders/avatars/avatar2.jpg" alt="avatar" id="val_img" width="80" height="80" class="widget-image img-circle">
                                                </label>
                                            </Vinh:if>
                                            <Vinh:if test="${sessionScope.USERIMG !=null}">
                                                <label for="file-input">
                                                    <img src="${sessionScope.USERIMG}" alt="avatar" id="val_img" width="80" height="80" class="widget-image img-circle">
                                                </label>
                                            </Vinh:if>
                                            <input id="file-input" type="file" name="upload" class="form-control" accept="image/*" enctype="multipart/form-data" style="display:none;"/>
                                            <input type="hidden" name="checkYN" value="No" id="checkYN"/>
                                            <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-arrow-right"></i>Save</button>
                                        </form>  
                                    </div>

                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="block">
                                        <div class="block-title">
                                            <h2><strong>Your</strong> All Team</h2>
                                        </div>
                                        <Vinh:if test="${empty requestScope.listTeam}">
                                            <div class="widget">
                                                <div class="widget-simple">
                                                    <h4 class="widget-content">
                                                        <a href="LoadEventController"><strong>Quickly to get new team!!!</strong></a>
                                                    </h4>
                                                </div>
                                            </div>
                                        </Vinh:if>
                                        <Vinh:if test="${not empty requestScope.listTeam}">
                                            <Vinh:forEach items="${requestScope.listTeam}" var="dto">
                                                <div class="widget-simple col-xs-2">
                                                    <img src="img/placeholders/avatars/avatar12.jpg" alt="avatar" class="widget-image img-circle pull-left">
                                                    <h4 class="widget-content">
                                                        <strong>${dto.name}</strong>
                                                    </h4>
                                                </div>
                                            </Vinh:forEach>
                                        </Vinh:if>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="block">
                                        <div class="block-title">
                                            <h2><strong>Your</strong> All Event Join</h2>
                                        </div>
                                        <Vinh:if test="${empty requestScope.INFOE}">
                                            <div class="widget">
                                                <div class="widget-simple">
                                                    <h4 class="widget-content">
                                                        <a href="LoadEventController"><strong>Quickly to join a lost of event!!!</strong></a>
                                                    </h4>
                                                </div>
                                            </div>
                                        </Vinh:if>
                                        <Vinh:if test="${not empty requestScope.INFOE}">
                                            <Vinh:forEach items="${requestScope.INFOE}" var="info">
                                                <div class="widget-simple col-xs-2">
                                                    <img src="${info.img}" alt="avatar" class="widget-image img-circle pull-left" width="50" height="50">
                                                    <h4 class="widget-content">
                                                        <strong>${info.eventName}</strong>
                                                    </h4>
                                                </div>
                                            </Vinh:forEach>
                                        </Vinh:if>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="block">
                                        <div class="block-title">
                                            <h2><strong>Your</strong> All Prize You got</h2>
                                        </div>
                                        <Vinh:if test="${empty requestScope.listPrize}">
                                            <div class="widget">
                                                <div class="widget-simple">
                                                    <h4 class="widget-content">
                                                        <a href="LoadEventController"><strong>Quickly to get a big prize!!!</strong></a>
                                                    </h4>
                                                </div>
                                            </div>
                                        </Vinh:if>
                                        <Vinh:if test="${not empty requestScope.listPrize}">
                                            <Vinh:forEach items="${requestScope.listPrize}" var="prize">
                                                <div class="col-xs-2 pie-chart block-section easyPieChart" data-percent="100" data-size="130" style="width: 130px; height: 130px; line-height: 130px;">
                                                    <span>${prize.prizeName}</span>
                                                    <canvas width="162" height="162" style="width: 130px; height: 130px;"></canvas>
                                                </div>
                                            </Vinh:forEach>
                                        </Vinh:if>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <!-- Wizard with Validation Block -->
                                    <div class="block">
                                        <!-- Wizard with Validation Title -->
                                        <div class="block-title">
                                            <h2><strong>Your</strong> Profile</h2>
                                            <h2><font color="red">${requestScope.VALID}</font></h2>
                                        </div>
                                        <!-- END Wizard with Validation Title -->

                                        <!-- Wizard with Validation Content -->
                                        <form id="advanced-wizard" action="MainController" method="post" class="form-horizontal form-bordered">
                                            <!-- First Step -->
                                            <div id="advanced-first" class="step">
                                                <!-- Step Info -->
                                                <div class="wizard-steps">
                                                    <div class="row">
                                                        <div class="col-xs-6 active">
                                                            <span>1. Account</span>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <span>2. Info</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- END Step Info -->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="val_username">Username <span class="text-danger">*</span></label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input type="text" id="val_username" name="val_username" class="form-control" placeholder="Your username.." value="${requestScope.INFO.username}" readonly="">
                                                            <span class="input-group-addon"><i class="gi gi-user"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="val_email">Email <span class="text-danger">*</span></label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input type="text" id="val_email" name="val_email" class="form-control" placeholder="test@example.com" required value="${requestScope.INFO.email}">
                                                            <span class="input-group-addon"><i class="gi gi-envelope"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="val_password">Password <span class="text-danger">*</span></label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input type="password" id="val_password" name="val_password" class="form-control" placeholder="Choose a crazy one.." required value="${requestScope.INFO.password}">
                                                            <span class="input-group-addon"><i class="gi gi-asterisk"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="val_confirm_password">Retype Password <span class="text-danger">*</span></label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input type="password" id="val_confirm_password" name="val_confirm_password" class="form-control" placeholder="..and confirm it!" required value="${requestScope.INFO.password}">
                                                            <span class="input-group-addon"><i class="gi gi-asterisk"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- END First Step -->

                                            <!-- Second Step -->
                                            <div id="advanced-second" class="step">
                                                <!-- Step Info -->
                                                <div class="wizard-steps">
                                                    <div class="row">
                                                        <div class="col-xs-6 done">
                                                            <span>1. Account</span>
                                                        </div>
                                                        <div class="col-xs-6 active">
                                                            <span>2. Info</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- END Step Info -->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="val_fullname">Fullname*</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input type="text" id="val_fullname" name="Fullname" class="form-control" placeholder="Your Fullname.." value="${requestScope.INFO.fullname}">
                                                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="masked_phone">Phone*</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input type="text" id="masked_phone" name="masked_phone" class="form-control" placeholder="Enter Phone.." value="${requestScope.INFO.phone}">
                                                            <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="masked_date2">Birthdate*</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input type="text" id="masked_date2" name="masked_date2" class="form-control" value="${requestScope.INFO.birthdate}">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label" for="Major">Major*</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input type="text" id="Major" name="Major" class="form-control" placeholder="Your Major.." value="${requestScope.INFO.major}">
                                                            <span class="input-group-addon"><i class="fa fa-suitcase"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- END Second Step -->

                                            <!-- Form Buttons -->
                                            <div class="form-group form-actions">
                                                <div class="col-md-8 col-md-offset-4">
                                                    <input type="reset" class="btn btn-sm btn-warning" id="back2" value="Back">
                                                    <input type="submit" class="btn btn-sm btn-primary" id="next2" value="Next" name="btnAction">
                                                </div>
                                            </div>
                                            <!-- END Form Buttons -->
                                        </form>
                                        <!-- END Wizard with Validation Content -->
                                    </div>
                                    <!-- END Wizard with Validation Block -->
                                </div>
                            </div>
                            <!-- END Wizards Row -->
                        </div>
                        <!-- END Page Content -->

                        <!-- Footer -->
                        <footer class="clearfix">
                            <div class="pull-right">
                                Crafted with <i class="fa fa-heart text-danger"></i> by <b target="_blank">vinh</b>
                            </div>
                            <div class="pull-left">
                                <span id="year-copy"></span> &copy; <b target="_blank">PRJ321</b>
                            </div>
                        </footer>
                        <!-- END Footer -->
                    </div>
                    <!-- END Main Container -->
                </div>
                <!-- END Page Container -->
            </div>
            <!-- END Page Wrapper -->

            <!-- Scroll to top link, initialized in js/app.js - scrollToTop() -->
            <a href="#" id="to-top"><i class="fa fa-angle-double-up"></i></a>

            <!-- User Settings, modal which opens from Settings link (found in top right user menu) and the Cog link (found in sidebar user info) -->
            <div id="modal-user-settings" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header text-center">
                            <h2 class="modal-title"><i class="fa fa-pencil"></i> Settings</h2>
                        </div>
                        <!-- END Modal Header -->

                        <!-- Modal Body -->
                        <div class="modal-body">
                            <form action="index.html" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered" onsubmit="return false;">
                                <fieldset>
                                    <legend>Vital Info</legend>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Username</label>
                                        <div class="col-md-8">
                                            <p class="form-control-static">Admin</p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="user-settings-email">Email</label>
                                        <div class="col-md-8">
                                            <input type="email" id="user-settings-email" name="user-settings-email" class="form-control" value="admin@example.com">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="user-settings-notifications">Email Notifications</label>
                                        <div class="col-md-8">
                                            <label class="switch switch-primary">
                                                <input type="checkbox" id="user-settings-notifications" name="user-settings-notifications" value="1" checked>
                                                <span></span>
                                            </label>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>Password Update</legend>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="user-settings-password">New Password</label>
                                        <div class="col-md-8">
                                            <input type="password" id="user-settings-password" name="user-settings-password" class="form-control" placeholder="Please choose a complex one..">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="user-settings-repassword">Confirm New Password</label>
                                        <div class="col-md-8">
                                            <input type="password" id="user-settings-repassword" name="user-settings-repassword" class="form-control" placeholder="..and confirm it!">
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="form-group form-actions">
                                    <div class="col-xs-12 text-right">
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-sm btn-primary">Save Changes</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- END Modal Body -->
                    </div>
                </div>
            </div>
            <!-- END User Settings -->

            <!-- jQuery, Bootstrap.js, jQuery plugins and Custom JS code -->
            <script src="js/vendor/jquery.min.js"></script>
            <script src="js/vendor/bootstrap.min.js"></script>
            <script src="js/plugins.js"></script>
            <script src="js/app.js"></script>

            <!-- Load and execute javascript code used only in this page -->
            <script src="js/pages/formsWizard.js"></script>
            <script>$(function () {
                                    FormsWizard.init();
                                });</script>
            <script src="js/pages/widgetsSocial.js"></script>
            <script>$(function () {
                                    WidgetsSocial.init();
                                });</script>
            <script>
                function readURL(input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();

                        reader.onload = function (e) {
                            $('#val_img').attr('src', e.target.result);
                        };
                        reader.readAsDataURL(input.files[0]);
                        document.getElementById('checkYN').value = "Yes";
                    }
                }
                $("#file-input").change(function () {
                    readURL(this);
                });
            </script>
        </Vinh:if>
        <Vinh:if test="${sessionScope.USERNAME == null}">
            <Vinh:redirect url="login.jsp"></Vinh:redirect>
        </Vinh:if>

    </body>
</html>