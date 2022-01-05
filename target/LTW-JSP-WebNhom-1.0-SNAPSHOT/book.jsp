<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>LTW2021</title>
    <link rel="icon" type="image/png" href="img/logo/LTW2021.png">
    <link rel="apple-touch-icon" type="image/png" href="img/logo/LTW2021.png"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="stylesheets/about-css.css">
    <link rel="stylesheet" href="stylesheets/index-css.css">
    <link rel="stylesheet" href="stylesheets/book-css.css">
    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,900" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="bootstrap/bootstrap_book.min.css"/>

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="stylesheets/book-css.css"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

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
<div id="booking" class="section">
    <div class="section-center">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="booking-cta">
                        <h1>Make your reservation</h1>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate laboriosam numquam at</p>
                    </div>
                </div>
                <div class="col-md-6 col-md-offset-1">
                    <div class="booking-form">
                        <form>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" type="text">
                                        <span class="form-label">Name</span>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" type="email">
                                        <span class="form-label">Email</span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" type="tel">
                                        <span class="form-label">Phone</span>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6">
                                    <div class="form-group">
                                        <span class="form-label">Rooms</span>
                                        <select class="form-control">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                        </select>
                                        <span class="select-arrow"></span>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6">
                                    <div class="form-group">
                                        <span class="form-label">Guests</span>
                                        <select class="form-control">
                                            <option>1 Person</option>
                                            <option>2 People</option>
                                            <option>3 People</option>
                                        </select>
                                        <span class="select-arrow"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" type="date" required>
                                        <span class="form-label">Check In</span>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" type="date" required>
                                        <span class="form-label">Check Out</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-btn">
                                <button class="submit-btn">Book Now</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="jquery/book/jquery.min.js"></script>
<script>
    $('.form-control').each(function () {
        floatedLabel($(this));
    });

    $('.form-control').on('input', function () {
        floatedLabel($(this));
    });

    function floatedLabel(input) {
        var $field = input.closest('.form-group');
        if (input.val()) {
            $field.addClass('input-not-empty');
        } else {
            $field.removeClass('input-not-empty');
        }
    }
</script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>