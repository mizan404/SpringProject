<jsp:include page="/WEB-INF/jsp/common/home/header.jsp" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="wrapper">
    <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bgm" >
        <div class="container-fluid d-flex flex-column p-0">
            <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="">
                <!--<div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>-->

            </a>
            <hr class="sidebar-divider my-0">
            <ul
                class="nav navbar-nav text-light" id="accordionSidebar">
                <!--            <li class="nav-item" role="presentation"><a class="nav-link active" href="/staff/dashboard"><i class="fas fa-tachometer-alt" style="color: rgba(197,1,1,0.74);"></i><span style="color: rgb(0,21,211);">Dashboard</span></a></li>
                                <li class="nav-item" role="presentation"><a class="nav-link" href="/staff/appointmentform"><i class="fas fa-clinic-medical" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Appointment Form</strong><br></span></a></li>
                                <li class="nav-item" role="presentation"><a class="nav-link" href="/onlineappointment/list"><i class="fas fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Online Appointment List</strong><br></span></a></li>
                                <li class="nav-item" role="presentation"><a class="nav-link" href="/inviocelist"><i class="fas fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Invoice List</strong><br></span></a></li>
                -->

                <li class="nav-item" role="presentation"><a class="nav-link" href="/staffdashboard"><i class="fas fa-clinic-medical" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Dashboard</strong><br></span></a></li>
            </ul> 
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
                        <p class="text-center">REPORT SLIP INVOICE</p>
                    </div>
                </div>

                <!--------------------------------------->
                <form action="/reportSave" method="post"> 
                    <div class="row" style="font-size: 10px;">
                        <div class="col">

                            <input class="form-control" type="text" style="width: 150px;" id="id"/><br>
                        </div>
                        <div class="col text-center"><button class="btn btn-light border rounded-0" type="button" id="btnSearch" ><strong>Search Patient Test</strong></button></div>
                        <div class="col">
                            <input class="form-control" type="text" name="date" style="width: 120px;" id="date" placeholder="DATE"/><br>
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
                                            <td class="text-left" style="width: 160px;padding: 13px;font-size: 20px;"><strong>Patient NID:&nbsp;</strong></td>
                                            <td><input class="form-control-lg" type="text" style="width: 320px;" id="patient_nid" name="patient_nid"/></td>
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
                                            <td class="text-left" style="width: 160px;padding: 13px;font-size: 20px;">Name:&nbsp;</td>
                                            <td><input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="patient_name" name="patient_name" /></td>
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
                                            <td class="text-left" style="width: 150px;padding: 13px;font-size: 20px;">Age:&nbsp;</td>
                                            <td><input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="patient_age" name="patient_age"/></td>
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
                                            <td class="text-left" style="width: 170px;padding: 13px;font-size: 20px;">Gender:&nbsp;</td>
                                            <td><input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="patient_gender" name="patient_gender"/></td>
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
                                            <td class="text-left" style="width: 173px;padding: 13px;font-size: 20px;">Address:&nbsp;</td>
                                            <td><input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="patient_address" name="patient_address"/></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p style="font-size: 20px;">Patient Test Result</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th style="width: 30px;">#</th>
                                            <th style="width: 450px;">Problem</th>
                                            <th style="width: 200px;">Result</th>
                                            <th style="width: 200px;">Reference Value</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td><input class="form-control" type="text" style="width: 400px;" id="test1" name="test1"/></td>
                                            <td><input class="form-control" type="text" style="width: 190px;" id="testReport1" name="testReport1"/></td>
                                            <td><input class="form-control" type="text" style="width: 190px;"></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td><input class="form-control" type="text" style="width: 400px;" id="test2" name="test2"/></td>
                                            <td><input class="form-control" type="text" style="width: 190px;" id="testReport2" name="testReport2"/></td>
                                            <td><input class="form-control" type="text" style="width: 190px;"></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td><input class="form-control" type="text" style="width: 400px;" id="test3" name="test3"/></td>
                                            <td><input class="form-control" type="text" style="width: 190px;" id="testReport3" name="testReport3"/></td>
                                            <td><input class="form-control" type="text" style="width: 190px;"></td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td><input class="form-control" type="text" style="width: 400px;" id="test4" name="test4"/></td>
                                            <td><input class="form-control" type="text" style="width: 190px;" id="testReport4" name="testReport4"/></td>
                                            <td><input class="form-control" type="text" style="width: 190px;"></td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td><input class="form-control" style="width: 400px;" id="test5" name="test5"/></td>
                                            <td><input class="form-control" style="width: 190px;" id="testReport5" name="testReport5"/></td>
                                            <td><input class="form-control" style="width: 190px;"></td>
                                        </tr>

                                    </tbody>
                                    <input type="hidden"  name="temperature" id="temperature"/>
                                    <input type="hidden"  name="weight" id="weight"/>
                                    <input type="hidden"  name="blood_pressure" id="blood_pressure"/>
                                    <input type="hidden"  name="date" id="date"/>

                                    <input type="hidden"  name="doctor_nid" id="doctor_nid"/>
                                    <input type="hidden"  name="doctor_name" id="doctor_name"/>
                                    <input type="hidden"  name="doctor_degree" id="doctor_degree"/>
                                    <input type="hidden"  name="doctor_designation" id="doctor_designation"/>
                                    <input type="hidden"  name="hospital_name" id="hospital_name"/>


                                    <input type="hidden"  name="symptom1" id="symptom1"/>
                                    <input type="hidden"  name="symptom2" id="symptom2"/>
                                    <input type="hidden"  name="symptom3" id="symptom3"/>
                                    <input type="hidden"  name="symptom4" id="symptom4"/>
                                    <input type="hidden"  name="symptom5" id="symptom5"/>

                                    <input type="hidden"  name="symptom_duration1" id="symptom_duration1"/>
                                    <input type="hidden"  name="symptom_duration2" id="symptom_duration2"/>
                                    <input type="hidden"  name="symptom_duration3" id="symptom_duration3"/>
                                    <input type="hidden"  name="symptom_duration4" id="symptom_duration4"/>
                                    <input type="hidden"  name="symptom_duration5" id="symptom_duration5"/>


                                    <input type="hidden"  name="medicine1" id="medicine1"/>
                                    <input type="hidden"  name="medicine2" id="medicine2"/>
                                    <input type="hidden"  name="medicine3" id="medicine3"/>
                                    <input type="hidden"  name="medicine4" id="medicine4"/>
                                    <input type="hidden"  name="medicine5" id="medicine5"/>

                                    <input type="hidden"  name="medicine_dose1" id="medicine_dose1"/>
                                    <input type="hidden"  name="medicine_dose2" id="medicine_dose2"/>
                                    <input type="hidden"  name="medicine_dose3" id="medicine_dose3"/>
                                    <input type="hidden"  name="medicine_dose4" id="medicine_dose4"/>
                                    <input type="hidden"  name="medicine_dose5" id="medicine_dose5"/>

                                    <input type="hidden"  name="medicine_duration1" id="medicine_duration1"/>
                                    <input type="hidden"  name="medicine_duration2" id="medicine_duration2"/>
                                    <input type="hidden"  name="medicine_duration3" id="medicine_duration3"/>
                                    <input type="hidden"  name="medicine_duration4" id="medicine_duration4"/>
                                    <input type="hidden"  name="medicine_duration5" id="medicine_duration5"/>


                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="margin-right: 0px;margin-left: 0px;margin-top: 10px;">
                        <div class="col" style="margin-bottom: 20px;">
                            <input  class="form-control-plaintext" type="text"  name="doctor_name" id="doctor_name"/>
                            <input  class="form-control-plaintext" type="text"  name="doctor_degree" id="doctor_degree"/>
                            <input  class="form-control-plaintext" type="text"  name="doctor_designation" id="doctor_designation"/>
                            <input  class="form-control-plaintext" type="text"  name="hospital_name" id="hospital_name"/>
                        </div>
                        <div class="col-3 text-center" style="margin-bottom: 20px;padding: 0px;">
                            <p></p><button class="btn btn-primary text-center" type="button" onclick="myFunction1()" style="padding: 10px;">Print</button>
                        </div>
                        <div class="col-3 text-center" style="margin-bottom: 20px;padding: 0px;">
                            <p></p><button class="btn btn-primary text-center" type="submit" onclick="myFunction()" style="padding: 10px;">Save</button>
                        </div>
                    </div>
                </form>
                <!----------------------------------------->
            </div>
            <!-------------------------------->




        </div>

    </div>
