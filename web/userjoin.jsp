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
                                        <img src="img/placeholders/avatars/avatar2.jpg" alt="avatar"> <i class="fa fa-angle-down"></i>
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
                            <!-- Article Header -->
                            <!-- For an image header add the class 'content-header-media' and an image as in the following example -->
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
                            <!-- END Article Header -->

                            <!-- Article Content -->
                            <div class="row">
                                <div class="block">
                                    <!-- Wizard with Validation Title -->
                                    <div class="block-title">
                                        <h2><strong>${requestScope.INFO.eventName}</strong> at <strong>${requestScope.INFO.startEvent}</strong></h2>
                                    </div>
                                    <!-- END Wizard with Validation Title -->

                                    <!-- Wizard with Validation Content -->
                                    <form id="form-validation" class="form-horizontal form-bordered" action="UserEventController" method="post">
                                        <!-- First Step -->
                                        <div id="clickable-first" class="step">
                                            <div class="col-xs-6">
                                                <p>
                                                    <a href="${requestScope.INFO.img}" data-toggle="lightbox-image">
                                                        <img src="${requestScope.INFO.img}" alt="image" class="img-responsive">
                                                    </a>
                                                </p>
                                            </div>
                                            <div class="col-xs-6">
                                                <h2><strong>Register to join event</strong></h2>
                                                <label class="switch switch-primary"><strong>You have team yet:</strong> <input type="checkbox" id="checktext" onclick="myFunction()" name="checkteam"/><span></span></label>
                                                <div id="textcheck" style="display:none">
                                                    <div class="form-group">
                                                        <label class="col-md-4 control-label" for="val_name">Team Name <span class="text-danger">*</span></label>
                                                        <div class="col-md-6">
                                                            <div class="input-group">
                                                                <input type="text" id="val_name" name="val_name" class="form-control" placeholder="Team Name..">
                                                                <span class="input-group-addon"><i class="gi gi-text_resize"></i></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-4 control-label" for="val_size">Team Size <span class="text-danger">*</span></label>
                                                        <div class="col-md-6">
                                                            <div class="input-group">
                                                                <input type="text" id="val_size" name="val_size" class="form-control" placeholder="Team Size..">
                                                                <span class="input-group-addon"><i class="hi hi-fullscreen"></i></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <label class="switch switch-primary"><strong>You have leader yet:</strong> <input type="checkbox" name="checklead"/><span></span></label>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-xs-12 text-right">
                                                        <font color="red"><b>${requestScope.VALID}</b></font>
                                                    </div>
                                                    <div class="col-xs-12 text-left">
                                                        <input type="hidden" name="eventID" value="${requestScope.INFO.eventID}"/>
                                                        <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i>Register</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <!-- END Wizard with Validation Content -->
                                </div>
                                <Vinh:if test="${not empty requestScope.HAVEJOIN}">
                                    <div class="col-md-12 text-center">
                                        <Vinh:if test="${sessionScope.USERNAME == null}">
                                            <form action="login.jsp">
                                                <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> Join with us</button>
                                            </form>
                                        </Vinh:if>
                                        <Vinh:if test="${sessionScope.USERNAME != null}">
                                            <form action="UserJoinController" method="POST">
                                                <input type="hidden" name="eventId" value="${INFO.eventID}"/>
                                                <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> Join with us</button>
                                            </form>
                                        </Vinh:if>
                                    </div>
                                </Vinh:if>               
                            </div>
                            <!-- END Article Content -->
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
            <script src="js/pages/formsValidation.js"></script>
            <script>$(function () {
                                                        FormsValidation.init();
                                                    });</script>
            <script>
                function myFunction() {
                    var checkBox = document.getElementById("checktext");
                    var text = document.getElementById("textcheck");
                    if (checkBox.checked === true) {
                        text.style.display = "block";
                    } else {
                        text.style.display = "none";
                    }
                }

            </script>
        </Vinh:if>
        <Vinh:if test="${sessionScope.USERNAME == null}">
            <Vinh:redirect url="login.jsp"></Vinh:redirect>
        </Vinh:if>
    </body>
</html>