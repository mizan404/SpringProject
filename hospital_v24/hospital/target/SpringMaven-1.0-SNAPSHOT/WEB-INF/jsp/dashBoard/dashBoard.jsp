<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Dashboard - Brand</title>
        <link rel="stylesheet" href="/resources/vendor/css/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
        <link rel="stylesheet" href="/resources/vendor/css/assets/fonts/fontawesome-all.min.css">
        <link rel="stylesheet" href="/resources/vendor/css/assets/css/untitled-1.css">
        <link rel="stylesheet" href="/resources/vendor/css/assets/css/untitled.css">

    </head>

    <body id="page-top" style="background-color: rgb(255,255,255);">
        <div id="wrapper" style="background-color: rgba(255,255,255,0);">
            <nav class="navbar navbar-dark bg-white align-items-start sidebar sidebar-dark accordion bg-gradient-primary1" style="background-color: #ffffff;width: 200px;height: 100%;">
                <div class="container-fluid d-flex flex-column p-0"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="dashboard" style="width: 80px;height: 60px;"><img src="/resources/vendor/css/assets/img/loader.gif" style="margin-top: 10px;color: rgb(159,86,86);width: 55px;"></a>
                    <ul
                        class="nav navbar-nav text-light" id="accordionSidebar">
                        <li class="nav-item" role="presentation"><a class="nav-link active" href="/dashboard"><i class="fas fa-tachometer-alt" style="color: rgba(197,1,1,0.74);"></i><span style="color: rgb(0,21,211);">Dashboard</span></a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/doctorpage"><i class="fas fa-clinic-medical" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Doctor</strong><br></span></a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/staffpage"><i class="fas fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Staff</strong><br></span></a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/departmentpage"><i class="far fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Department</strong><br></span></a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/laboratorypage"><i class="fas fa-hospital-symbol" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Laboratory</strong><br></span></a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/medicinepage"><i class="fas fa-capsules" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Medicine</strong><br></span></a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/allreport"><i class="fas fa-capsules" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Report</strong><br></span></a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/notice"><i class="fas fa-capsules" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Notice</strong><br></span></a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="/adminpage"><i class="fas fa-calendar-minus" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Admin</strong><br></span></a></li>
                    </ul>
                    <div class="text-center"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button" style="color: rgb(255,255,255);background-color: rgba(54,40,203,0.69);"></button></div>
                </div>
            </nav>
            <div class="d-flex flex-column" id="content-wrapper">
                <div id="content">
                    <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                        <div class="container-fluid">
                            <p style="color: rgb(66,87,241);font-size: 25px;margin-top: 10px;margin-bottom: 16px;margin-left: 120px;"><strong>Hospital Management And Information System</strong></p>
                            <ul class="nav navbar-nav flex-nowrap ml-auto">
                                <li class="mb-6">


                                </li>
                                <li>
                                    <c:url value="/j_spring_security_logout" var="logoutUrl" />
                                    <a href="${logoutUrl}"><button class="btn btn-primary" type="button">Logout</button></a>
                                </li>

                            </ul>
                        </div>
                    </nav>


                    <div class="container-fluid">



                        <div class="d-sm-flex justify-content-between align-items-center mb-4">
                            <h3 class="text-warning mb-0">Dashboard</h3>
                            <p class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="">


                                ${userName} 
                            </p>
                        </div>





                        <div class="row">
                            <div class="col-md-6 col-xl-3 mb-4">
                                <div class="card shadow border-left-primary py-2">
                                    <div class="card-body">
                                        <div class="row align-items-center no-gutters">
                                            <div class="col mr-2">
                                                <div class="text-uppercase text-primary font-weight-bold text-xs mb-1"><span>Total Patient (Monthly)</span></div>
                                                <div class="text-dark font-weight-bold h5 mb-0"><span>40,000</span></div>
                                            </div>
                                            <div class="col-auto"><i class="fas fa-calendar fa-2x text-gray-300"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-3 mb-4">
                                <div class="card shadow border-left-success py-2">
                                    <div class="card-body">
                                        <div class="row align-items-center no-gutters">
                                            <div class="col mr-2">
                                                <div class="text-uppercase text-success font-weight-bold text-xs mb-1"><span>Earnings (annual)</span></div>
                                                <div class="text-dark font-weight-bold h5 mb-0"><span>215,000</span></div>
                                            </div>
                                            <div class="col-auto"><i class="fas fa-dollar-sign fa-2x text-gray-300"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-3 mb-4">
                                <div class="card shadow border-left-info py-2">
                                    <div class="card-body">
                                        <div class="row align-items-center no-gutters">
                                            <div class="col mr-2">
                                                <div class="text-uppercase text-info font-weight-bold text-xs mb-1"><span>Tasks</span></div>
                                                <div class="row no-gutters align-items-center">
                                                    <div class="col-auto">
                                                        <div class="text-dark font-weight-bold h5 mb-0 mr-3"><span>50%</span></div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="progress progress-sm">
                                                            <div class="progress-bar bg-info" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;"><span class="sr-only">50%</span></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-auto"><i class="fas fa-clipboard-list fa-2x text-gray-300"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-3 mb-4">
                                <div class="card shadow border-left-warning py-2">
                                    <div class="card-body">
                                        <div class="row align-items-center no-gutters">
                                            <div class="col mr-2">
                                                <div class="text-uppercase text-warning font-weight-bold text-xs mb-1"><span>Pending Requests</span></div>
                                                <div class="text-dark font-weight-bold h5 mb-0"><span>18</span></div>
                                            </div>
                                            <div class="col-auto"><i class="fas fa-comments fa-2x text-gray-300"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
        </div>
        <script src="/resources/vendor/css/assets/js/jquery.min.js"></script>
        <script src="/resources/vendor/css/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="/resources/vendor/css/assets/js/chart.min.js"></script>
        <script src="/resources/vendor/css/assets/js/bs-init.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
        <script src="/resources/vendor/css/assets/js/theme.js"></script>
    </body>

</html>