</div>






<script>
    function myFunction1() {
        window.print();
    }
</script>




<jsp:include page="/WEB-INF/jsp/common/home/footer.jsp" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!------------------------------------------------------------------------------>
<!--Search Patient Details for Test Lists-->
<script>

    $("#btnSearch").click(function () {
        $.get("http://localhost:8080/getPrescriptionByNid/" + $("#patient_nid").val(), function (data, status) {
//            console.log(data);
//            alert(data); 
            $("#patient_name").val(data.patient_name);
            $("#id").val(data.id);
            $("#date").val(data.date);
            $("#patient_age").val(data.patient_age);
            $("#patient_gender").val(data.patient_gender);
            $("#patient_address").val(data.patient_address);
            $("#temperature").val(data.temperature);
            $("#weight").val(data.weight);
            $("#blood_pressure").val(data.blood_pressure);
            $("#date").val(data.date);
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

<!------------------------------------------------------------------------------>
<!-- Post Rest API to CenterDatabase-->

<script>
    function myFunction() {

        $.get("http://localhost:8080/info/getPatientReportByNid",
                {
                    patient_nid: $("#patient_nid").val(),
                    patient_name: $("#patient_name").val(),
                    patient_age: $("#patient_age").val(),
                    patient_gender: $("#patient_gender").val(),
                    patient_address: $("#patient_address").val(),
                    temperature: $("#temperature").val(),
                    weight: $("#weight").val(),
                    blood_pressure: $("#blood_pressure").val(),
                    date: $("#date").val(),
                    doctor_nid: $("#doctor_nid").val(),
                    doctor_name: $("#doctor_name").val(),
                    doctor_degree: $("#doctor_degree").val(),
                    doctor_designation: $("#doctor_designation").val(),
                    hospital_name: $("#hospital_name").val(),
                    symptom1: $("#symptom1").val(),
                    symptom2: $("#symptom2").val(),
                    symptom3: $("#symptom3").val(),
                    symptom4: $("#symptom4").val(),
                    symptom5: $("#symptom5").val(),
                    symptom_duration1: $("#symptom_duration1").val(),
                    symptom_duration2: $("#symptom_duration2").val(),
                    symptom_duration3: $("#symptom_duration3").val(),
                    symptom_duration4: $("#symptom_duration4").val(),
                    symptom_duration5: $("#symptom_duration5").val(),
                    medicine1: $("#medicine1").val(),
                    medicine2: $("#medicine2").val(),
                    medicine3: $("#medicine3").val(),
                    medicine4: $("#medicine4").val(),
                    medicine5: $("#medicine5").val(),
                    medicine_dose1: $("#medicine_dose1").val(),
                    medicine_dose2: $("#medicine_dose2").val(),
                    medicine_dose3: $("#medicine_dose3").val(),
                    medicine_dose4: $("#medicine_dose4").val(),
                    medicine_dose5: $("#medicine_dose5").val(),
                    medicine_duration1: $("#medicine_duration1").val(),
                    medicine_duration2: $("#medicine_duration2").val(),
                    medicine_duration3: $("#medicine_duration3").val(),
                    medicine_duration4: $("#medicine_duration4").val(),
                    medicine_duration5: $("#medicine_duration5").val(),
                    test1: $("#test1").val(),
                    test2: $("#test2").val(),
                    test3: $("#test3").val(),
                    test4: $("#test4").val(),
                    test5: $("#test5").val(),
                    testReport1: $("#testReport1").val(),
                    testReport2: $("#testReport2").val(),
                    testReport3: $("#testReport3").val(),
                    testReport4: $("#testReport4").val(),
                    testReport5: $("#testReport5").val()

                },
        function (data, status) {
            alert("Data: " + data + "\nStatus: " + status);
        });
    }




</script>