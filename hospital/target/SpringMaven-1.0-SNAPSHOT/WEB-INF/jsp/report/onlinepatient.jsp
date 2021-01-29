
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.css"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/home/header.jsp" />



<div id="wrapper" style="background-color: rgba(255,255,255,0);">
    <nav class="navbar navbar-dark bg-white align-items-start sidebar sidebar-dark accordion bg-gradient-primary1" style="background-color: #ffffff;width: 200px;height: 100%; margin-top: 80px;">
        <div class="container-fluid d-flex flex-column p-0">
            <!--            <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="dashboard" style="width: 80px;height: 60px;">
                            <img src="/resources/vendor/css/assets/img/loader.gif" style="margin-top: 10px;color: rgb(159,86,86);width: 55px;"></a>-->
            <ul
                class="nav navbar-nav text-light" id="accordionSidebar">
                <li class="nav-item" role="presentation"><a class="nav-link active" href="dashboard"><i class="fas fa-tachometer-alt" style="color: rgba(197,1,1,0.74);"></i><span style="color: rgb(0,21,211);">Dashboard</span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="doctorpage"><i class="fas fa-clinic-medical" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Doctor Report</strong><br></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="staffpage"><i class="fas fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Staff</strong><br></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="departmentpage"><i class="far fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Department</strong><br></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="laboratorypage"><i class="fas fa-hospital-symbol" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Laboratory</strong><br></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="medicinepage"><i class="fas fa-capsules" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Medicine</strong><br></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="/allreport"><i class="fas fa-capsules" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Report</strong><br></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="adminpage"><i class="fas fa-calendar-minus" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Admin</strong><br></span></a></li>
            </ul>
            <div class="text-center"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button" style="color: rgb(255,255,255);background-color: rgba(54,40,203,0.69);"></button></div>
        </div>
    </nav>
    <div class="d-flex flex-column" id="content-wrapper">
        <div id="content">
            <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                <div class="container-fluid">
                    <!--<p style="color: rgb(66,87,241);font-size: 25px;margin-top: 10px;margin-bottom: 16px;margin-left: 120px;"><strong>Hospital Management And Information System</strong></p>-->
                    <ul class="nav navbar-nav flex-nowrap ml-auto">
                        <li class="mb-6">


                        </li>
                        <li>

                        </li>

                    </ul>
                </div>
            </nav>


            <div class="container-fluid">



                <div class="d-sm-flex justify-content-between align-items-center mb-4">
                    <h3 class="text-warning mb-0">Patient By Department Report Page</h3>
                    <!--                    <p class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="">
                    
                    
                    ${userName} 
</p>-->
                    <p> <c:url value="/j_spring_security_logout" var="logoutUrl" />
                        <a href="${logoutUrl}"><button class="btn btn-primary" type="button">Logout</button></a></p>
                </div>

                <div class = "container-fluid" >
                    <!--                    <div class="row-cols-4">
                                            <form action="/physicalappointment/pd" method="post">
                                                                            <select class="form-control" name="patient_problem" >
                                                
                                                                                <option value="Cardiology" >Cardiology</option>
                                                                                <option value="Diagnostic imaging" >Diagnostic imaging</option>
                                                                                <option value="Discharge lounge" >Discharge lounge</option>
                                                                                <option value="Ear nose and throat" >Ear nose and throat</option>
                                                                                <option value="General surgery" >General surgery</option>
                                                                                <option value="Gynaecology" >Gynaecology</option>
                                                                                <option value="Haematology" >Haematology</option>
                                                                                <option value="Nephrology" >Nephrology</option>
                                                
                                                                            </select>
                    
                                                <input type="text" name="patient_nid"/> 
                                                <input type="submit" class="btn btn-primary mt-3" value="Search"/>
                    
                                            </form> 
                                        </div>-->

                    <hr/>
                    <table class = "table table-striped table-bordered" id="datatable">
                        <thead>
                            <tr class = "thead-dark">
                                <th>Patient ID</th>
                                <th>Patient NID</th>
                                <th>Problem</th>
                                <th>Contact Number</th>
                                <th>Appointment Date</th>

                                <!--<th>Actions</th>-->
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${map.appointments}" var="appointment">
                                <tr>
                                    <td>${appointment.id}</td>
                                    <td>${appointment.patient_nid}</td>
                                    <td>${appointment.contact_number}</td>
                                    <td>${appointment.patient_problem}</td>
                                    <td>${appointment.appointmentDate}</td>
                                    <!--                                    <td> 
                                                                            <a href = "${pageContext.request.contextPath}/EmployeeController?action=EDIT&id=${employee.id}">Edit</a> 
                                                                            |
                                                                            <a href = "${pageContext.request.contextPath}/EmployeeController?action=DELETE&id=${employee.id}">Delete</a> 
                                                                        </td>-->
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>




            </div>
        </div>
    </div>

</div>



<jsp:include page="/WEB-INF/jsp/common/home/footer.jsp" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js"></script>
<script>
    $(document).ready(function () {
        $("#datatable").DataTable();
    })
</script>
