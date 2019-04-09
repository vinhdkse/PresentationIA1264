<%@taglib prefix="Vinh" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> 
<html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>PRJ321 - Presentation</title>
        <meta name="description" content="ProUI is a Responsive Bootstrap Admin Template created by pixelcave and published on Themeforest.">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0">
        <link rel="shortcut icon" href="img/favicon.png">
        <link rel="apple-touch-icon" href="img/icon57.png" sizes="57x57">
        <link rel="apple-touch-icon" href="img/icon72.png" sizes="72x72">
        <link rel="apple-touch-icon" href="img/icon76.png" sizes="76x76">
        <link rel="apple-touch-icon" href="img/icon114.png" sizes="114x114">
        <link rel="apple-touch-icon" href="img/icon120.png" sizes="120x120">
        <link rel="apple-touch-icon" href="img/icon144.png" sizes="144x144">
        <link rel="apple-touch-icon" href="img/icon152.png" sizes="152x152">
        <link rel="apple-touch-icon" href="img/icon180.png" sizes="180x180">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/plugins.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/themes.css">
        <script src="js/vendor/modernizr.min.js"></script>
    </head>
    <body>
        <div id="page-wrapper">
            <div class="preloader themed-background">
                <h1 class="push-top-bottom text-light text-center"><strong>PRJ</strong>321</h1>
            </div>
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
                            <Vinh:if test="${sessionScope.USERNAME != null}">
                                <div class="sidebar-section sidebar-user clearfix sidebar-nav-mini-hide">
                                    <div class="sidebar-user-avatar">
                                        <a href="MainController?btnAction=EditUser">
                                            <Vinh:if test="${sessionScope.USERIMG == null}">
                                                <img src="img/placeholders/avatars/avatar2.jpg" alt="avatar">
                                            </Vinh:if>
                                            <Vinh:if test="${sessionScope.USERIMG !=null}">
                                                <img src="${sessionScope.USERIMG}" alt="avatar" width="80" height="80" class="widget-image img-circle">
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
                            </Vinh:if>
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
                    <header class="navbar navbar-default">
                        <!-- Left Header Navigation -->
                        <ul class="nav navbar-nav-custom">
                            <!-- Main Sidebar Toggle Button -->
                            <li>
                                <a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar');this.blur();">
                                    <i class="fa fa-bars fa-fw"></i>
                                </a>
                            </li>

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
                                        <Vinh:if test="${sessionScope.USERNAME != null}">
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
                                    </Vinh:if>
                                    <Vinh:if test="${sessionScope.USERNAME == null}">
                                        <li>
                                            <a href="login.jsp"><i class="fa fa-heart-o fa-fw pull-right"></i> Login</a>
                                        </li>
                                    </Vinh:if>
                                </ul>
                            </li>
                            <!-- END User Dropdown -->
                        </ul>
                        <!-- END Right Header Navigation -->
                    </header>
                    <!-- END Header -->

                    <!-- Page content -->
                    <div id="page-content">
                        <!-- Carousel Header -->
                        <div class="content-header content-header-media">
                            <div class="header-section">
                                <div class="row">
                                    <!-- Main Title (hidden on small devices for the statistics to fit) -->
                                    <div class="col-md-4 col-lg-6 hidden-xs hidden-sm">
                                        <h1>Welcome <strong>${sessionScope.USERNAME}</strong><br><small>You Look Awesome!</small></h1>
                                    </div>
                                </div>
                            </div>
                            <!-- For best results use an image with a resolution of 2560x248 pixels (You can also use a blurred image with ratio 10:1 - eg: 1000x100 pixels - it will adjust and look great!) -->
                            <img src="img/placeholders/headers/dashboard_header.jpg" alt="header image" class="animation-pulseSlow">
                        </div>
                        <!-- Carousel Content -->
                        <div class="row">
                            <!-- With Animation and Info Carousel -->
                            <div class="col-sm-4">
                                <!-- With Animation and Info Carousel Block -->
                                <div class="block">
                                    <!-- With Animation and Info Carousel Title -->
                                    <div class="block-title">
                                        <h2><strong>Event Part</strong></h2>
                                    </div>
                                    <!-- END With Animation and Info Carousel Title -->

                                    <!-- With Animation and Info Carousel Content -->
                                    <div id="example-carousel" class="carousel slide">
                                        <!-- Indicators -->
                                        <ol class="carousel-indicators">
                                            <li data-target="#example-carousel" data-slide-to="0" class="active"></li>
                                                <Vinh:forEach items="${requestScope.listpart}" varStatus="counter">
                                                <li data-target="#example-carousel" data-slide-to="${count.counter+1}"></li>
                                                </Vinh:forEach>
                                        </ol>
                                        <!-- END Indicators -->

                                        <!-- Wrapper for slides -->
                                        <div class="carousel-inner">
                                            <div class="active item">
                                                <img src="img/placeholders/photos/photo10.jpg" alt="image">
                                                <div class="carousel-caption">
                                                    <p>Event in the Part</p>
                                                </div>
                                            </div>
                                            <Vinh:if test="${empty requestScope.listpart}">
                                                <div class="item">
                                                    <img src="img/placeholders/photos/photo1.jpg" alt="image">
                                                    <div class="carousel-caption">
                                                        Nothing
                                                    </div>
                                                </div>
                                            </Vinh:if>
                                            <Vinh:forEach items="${requestScope.listpart}" var="dto">
                                                <div class="item">
                                                    <img src="${dto.img}" alt="image">
                                                    <div class="carousel-caption">
                                                        <form action="ShowDetailsController" method="post">
                                                            <input type="hidden" value="${dto.eventID}" name="id"/>
                                                            <input type="hidden" value="" name="join"/>
                                                            <button type="submit" class="btn btn-sm btn-info" name="btnAction" value="Register"><p>${dto.eventName}</p></button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </Vinh:forEach>
                                        </div>
                                        <!-- END Wrapper for slides -->
                                        <!-- Controls -->
                                        <a class="left carousel-control" href="#example-carousel" data-slide="prev">
                                            <span><i class="fa fa-chevron-left"></i></span>
                                        </a>
                                        <a class="right carousel-control" href="#example-carousel" data-slide="next">
                                            <span><i class="fa fa-chevron-right"></i></span>
                                        </a>
                                        <!-- END Controls -->
                                    </div>
                                    <!-- END With Animation and Info Carousel Content -->
                                </div>
                                <!-- END With Animation and Info Carousel Block -->
                            </div>

                            <!-- END With Animation and Info Carousel -->

                            <!-- With Animation and no Info Carousel -->
                            <div class="col-sm-4">
                                <!-- With Animation and no Info Carousel Block -->
                                <div class="block">
                                    <!-- With Animation and no Info Carousel Title -->
                                    <div class="block-title">
                                        <h2><strong>Event</strong> Now</h2>
                                    </div>
                                    <!-- END With Animation and no Info Carousel Title -->

                                    <!-- With Animation and no Info Carousel Content -->
                                    <div id="example-carousel2" class="carousel slide">
                                        <!-- Wrapper for slides -->
                                        <div class="carousel-inner">
                                            <div class="active item">
                                                <img src="img/placeholders/photos/photo9.jpg" alt="image">
                                                <div class="carousel-caption">
                                                    <p>Event now</p>
                                                </div>
                                            </div>
                                            <Vinh:if test="${empty requestScope.listnow}">
                                                <div class="item">
                                                    <img src="img/placeholders/photos/photo1.jpg" alt="image">
                                                    <div class="carousel-caption">
                                                        Nothing
                                                    </div>
                                                </div>
                                            </Vinh:if>
                                            <Vinh:forEach items="${requestScope.listnow}" var="dto">
                                                <div class="item">
                                                    <img src="${dto.img}" alt="image">
                                                    <div class="carousel-caption">
                                                        <form action="ShowDetailsController" method="post">
                                                            <input type="hidden" value="${dto.eventID}" name="id"/>
                                                            <input type="hidden" value="" name="join"/>
                                                            <button type="submit" class="btn btn-sm btn-info" name="btnAction" value="Register"><p>${dto.eventName}</p></button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </Vinh:forEach>
                                        </div>
                                        <!-- END Wrapper for slides -->

                                        <!-- Controls -->
                                        <a class="left carousel-control" href="#example-carousel2" data-slide="prev">
                                            <span><i class="fa fa-chevron-left"></i></span>
                                        </a>
                                        <a class="right carousel-control" href="#example-carousel2" data-slide="next">
                                            <span><i class="fa fa-chevron-right"></i></span>
                                        </a>
                                        <!-- END Controls -->
                                    </div>
                                    <!-- END With Animation and no Info Carousel Content -->
                                </div>
                                <!-- END With Animation and no Info Carousel Block -->
                            </div>
                            <!-- END Alternative Carousel -->

                            <!-- Without Animation or Info Block -->
                            <div class="col-sm-4">
                                <div class="block">
                                    <!-- Without Animation  or InfoTitle -->
                                    <div class="block-title">
                                        <h2><strong>Simple</strong></h2>
                                    </div>
                                    <!-- END Without Animation or Info Title -->

                                    <!-- Without Animation or Info Content -->
                                    <div id="example-carousel3" class="carousel">
                                        <!-- Wrapper for slides -->
                                        <div class="carousel-inner">
                                            <div class="active item">
                                                <img src="img/placeholders/photos/photo23.jpg" alt="image">
                                                <div class="carousel-caption">
                                                    Event in the future
                                                </div>
                                            </div>
                                            <Vinh:if test="${empty requestScope.listfuture}">
                                                <div class="item">
                                                    <img src="img/placeholders/photos/photo1.jpg" alt="image">
                                                    <div class="carousel-caption">
                                                        Nothing
                                                    </div>
                                                </div>
                                            </Vinh:if>
                                            <Vinh:forEach items="${requestScope.listfuture}" var="dto">
                                                <div class="item">
                                                    <img src="${dto.img}" alt="image">
                                                    <div class="carousel-caption">
                                                        <form action="ShowDetailsController" method="post">
                                                            <input type="hidden" value="${dto.eventID}" name="id"/>
                                                            <input type="hidden" value="" name="join"/>
                                                            <button type="submit" class="btn btn-sm btn-info" name="btnAction" value="Register"><p>${dto.eventName}</p></button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </Vinh:forEach>

                                        </div>
                                        <!-- END Wrapper for slides -->

                                        <!-- Controls -->
                                        <a class="left carousel-control" href="#example-carousel3" data-slide="prev">
                                            <span><i class="fa fa-chevron-left"></i></span>
                                        </a>
                                        <a class="right carousel-control" href="#example-carousel3" data-slide="next">
                                            <span><i class="fa fa-chevron-right"></i></span>
                                        </a>
                                        <!-- END Controls -->
                                    </div>
                                    <!-- END Without Animation or Info Content -->
                                </div>
                                <!-- END Without Animation or Info Block -->
                            </div>
                        </div>
                        <div class="block">
                            <!-- Gallery Carousel Title -->
                            <div class="block-title">
                                <h2><strong>Some Picture</strong> can you like!!</h2>
                            </div>
                            <!-- END Gallery Carousel Title -->

                            <!-- Gallery Carousel Content -->
                            <div id="example-carousel4" class="carousel slide">
                                <!-- Wrapper for slides -->
                                <div class="carousel-inner">
                                    <div class="active item gallery">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo1.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo2.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo3.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo24.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo23.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo22.jpg" alt="image">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item gallery">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo4.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo5.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo6.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo21.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo20.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo19.jpg" alt="image">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item gallery">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo7.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo8.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo9.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo18.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo17.jpg" alt="image">
                                            </div>
                                            <div class="col-sm-4">
                                                <img src="img/placeholders/photos/photo16.jpg" alt="image">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END Wrapper for slides -->

                                <!-- Controls -->
                                <a class="left carousel-control no-hover" href="#example-carousel4" data-slide="prev">
                                    <span><i class="fa fa-chevron-left"></i></span>
                                </a>
                                <a class="right carousel-control no-hover" href="#example-carousel4" data-slide="next">
                                    <span><i class="fa fa-chevron-right"></i></span>
                                </a>
                                <!-- END Controls -->
                            </div>
                            <!-- END Gallery Carousel Content -->
                        </div>
                        <!-- END Carousel Content -->

                    </div>
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
        <!-- END User Settings -->
        <!-- jQuery, Bootstrap.js, jQuery plugins and Custom JS code -->
        <script src="js/vendor/jquery.min.js"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/app.js"></script>

        <!-- Google Maps API Key (you will have to obtain a Google Maps API key to use Google Maps) -->
        <!-- For more info please have a look at https://developers.google.com/maps/documentation/javascript/get-api-key#key -->
        <script src="https://maps.googleapis.com/maps/api/js?key="></script>
        <script src="js/helpers/gmaps.min.js"></script>

        <!-- Load and execute javascript code used only in this page -->
        <script src="js/pages/index.js"></script>
        <script>$(function () {
                                        Index.init();
                                    });</script>
    </body>
</html>