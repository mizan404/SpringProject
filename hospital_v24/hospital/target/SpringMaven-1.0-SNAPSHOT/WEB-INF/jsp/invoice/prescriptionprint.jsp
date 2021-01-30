<jsp:include page="/WEB-INF/jsp/common/home/header.jsp" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="wrapper">
    <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bgm" >
        <div class="container-fluid d-flex flex-column p-0">
            <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="">
                <!--<div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>-->
                <div class="sidebar-brand-text mx-3"><span>Admin</span></div>
            </a>
            <hr class="sidebar-divider my-0">
            <ul
                class="nav navbar-nav text-light" id="accordionSidebar">
                <!--                <li class="nav-item" role="presentation"><a class="nav-link active" href="/staff/dashboard"><i class="fas fa-tachometer-alt" style="color: rgba(197,1,1,0.74);"></i><span style="color: rgb(0,21,211);">Dashboard</span></a></li>
                                <li class="nav-item" role="presentation"><a class="nav-link" href="/staff/appointmentform"><i class="fas fa-clinic-medical" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Appointment Form</strong><br></span></a></li>
                                <li class="nav-item" role="presentation"><a class="nav-link" href="/onlineappointment/list"><i class="fas fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Online Appointment List</strong><br></span></a></li>
                                <li class="nav-item" role="presentation"><a class="nav-link" href="/inviocelist"><i class="fas fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Invoice List</strong><br></span></a></li>
                            </ul>-->
                <li class="nav-item" role="presentation"><a class="nav-link" href="/doctor/dashboard"><i class="fas fa-clinic-medical" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Waiting List</strong><br></span></a></li>

                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
        </div>
    </nav>
    <div class="d-flex flex-column" id="content-wrapper">
        <div id="content">
            <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>

                    <nav class="navbar navbar-light  ">
                        <div class="container">
                            <p style="color: rgb(66,87,241);font-size: 20px; float: left"><strong>Hospital Management And Information System </strong></p>
                            <ul class="nav navbar-nav flex-nowrap ml-auto">

                            </ul>
                        </div>
                    </nav>
                    <ul class="nav navbar-nav flex-nowrap ml-auto">
                        <div class="d-none d-sm-block topbar-divider"></div>
                        <li class="nav-item dropdown no-arrow" role="presentation"><a class="nav-link" href="#"><button class="btn btn-primary" type="button">Logout</button></a></li>
                    </ul>
                </div>
            </nav>

            <!------------------------->

            <div class="container" style="margin-bottom: 10px;">
                <div class="row">
                    <div class="col">
                        <p class="text-center" style="font-size: 25px;"><strong>Hospital Management &amp; Information System</strong></p>
                        <p class="text-center">PRESCRIPTION SLIP INVOICE</p>
                    </div>
                </div>
                <div class="row" style="font-size: 10px;">
                    <div class="col">
                        <p class="text-uppercase" style="font-size: 20px;margin-bottom: 0px;margin-top: 10px;"><strong>Invoice :</strong>INV-<input type="text" style="width: 150px;" name="id" id="id"><br></p>
                    </div>
                    <div class="col text-center"><button class="btn btn-light border rounded-0" type="button" id="btnSearch" ><strong>Search Patient Prescription</strong></button></div>
                    <div class="col">
                        <p class="text-uppercase" style="font-size: 20px;margin-bottom: 0px;margin-top: 10px;">Date :<input type="text" style="width: 150px;" name="date" id="date" /></p>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr></tr>
                                </thead>
                                <tbody class="text-left">
                                    <tr class="text-left">
                                        <td class="text-left" style="width: 150px;padding: 13px;font-size: 20px;"><strong>Patient NID:</strong></td>
                                        <td>
                                            <input class="form-control-lg" type="text" style="width: 310px;" id="patient_nid"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr></tr>
                                </thead>
                                <tbody class="text-left">
                                    <tr class="text-left">
                                        <td class="text-left" style="width: 160px;padding: 13px;font-size: 20px;">Patient Name:</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="patient_name"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr></tr>
                                </thead>
                                <tbody class="text-left">
                                    <tr class="text-left">
                                        <td class="text-left" style="width: 150px;padding: 13px;font-size: 20px;">Age:</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="patient_age" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr></tr>
                                </thead>
                                <tbody class="text-left">
                                    <tr class="text-left">
                                        <td class="text-left" style="width: 170px;padding: 13px;font-size: 20px;">Gender:</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="patient_gender"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr></tr>
                                </thead>
                                <tbody class="text-left">
                                    <tr class="text-left">
                                        <td class="text-left" style="width: 173px;padding: 13px;font-size: 20px;">Address:</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="patient_address"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr></tr>
                                </thead>
                                <tbody class="text-left">
                                    <tr class="text-left">
                                        <td class="text-left" style="width: 173px;padding: 13px;font-size: 20px;">Temperature:&nbsp;</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="temperature"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr></tr>
                                </thead>
                                <tbody class="text-left">
                                    <tr class="text-left">
                                        <td class="text-left" style="width: 100px;padding: 13px;font-size: 20px;">Weight:&nbsp;</td>
                                        <td>
                                            <input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="weight"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr></tr>
                                </thead>
                                <tbody class="text-left">
                                    <tr class="text-left">
                                        <td class="text-left" style="width: 100px;padding: 13px;font-size: 20px;">B.P:&nbsp;</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="blood_pressure"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="font-size: 20px;">Patient Diagnosis</p>
                    </div>
                    <div class="col">
                        <p style="font-size: 20px;">Patient Medicine</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th style="width: 30px;">#</th>
                                        <th>Problem</th>
                                        <th style="width: 90px;">Duration</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td><input class="form-control-plaintext" type="text" readonly=""  id="symptom1"/></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;"  id="symptom_duration1"/></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" id="symptom2"/></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;" id="symptom_duration2"/></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td><input class="form-control-plaintext" type="text" readonly=""id="symptom3" /></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;" id="symptom_duration3"/></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" id="symptom4" /></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;"id="symptom_duration4"/></td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" id="symptom5"/></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;" id="symptom_duration5"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th style="width: 30px;">#</th>
                                        <th style="width: 180px;">Medicine</th>
                                        <th style="width: 180px;">Dose</th>
                                        <th style="width: 130px;">Duration</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 190px;" id="medicine1"/></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;" id="medicine_dose1"/></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;" id="medicine_duration1"/></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 190px;" id="medicine2"/></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;" id="medicine_dose2"/></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;" id="medicine_duration2"/></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 190px;" id="medicine3"/></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;" id="medicine_dose3"/></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;" id="medicine_duration3"/></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 190px;" id="medicine4"/></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;" id="medicine_dose4"/></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;" id="medicine_duration4"/></td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 190px;" id="medicine5"/></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;" id="medicine_dose5"/></td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;" id="medicine_duration5"/></td>
                                    </tr>
                                    <!--                                    <tr>
                                                                            <td>2</td>
                                                                            <td><input class="form-control-plaintext" type="text" readonly="" style="width: 190px;"></td>
                                                                            <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;"></td>
                                                                            <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>3</td>
                                                                            <td><input class="form-control-plaintext" type="text" readonly="" style="width: 190px;"></td>
                                                                            <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;"></td>
                                                                            <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>4</td>
                                                                            <td><input class="form-control-plaintext" type="text" readonly="" style="width: 190px;"></td>
                                                                            <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;"></td>
                                                                            <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>5</td>
                                                                            <td><input class="form-control-plaintext" type="text" readonly="" style="width: 190px;"></td>
                                                                            <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;"></td>
                                                                            <td><input class="form-control-plaintext" type="text" readonly="" style="width: 120px;"></td>
                                                                        </tr>
                                                                    </tbody>-->
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="font-size: 20px;">Patient Test</p>
                    </div>
                </div>
                <div class="row" style="margin-right: 0px;margin-left: 0px;margin-top: 10px;">
                    <div class="col">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th style="width: 20px;">#</th>
                                        <th>Test Name</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" id="test1"/></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" id="test2"/></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" id="test3"/></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" id="test4"/></td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td><input class="form-control-plaintext" type="text" readonly="" id="test5"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-right: 0px;margin-left: 0px;margin-top: 10px;">
                    <div class="col" style="margin-bottom: 20px;">
                        <input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 12px;" id="doctor_name"/>
                        <input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 12px;" id="doctor_degree"/>
                        <input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 12px;" id="doctor_designation"/>
                        <input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 12px;" id="hospital_name"/>


                    </div>
                    <div class="col-3" style="margin-bottom: 20px;">
                        <button class="btn btn-primary hidden-print" onclick="myFunction()" > Print</button>

                    </div>
                </div>
            </div>

            <!-------------------------------->




        </div>

    </div>
