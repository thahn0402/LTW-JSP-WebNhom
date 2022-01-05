<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <title>LTW2021</title>
    <link rel="icon" type="image/png" href="img/logo/LTW2021.png">
    <link rel="apple-touch-icon" type="image/png" href="img/logo/LTW2021.png"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="stylesheets/admin-css.css">
    <link rel="stylesheet" href="stylesheets/index-css.css">

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
<div class="fixed-sn white-skin">
    <header>
        <div id="slide-out" class="side-nav sn-bg-4 fixed">
            <ul class="custom-scrollbar">
                <li>
                    <form class="search-form" role="search">
                        <div class="md-form mt-0 waves-light">
                            <input type="text" class="form-control py-2" placeholder="Search">
                        </div>
                    </form>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href=""><i class="w-fa fas fa-user-friends"></i> Staff</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href=""><i class="w-fa fas fa-user"></i> Profile</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                        <i class="w-fa far fas fa-door-closed"></i> Rooms
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="addroom.html">Add new room</a>
                        <a class="dropdown-item" href="room.html">View all rooms</a>
                        <a class="dropdown-item" href="addroom.html">Edit room details</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                        <i class="w-fa far fas fa-bookmark"></i> Booking
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="newbooking.html">New booking</a>
                        <a class="dropdown-item" href="viewbooking.html">View booking</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href=""><i class="w-fa far fa-envelope"></i> Email</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href=""><i class="w-fa far fa-bell"></i> Notification</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href=""><i class="w-fa fas fa-sign-out-alt"></i>Log out</a>
                </li>
            </ul>
            <div class="sidenav-bg mask-strong"></div>
        </div>
    </header>
    <main>
        <div class="container-fluid">
            <section class="mt-md-4 pt-md-2 mb-5 pb-4">
                <div class="row">
                    <div class="col-xl-3 col-md-6 mb-xl-0 mb-4">
                        <div class="card card-cascade cascading-admin-card">
                            <div class="admin-up">
                                <i class="far fa-money-bill-alt primary-color mr-3 z-depth-2"></i>
                                <div class="data">
                                    <p class="text-uppercase">orders</p>
                                    <h4 class="font-weight-bold dark-grey-text">182</h4>
                                </div>
                            </div>
                            <div class="card-body card-body-cascade">
                                <div class="progress mb-3">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 25%"
                                         aria-valuenow="25"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="card-text">Better than last week (25%)</p>
                            </div>

                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mb-xl-0 mb-4">
                        <div class="card card-cascade cascading-admin-card">
                            <div class="admin-up">
                                <i class="fas fa-chart-line warning-color mr-3 z-depth-2"></i>
                                <div class="data">
                                    <p class="text-uppercase">Booking</p>
                                    <h4 class="font-weight-bold dark-grey-text">133</h4>
                                </div>
                            </div>
                            <div class="card-body card-body-cascade">
                                <div class="progress mb-3">
                                    <div class="progress-bar red accent-2" role="progressbar" style="width: 25%"
                                         aria-valuenow="25"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="card-text">Worse than last week (25%)</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mb-md-0 mb-4">
                        <div class="card card-cascade cascading-admin-card">
                            <div class="admin-up">
                                <i class="fas fa-chart-pie light-blue lighten-1 mr-3 z-depth-2"></i>
                                <div class="data">
                                    <p class="text-uppercase">Inquiry</p>
                                    <h4 class="font-weight-bold dark-grey-text">42</h4>
                                </div>
                            </div>
                            <div class="card-body card-body-cascade">
                                <div class="progress mb-3">
                                    <div class="progress-bar red accent-2" role="progressbar" style="width: 75%"
                                         aria-valuenow="75"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="card-text">Worse than last week (75%)</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mb-0">
                        <div class="card card-cascade cascading-admin-card">
                            <div class="admin-up">
                                <i class="fas fa-chart-bar red accent-2 mr-3 z-depth-2"></i>
                                <div class="data">
                                    <p class="text-uppercase">Total Earning</p>
                                    <h4 class="font-weight-bold dark-grey-text">2000$</h4>
                                </div>
                            </div>
                            <div class="card-body card-body-cascade">
                                <div class="progress mb-3">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 25%"
                                         aria-valuenow="25"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="card-text">Better than last week (25%)</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="mb-5">
                <div class="card card-cascade narrower">
                    <section>
                        <div class="row">
                            <div class="col-xl-5 col-lg-12 mr-0 pb-2">
                                <div class="view view-cascade gradient-card-header light-blue lighten-1">
                                    <h2 class="h2-responsive mb-0 font-weight-500">Sales</h2>
                                </div>
                                <div class="card-body card-body-cascade pb-0">
                                    <div class="row py-3 pl-4">
                                        <div class="col-md-6">
                                            <p class="lead"><span class="badge info-color p-2">Data range</span></p>
                                            <select class="mdb-select colorful-select dropdown-info md-form">
                                                <option value="" disabled selected>Choose time period</option>
                                                <option value="1">Today</option>
                                                <option value="2">Yesterday</option>
                                                <option value="3">Last 7 days</option>
                                                <option value="3">Last 30 days</option>
                                                <option value="3">Last week</option>
                                                <option value="3">Last month</option>
                                            </select>
                                            <p class="lead pt-3 pb-4"><span
                                                    class="badge info-color p-2">Custom date</span></p>
                                            <div class="md-form">
                                                <input placeholder="Selected date" type="text" id="from"
                                                       class="form-control datepicker" style="margin: 50px">
                                                <label for="">From</label>
                                            </div>
                                            <div class="md-form">
                                                <input placeholder="Selected date" type="text" id="to"
                                                       class="form-control datepicker" style="margin: 50px">
                                                <label for="">To</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6 text-center pl-xl-2 my-md-0 my-3">
                                            <p>Total sales: <strong>2000$</strong>
                                                <button type="button" class="btn btn-info btn-sm p-2"
                                                        data-toggle="tooltip" data-placement="top"
                                                        title="Total sales in the given period"><i
                                                        class="fas fa-question"></i></button>
                                            </p>
                                            <p>Average sales: <strong>100$</strong>
                                                <button type="button" class="btn btn-info btn-sm p-2 mr-0"
                                                        data-toggle="tooltip"
                                                        data-placement="top"
                                                        title="Average daily sales in the given period"><i
                                                        class="fas fa-question"></i></button>
                                            </p>
                                            <span class="min-chart my-4" id="chart-sales" data-percent="76"><span
                                                    class="percent"></span></span>
                                            <h5 style="margin: 50px">
                                                <span class="badge red accent-2 p-2">Change <i
                                                        class="fas fa-arrow-circle-up ml-1"></i></span>
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-7 col-lg-12 mb-4 pb-2">
                                <div class="view view-cascade gradient-card-header blue-gradient">
                                    <canvas id="lineChart" height="175"></canvas>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section>

                        <div class="card card-cascade narrower z-depth-0">
                            <div class="view view-cascade gradient-card-header blue-gradient narrower py-2 mx-4 mb-3 d-flex justify-content-between align-items-center">
                                <div>
                                    <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2"><i
                                            class="fas fa-th-large mt-0"></i></button>
                                    <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2"><i
                                            class="fas fa-columns mt-0"></i></button>
                                </div>
                                <a href="" class="white-text mx-3">Booking</a>
                                <div>
                                    <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2"><i
                                            class="fas fa-pencil-alt mt-0"></i></button>
                                    <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2"><i
                                            class="fas fa-eraser mt-0"></i></button>
                                    <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2"><i
                                            class="fas fa-info-circle mt-0"></i></button>
                                </div>
                            </div>
                            <div class="px-4">
                                <div class="table-responsive">
                                    <table class="table table-hover mb-0">
                                        <thead>
                                        <tr>
                                            <th>
                                                <input class="form-check-input" type="checkbox" id="checkbox">
                                                <label for="checkbox" class="form-check-label mr-2 label-table"></label>
                                            </th>
                                            <th class="th-lg"><a>First Name <i class="fas fa-sort ml-1"></i></a></th>
                                            <th class="th-lg"><a>Last Name<i class="fas fa-sort ml-1"></i></a></th>
                                            <th class="th-lg"><a>Username<i class="fas fa-sort ml-1"></i></a></th>
                                            <th class="th-lg"><a>Email<i class="fas fa-sort ml-1"></i></a></th>
                                            <th class="th-lg"><a>Country<i class="fas fa-sort ml-1"></i></a></th>
                                            <th class="th-lg"><a>City<i class="fas fa-sort ml-1"></i></a></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <th scope="row">
                                                <input class="form-check-input" type="checkbox" id="checkbox1">
                                                <label for="checkbox1" class="label-table"></label>
                                            </th>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                            <td>markotto@gmail.com</td>
                                            <td>USA</td>
                                            <td>San Francisco</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <input class="form-check-input" type="checkbox" id="checkbox2">
                                                <label for="checkbox2" class="label-table"></label>
                                            </th>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                            <td>jacobt@gmail.com</td>
                                            <td>France</td>
                                            <td>Paris</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <input class="form-check-input" type="checkbox" id="checkbox3">
                                                <label for="checkbox3" class="label-table"></label>
                                            </th>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                            <td>larrybird@gmail.com</td>
                                            <td>Germany</td>
                                            <td>Berlin</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <input class="form-check-input" type="checkbox" id="checkbox4">
                                                <label for="checkbox4" class="label-table"></label>
                                            </th>
                                            <td>Paul</td>
                                            <td>Topolski</td>
                                            <td>@P_Topolski</td>
                                            <td>ptopolski@gmail.com</td>
                                            <td>Poland</td>
                                            <td>Warsaw</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <input class="form-check-input" type="checkbox" id="checkbox5">
                                                <label for="checkbox5" class="label-table"></label>
                                            </th>
                                            <td>Anna</td>
                                            <td>Doe</td>
                                            <td>@andy</td>
                                            <td>annadoe@gmail.com</td>
                                            <td>Spain</td>
                                            <td>Madrid</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <hr class="my-0">
                                <div class="d-flex justify-content-between">
                                    <select class="mdb-select colorful-select dropdown-primary md-form hidden-md-down">
                                        <option value="" disabled>Rows number</option>
                                        <option value="1" selected>5 rows</option>
                                        <option value="2">25 rows</option>
                                        <option value="3">50 rows</option>
                                        <option value="4">100 rows</option>
                                    </select>
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
                    </section>
                </div>
            </section>
            <section class="mb-5">
                <div class="row">
                    <div class="col-lg-4 col-md-12 mb-lg-0 mb-4">
                        <div class="card">
                            <div class="card-header white-text primary-color">
                                Notifications
                            </div>
                            <div class="card-body text-center px-4 mb-3">
                                <div class="list-group list-panel">
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">Thanh
                                        Nguyen send you a mess
                                        <i class="fas fa-sms ml-auto" data-toggle="tooltip" data-placement="top"
                                           title="Click to fix"></i>
                                    </a>
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">Database
                                        overloaded
                                        <i class="fas fa-times-circle ml-auto" data-toggle="tooltip"
                                           data-placement="top"
                                           title="Click to fix"></i>
                                    </a>
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">John
                                        Tran send you a mess
                                        <i class="fas fa-sms ml-auto" data-toggle="tooltip" data-placement="top"
                                           title="Click to fix"></i>
                                    </a>
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">Tomm
                                        send you a mess
                                        <i class="fas fa-sms ml-auto" data-toggle="tooltip" data-placement="top"
                                           title="Click to fix"></i>
                                    </a>
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">Server
                                        error!
                                        <i class="fas fa-times-circle ml-auto" data-toggle="tooltip"
                                           data-placement="top"
                                           title="Click to fix"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-md-0 mb-4">
                        <div class="card">
                            <div class="card-header white-text primary-color">
                                Guest review
                            </div>
                            <div class="card-body text-center px-4 mb-3">
                                <div class="list-group list-panel">
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">Awesome!!!
                                        Highly recommend
                                        <i class="fas fa-thumbs-up ml-auto" data-toggle="tooltip" data-placement="top"
                                           title="Click to fix"></i></a>
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">The
                                        price I received was good value.
                                        <i class="fas fa-thumbs-up ml-auto" data-toggle="tooltip" data-placement="top"
                                           title="Click to fix"></i></a>
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">Good....
                                        <i class="fas fa-thumbs-up ml-auto" data-toggle="tooltip" data-placement="top"
                                           title="Click to fix"></i></a>
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">Very
                                        bad service :(
                                        <i class="fas fa-thumbs-down ml-auto" data-toggle="tooltip" data-placement="top"
                                           title="Click to fix"></i></a>
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">Staff
                                        was good nd i'll come again
                                        <i class="fas fa-thumbs-up ml-auto" data-toggle="tooltip" data-placement="top"
                                           title="Click to fix"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-0">
                        <div class="card">
                            <div class="card-header white-text primary-color">
                                Todo List
                            </div>
                            <div class="card-body text-center px-4 mb-3">
                                <div class="list-group list-panel">
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">Add
                                        fees details in system
                                        <i class="fas fa-wrench ml-auto" data-toggle="tooltip" data-placement="top"
                                           title="Click to fix"></i></a>
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">Announcement
                                        for holiday
                                        <i class="fas fa-wrench ml-auto" data-toggle="tooltip" data-placement="top"
                                           title="Click to fix"></i></a>
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">call
                                        bus driver
                                        <i class="fas fa-wrench ml-auto" data-toggle="tooltip" data-placement="top"
                                           title="Click to fix"></i></a>
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">School
                                        picnic
                                        <i class="fas fa-wrench ml-auto" data-toggle="tooltip" data-placement="top"
                                           title="Click to fix"></i></a>
                                    <a href="#" class="list-group-item d-flex justify-content-between dark-grey-text">Exam
                                        time table generate
                                        <i class="fas fa-wrench ml-auto" data-toggle="tooltip" data-placement="top"
                                           title="Click to fix"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </main>
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

<script type="text/javascript" src="JavaScript/js2.js"></script>

<script src="JavaScript/js2.js"></script>
</body>
</html>

