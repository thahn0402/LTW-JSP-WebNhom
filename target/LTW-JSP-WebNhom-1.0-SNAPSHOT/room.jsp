<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <title>LTW2021</title>
    <meta charset="utf-8">
    <link rel="icon" type="image/png" href="img/logo/LTW2021.png">
    <link rel="apple-touch-icon" type="image/png" href="img/logo/LTW2021.png"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="stylesheets/index-css.css">
    <link rel="stylesheet" href="stylesheets/room-css.css">

</head>
<body>
<div id="main">
    <div id="header">
        <c:if test="${sessionScope.auth==null}">
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top justify-content-center">
                <a class="navbar-brand" href="index.jsp">
                    <img src="img/logo/LTW2021.png" alt="Logo" style="width:100px" class="rounded-circle">
                </a>
                <ul class="navbar-nav ">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="room.jsp" data-toggle="dropdown">
                            Room & Suites
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="room.jsp">Rooms</a>
                            <a class="dropdown-item" href="SingleRoomList">Single Room</a>
                            <a class="dropdown-item" href="DoubleRoomList">Double Room</a>
                            <a class="dropdown-item" href="SuperiorRoomList">Superior Room</a>
                            <a class="dropdown-item" href="FamilyRoomList">Family Room</a>
                            <a class="dropdown-item" href="ExecutiveRoomList">Executive Room</a>
                            <a class="dropdown-item" href="VipSuiteList">VIP Suite</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="gallery.jsp">Gallery</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown">
                            Foods
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="breakfast.jsp">Breakfast</a>
                            <a class="dropdown-item" href="lunch.jsp">Lunch</a>
                            <a class="dropdown-item" href="dinner.jsp">Dinner</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.jsp">Contact</a>
                    </li>
                    <li>
                        <form class="form-inline" action="/action_page.php">
                            <input class="form-control mr-sm-2" type="text" placeholder="Search">
                            <button type="button" class="btn bt-view-all" href="login.jsp"><a href="login.jsp"
                                                                                              style="color: whitesmoke">Log In</a>
                            </button>
                        </form>
                    </li>
                </ul>
            </nav>
        </c:if>
        <c:if test="${sessionScope.auth!=null}">
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top justify-content-center">
                <a class="navbar-brand" href="index.jsp">
                    <img src="img/logo/LTW2021.png" alt="Logo" style="width:100px" class="rounded-circle">
                </a>
                <ul class="navbar-nav ">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="room.jsp" data-toggle="dropdown">
                            Room & Suites
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="room.jsp">Rooms</a>
                            <a class="dropdown-item" href="SingleRoomList">Single Room</a>
                            <a class="dropdown-item" href="DoubleRoomList">Double Room</a>
                            <a class="dropdown-item" href="SuperiorRoomList">Superior Room</a>
                            <a class="dropdown-item" href="FamilyRoomList">Family Room</a>
                            <a class="dropdown-item" href="ExecutiveRoomList">Executive Room</a>
                            <a class="dropdown-item" href="VipSuiteList">VIP Suite</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="gallery.jsp">Gallery</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown">
                            Foods
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="breakfast.jsp">Breakfast</a>
                            <a class="dropdown-item" href="lunch.jsp">Lunch</a>
                            <a class="dropdown-item" href="dinner.jsp">Dinner</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.jsp">Contact</a>
                    </li>
                    <li>
                        <form class="form-inline" action="/action_page.php">
                            <input class="form-control mr-sm-2" type="text" placeholder="Search">
                            <button type="button" class="btn bt-view-all" href="admin.jsp"><a href="admin.jsp"
                                                                                              style="color: whitesmoke">My Profile</a>
                            </button>
                        </form>
                    </li>
                </ul>
            </nav>
        </c:if>
    </div>

    <!-- slider -->

    <div id="slider">
        <div class="container-img">
            <img src="img/room/slider1.jpg" alt="room-slider1" style="width:100%;">
            <div class="centered">Room & Suites</div>
        </div>
    </div>

    <!-- content -->

    <div id="content">
        <div class="content-section">
            <h1 class="section-heading">Our Best Rooms</h1>
            <p class="section-sub-heading">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aspernatur beatae, delectus
                dolorem eveniet fuga id, impedit itaque nemo nesciunt nihil nobis odit quas quis quo sunt suscipit
                tempora
            </p>
        </div>

        <div class="container-fluid">
            <div class="row row-height">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <a href="single-room.html">
                            <img src="img/home/body2.png" alt="Lights">
                            <div class="caption">
                                <h3 style="float: left">Single Room</h3>
                                <h2 style="float: right;color: goldenrod">View</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <a href="double-room.html">
                            <img src="img/home/body4.png" alt="Nature">
                            <div class="caption">
                                <h3 style="float: left">Double Room</h3>
                                <h2 style="float: right;color: goldenrod">View</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <a href="superior-room.html">
                            <img src="img/home/body3.png" alt="Fjords">
                            <div class="caption">
                                <h3 style="float: left">Superior Room</h3>
                                <h2 style="float: right;color: goldenrod">View</h2>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row row-height">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <a href="family-room.html">
                            <img src="img/home/body1.png" alt="Lights">
                            <div class="caption">
                                <h3 style="float: left">Family Room</h3>
                                <h2 style="float: right;color: goldenrod">View</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <a href="executive-room.html">
                            <img src="img/home/body5.png" alt="Nature">
                            <div class="caption">
                                <h3 style="float: left">Executive Room</h3>
                                <h2 style="float: right;color: goldenrod">View</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <a href="vip-suite.html">
                            <img src="img/home/body6.png" alt="Fjords">
                            <div class="caption">
                                <h3 style="float: left">VIP Suite</h3>
                                <h2 style="float: right;color: goldenrod">View</h2>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="footer">
        <footer class="page-footer font-large bg-secondary pt-4" style="margin-top: 25px;color: black">
            <div class="container">
                <ul class="list-unstyled list-inline text-center">
                    <li class="list-inline-item">
                        <a class="btn-floating btn-fb mx-1 icon-footer">
                            <i class="fab fa-facebook fa-2x"> </i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a class="btn-floating btn-tw mx-1 icon-footer">
                            <i class="fab fa-twitter fa-2x"> </i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a class="btn-floating btn-gplus mx-1 icon-footer">
                            <i class="fab fa-google-plus-g fa-2x"> </i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a class="btn-floating btn-li mx-1 icon-footer">
                            <i class="fab fa-linkedin-in fa-2x"> </i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a class="btn-floating btn-dribbble mx-1 icon-footer">
                            <i class="fab fa-dribbble fa-2x"> </i>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="footer-copyright text-center py-3">© 2021 Copyright:
                <a href="#" style="color: black"> All Rights Reserved. Privacy Policy.</a>
            </div>
        </footer>
    </div>
</div>
</body>
</html>