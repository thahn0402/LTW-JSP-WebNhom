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
    <link rel="stylesheet" href="stylesheets/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="stylesheets/viewbooking-css.css">
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

    <div id="content">
        <div class="row">
            <div class="col-sm-12">
                <div class="card-box">
                    <div class="card-head">
                        <header>All Bookings</header>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="btn-group">
                                    <a href="addroom.html">ADD NEW<i class="icon ti-plus"></i></a>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="btn-tools dropdown">
                                    <a class="dropdown-toggle" href="" data-toggle="dropdown">Tools</a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href=""><i class="icon ti-printer"></i>Print</a>
                                        <a class="dropdown-item" href=""><i class="icon ti-save"></i>Save as PDF</a>
                                        <a class="dropdown-item" href=""><i class="icon ti-export"></i>Export to Excel</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 search">
                            <label for="search">
                                Search:
                                <input type="text" name="search">
                            </label>
                        </div>

                        <div class="px-4">
                            <div class="table-responsive">
                                <table class="table table-hover mb-0" style="text-align: center;" >
                                    <thead>
                                    <tr>
                                        <th class="th-lg"><a>Img<i class="fas fa-sort ml-1"></i></a></th>
                                        <th class="th-lg"><a>Type<i class="fas fa-sort ml-1"></i></a></th>
                                        <th class="th-lg"><a>AC/Non AC<i class="fas fa-sort ml-1"></i></a></th>
                                        <th class="th-lg"><a>Meal<i class="fas fa-sort ml-1"></i></a></th>
                                        <th class="th-lg"><a>Bad Capacity<i class="fas fa-sort ml-1"></i></a></th>
                                        <th class="th-lg"><a>Phone<i class="fas fa-sort ml-1"></i></a></th>
                                        <th class="th-lg"><a>Rent<i class="fas fa-sort ml-1"></i></a></th>
                                        <th class="th-lg"><a>Action<i class="fas fa-sort ml-1"></i></a></th>
                                    </tr>
                                    </thead>
                                    <tbody >
                                    <tr>
                                        <td class="user-img">
                                            <img src="img/avatar/user1.jpg" alt="">
                                        </td>
                                        <td>Single room</td>
                                        <td>AC</td>
                                        <td>Free Dinner</td>
                                        <td>2</td>
                                        <td>4444565756</td>
                                        <td>200$</td>
                                        <td>
                                            <a class="pen" href=""><i class="pen ti-pencil"></i></a>
                                            <a class="trash" href=""><i class="trash ti-trash"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="user-img">
                                            <img src="img/avatar/user2.jpg" alt="">
                                        </td>
                                        <td>Double room</td>
                                        <td>Non AC</td>
                                        <td>Free Dinner</td>
                                        <td>3</td>
                                        <td>4444565867</td>
                                        <td>250$</td>
                                        <td>
                                            <a class="pen" href=""><i class="pen ti-pencil"></i></a>
                                            <a class="trash" href=""><i class="trash ti-trash"></i></a>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="user-img">
                                            <img src="img/avatar/user3.jpg" alt="">
                                        </td>
                                        <td>Family room</td>
                                        <td>Non AC</td>
                                        <td>Free Lunch</td>
                                        <td>2</td>
                                        <td>4444321452</td>
                                        <td>400$</td>
                                        <td>
                                            <a class="pen" href=""><i class="pen ti-pencil"></i></a>
                                            <a class="trash" href=""><i class="trash ti-trash"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="user-img">
                                            <img src="img/avatar/user4.jpg" alt="">
                                        </td>
                                        <td>Single room</td>
                                        <td>AC</td>
                                        <td>Free Lunch</td>
                                        <td>2</td>
                                        <td>4444320094</td>
                                        <td>200$</td>
                                        <td>
                                            <a class="pen" href=""><i class="pen ti-pencil"></i></a>
                                            <a class="trash" href=""><i class="trash ti-trash"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="user-img">
                                            <img src="img/avatar/user5.jpg" alt="">
                                        </td>
                                        <td>Double room</td>
                                        <td>AC</td>
                                        <td>Free Lunch</td>
                                        <td>5</td>
                                        <td>4444423434</td>
                                        <td>250$</td>
                                        <td>
                                            <a class="pen" href=""><i class="pen ti-pencil"></i></a>
                                            <a class="trash" href=""><i class="trash ti-trash"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="user-img">
                                            <img src="img/avatar/user6.jpg" alt="">
                                        </td>
                                        <td>VIP Suite</td>
                                        <td>AC</td>
                                        <td>Free Dinner</td>
                                        <td>3</td>
                                        <td>4444425546</td>
                                        <td>750$</td>
                                        <td>
                                            <a class="pen" href=""><i class="pen ti-pencil"></i></a>
                                            <a class="trash" href=""><i class="trash ti-trash"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="user-img">
                                            <img src="img/avatar/user7.jpg" alt="">
                                        </td>
                                        <td>Superior room</td>
                                        <td>Non AC</td>
                                        <td>Free Dinner</td>
                                        <td>2</td>
                                        <td>4444423987</td>
                                        <td>550$</td>
                                        <td>
                                            <a class="pen" href=""><i class="pen ti-pencil"></i></a>
                                            <a class="trash" href=""><i class="trash ti-trash"></i></a>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <hr class="my-0">
                            <div class="d-flex justify-content-between">
                                <nav class="my-4">
                                    <ul class="pagination pagination-circle pg-blue mb-0">
                                        <li class="page-item disabled clearfix d-none d-md-block"><a
                                                class="page-link">First</a></li>
                                        <li class="page-item disabled">
                                            <a class="page-link" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                        </li>
                                        <li class="page-item active"><a class="page-link">1</a></li>
                                        <li class="page-item"><a class="page-link">2</a></li>
                                        <li class="page-item"><a class="page-link">3</a></li>
                                        <li class="page-item"><a class="page-link">4</a></li>
                                        <li class="page-item"><a class="page-link">5</a></li>
                                        <li class="page-item">
                                            <a class="page-link" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </li>
                                        <li class="page-item clearfix d-none d-md-block"><a
                                                class="page-link">Last</a></li>
                                    </ul>
                                </nav>
                            </div>
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
            <div class="footer-copyright text-center py-3">© 2021 Copyright:
                <a href="#" style="color: black"> All Rights Reserved. Privacy Policy.</a>
            </div>
        </footer>
    </div>
</div>
</body>
</html>