</div>





<script>
    function myFunction() {
        window.print();
    }
</script>




<jsp:include page="/WEB-INF/jsp/common/home/footer.jsp" />

<script>

    $("#btnSearch").click(function () {
        $.get("http://localhost:8080/getPrescriptionByNid/" + $("#patient_nid").val(), function (data, status) {
            //            console.log(data);
            //alert(data);
            //var d = JSON.stringify(data)
            //            console.log(data.patient_name)
            $("#patient_name").val(data.patient_name);
            $("#id").val(data.id);
            $("#date").val(data.date);
            $("#patient_age").val(data.patient_age);
            $("#patient_gender").val(data.patient_gender);
            $("#patient_address").val(data.patient_address);
            $("#temperature").val(data.temperature);
            $("#weight").val(data.weight);
            $("#blood_pressure").val(data.blood_pressure);
            $("#doctor_nid").val(data.doctor_nid);
            $("#doctor_name").val(data.doctor_name);
            $("#doctor_degree").val(data.doctor_degree);
            $("#doctor_designation").val(data.doctor_designation);
            $("#hospital_name").val(data.hospital_name);

            $("#symptom1").val(data.symptom1);
            $("#symptom2").val(data.symptom2);
            $("#symptom3").val(data.symptom3);
            $("#symptom4").val(data.symptom4);
            $("#symptom5").val(data.symptom5);

            $("#symptom_duration1").val(data.symptom_duration1);
            $("#symptom_duration2").val(data.symptom_duration2);
            $("#symptom_duration3").val(data.symptom_duration3);
            $("#symptom_duration4").val(data.symptom_duration4);
            $("#symptom_duration5").val(data.symptom_duration5);

            $("#medicine1").val(data.medicine1);
            $("#medicine2").val(data.medicine2);
            $("#medicine3").val(data.medicine3);
            $("#medicine4").val(data.medicine4);
            $("#medicine5").val(data.medicine5);

            $("#medicine_dose1").val(data.medicine_dose1);
            $("#medicine_dose2").val(data.medicine_dose2);
            $("#medicine_dose3").val(data.medicine_dose3);
            $("#medicine_dose4").val(data.medicine_dose4);
            $("#medicine_dose5").val(data.medicine_dose5);

            $("#medicine_duration1").val(data.medicine_duration1);
            $("#medicine_duration2").val(data.medicine_duration2);
            $("#medicine_duration3").val(data.medicine_duration3);
            $("#medicine_duration4").val(data.medicine_duration4);
            $("#medicine_duration5").val(data.medicine_duration5);

            $("#test1").val(data.test1);
            $("#test2").val(data.test2);
            $("#test3").val(data.test3);
            $("#test4").val(data.test4);
            $("#test5").val(data.test5);





        });
    });
</script>