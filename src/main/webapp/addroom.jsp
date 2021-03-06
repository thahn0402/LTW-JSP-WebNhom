<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
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
    <link rel="stylesheet" href="stylesheets/newbooking-css.css">
    <link rel="stylesheet" href="stylesheets/index-css.css">
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
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
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
                                                                                              style="color: whitesmoke">Log
                                In</a>
                            </button>
                        </form>
                    </li>
                </ul>
            </nav>
        </c:if>
        <c:if test="${sessionScope.auth!=null&&sessionScope.auth.role==0}">
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
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
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
                                                                                              style="color: whitesmoke">Manager</a>
                            </button>
                        </form>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Logout">
                            <i class="fas fa-sign-out-alt fa-1x"> </i>
                        </a>
                    </li>
                </ul>
            </nav>
        </c:if>

        <c:if test="${sessionScope.auth!=null&&sessionScope.auth.role==1}">
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
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
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
                            <button type="button" class="btn bt-view-all" href="admin.jsp"><a href="ProfileUser"
                                                                                              style="color: whitesmoke">My
                                Profile</a>
                            </button>
                        </form>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="">
                            <i class="fas fa-shopping-cart fa-1x"> </i>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="Logout">
                            <i class="fas fa-sign-out-alt fa-1x"> </i>
                        </a>
                    </li>
                </ul>
            </nav>
        </c:if>
    </div>

    <div id="content">
        <div class="row">
            <div class="col-sm-12">
                <div class="card-box">
                    <div class="card-head">
                        <header>Add Room Details</header>
                    </div>
                    <div class="card-body row">
                        <div class="col-sm-12 col-md-6 padding">
                            <label for="room-nuber" class="label">Room number</label><br>
                            <input type="text" name="room number">
                        </div>
                        <div class="col-sm-12 col-md-6 padding">
                            <label for="room-type" class="label">Room type</label><br>
                            <select class="option-room-type">
                                <option value="Single Room">Single Room</option>
                                <option value="Double Room">Double Room</option>
                                <option value="Superior Room">Superior Room</option>
                                <option value="Family Room">Family Room</option>
                                <option value="Executive Room">Executive Room</option>
                                <option value="VIP Suite">VIP Suite</option>
                            </select>
                        </div>
                        <div class="col-sm-12 col-md-6 padding">
                            <label for="AC/Non AC" class="label">AC/Non AC</label><br>
                            <select class="option-gender">
                                <option value="AC">AC</option>
                                <option value="Non AC">Non AC</option>
                            </select>
                        </div>
                        <div class="col-sm-12 col-md-6 padding">
                            <label for="Meal" class="label">Meal</label><br>
                            <select class="option-room-type">
                                <option value="Free Breakfast">Free Breakfast</option>
                                <option value="Free Dinner">Free Dinner</option>
                                <option value="Free Breakfast & Dinner">Free Breakfast & Dinner</option>
                                <option value="Free Welcome Drink">Free Welcome Drink</option>
                                <option value="No Free Food">No Free Food</option>
                            </select>
                        </div>
                        <div class="col-sm-12 col-md-6 padding">
                            <label for="Cancellation Charges" class="label">Cancellation Charges</label><br>
                            <select class="option-person">
                                <option value="Free Cancellation">Free Cancellation</option>
                                <option value="10% Before 24 Hours">10% Before 24 Hours</option>
                                <option value="No Cancellation Allow">No Cancellation Allow</option>
                            </select>
                        </div>
                        <div class="col-sm-12 col-md-6 padding">
                            <label for="Bad Capacity" class="label">Bad Capacity</label><br>
                            <select class="option-person">
                                <option value="value">1</option>
                                <option value="value">2</option>
                                <option value="value">3</option>
                                <option value="value">4</option>
                                <option value="value">5</option>
                            </select>
                        </div>
                        <div class="col-sm-12 col-md-6 padding">
                            <label for="Telephone Number" class="label">Telephone Number</label><br>
                            <input type="text" name="Telephone Number">
                        </div>
                        <div class="col-sm-12 col-md-6 padding">
                            <label for="Rent Per Night" class="label">Rent Per Night</label><br>
                            <input type="text" name="Rent Per Night">
                        </div>
                        <div class="col-sm-12 padding">
                            <label for="fname" class="label">Comment</label><br>
                            <input type="text" name="Comment">
                        </div>
                        <div class="col-sm-12 padding text-center">
                            <button class="btn-submit" type="submit">SUBMIT</button>
                            <button class="btn-cancel" type="submit">CANCEL</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="footer">
        <footer class="page-footer font-large bg-secondary pt-4" style="color: black">
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
            <div class="footer-copyright text-center py-3">?? 2021 Copyright:
                <a href="#" style="color: black"> All Rights Reserved. Privacy Policy.</a>
            </div>
        </footer>
    </div>
</div>
</body>
</html>