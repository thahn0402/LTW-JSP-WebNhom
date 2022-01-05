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
    <link rel="stylesheet" href="stylesheets/profile-css.css">
    <link rel="stylesheet" href="stylesheets/room-css.css">

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
<div class="container-img">
    <img src="img/about/img3.png" alt="profile-img1" style="width:100%; height: 480px">
</div>

<div class="row">
    <div class="col-sm-4">
        <div class="">
            <img src="img/about/avt1.png" class="rounded img2" alt="avt">
        </div>
    </div>


    <div class="col-sm-8">
        <div class="information">
            <div>
                <h5 class="bold">Web Developer</h5>
                <h3 class="bolder">Nguyen Tri Thanh</h3>
                <p class="dark-gray">"Hello, my name is Thanh. I'm 20 years old. I'm a Web developer form Nomg Lam
                    University."</p>
            </div>
            <div>
                <div class="row">
                    <div class="col-sm-6">
                        <h4>Education</h4>
                        <p class="dark-gray">IT engineer from Nong Lam University.<br>
                            ID Student: 19130207.</p>
                        </br>
                        <h4>Skills</h4>
                        <p class="dark-gray">HTML, CSS, JavaScript, Java, C#,...</p>
                    </div>
                    <div class="col-sm-6">
                        <h4>Certificates</h4>
                        <p class="dark-gray">2019 - graduated at Buon Trap Secondary School<br>
                            2021 - learn at Nong Lam University</p>
                        </br>
                        <h4>Contact Information</h4>
                        <div class="row">
                            <div class="col-sm-1"><i class="fas fa-map-marker-alt" style="color: #ad9463"></i></div>
                            <div class="col-sm-11 dark-gray">Ho Chi Minh City</div>
                        </div>
                        <div class="row">
                            <div class="col-sm-1"><i class="fas fa-phone-volume" style="color: #ad9463"></i></div>
                            <div class="col-sm-11 dark-gray">0342487487</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="" style="margin-top: 25px">
                <h4>Skills Progress</h4>
                <div class="progress" style="height: 25px">
                    <div class="progress-bar bg-secondary" style="width:90%">HTML</div>
                </div>
                </br>
                <div class="progress" style="height: 25px">
                    <div class="progress-bar bg-secondary" style="width:70%">CSS</div>
                </div>
                </br>
                <div class="progress" style="height: 25px">
                    <div class="progress-bar bg-secondary" style="width:50%">JS</div>
                </div>
                </br>
                <div class="progress" style="height: 25px">
                    <div class="progress-bar bg-secondary" style="width:65%">C#</div>
                </div>
            </div>
        </div>
    </div>
</div>


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
</body>
</html>

</body>
</html>