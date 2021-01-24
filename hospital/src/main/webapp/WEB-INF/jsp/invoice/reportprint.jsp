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
                        <p class="text-center">REPORT SLIP INVOICE</p>
                    </div>
                </div>

                <!--------------------------------------->
                <form action=""> 
                    <div class="row" style="font-size: 10px;">
                        <div class="col">
                            <p class="text-uppercase" style="font-size: 20px;margin-bottom: 0px;margin-top: 10px;">
                                <strong>Invoice :&nbsp;</strong>INV-<input type="text" style="width: 150px;" name="id" id="id"/><br></p>
                        </div>
                        <div class="col text-center"><button class="btn btn-light border rounded-0" type="button" id="btnSearch" ><strong>Search Patient Test</strong></button></div>
                        <div class="col">
                            <p class="text-uppercase" style="font-size: 20px;margin-bottom: 0px;margin-top: 10px;">Date :&nbsp;<input type="text" name="date" style="width: 150px;" id="date"/></p>
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
                                            <td><input class="form-control-lg" type="text" style="width: 320px;" id="patient_nid"/></td>
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
                                            <td><input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="patient_name" /></td>
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
                                            <td><input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="patient_age"/></td>
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
                                            <td class="text-left" style="width: 173px;padding: 13px;font-size: 20px;">Address:&nbsp;</td>
                                            <td><input class="form-control-plaintext" type="text" readonly="" style="padding-top: 0px;padding-bottom: 0px;font-size: 20px;" id="patient_address"/></td>
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
                                            <td><input type="text" style="width: 400px;" id="test1"/></td>
                                            <td><input type="text" style="width: 190px;" id="test_result1" /></td>
                                            <td><input type="text" style="width: 190px;"></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td><input type="text" style="width: 400px;" id="test2"/></td>
                                            <td><input type="text" style="width: 190px;"></td>
                                            <td><input type="text" style="width: 190px;"></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td><input type="text" style="width: 400px;" id="test3"/></td>
                                            <td><input type="text" style="width: 190px;"></td>
                                            <td><input type="text" style="width: 190px;"></td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td><input type="text" style="width: 400px;" id="test4"/></td>
                                            <td><input type="text" style="width: 190px;"></td>
                                            <td><input type="text" style="width: 190px;"></td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td><input type="text" style="width: 400px;" id="test5"/></td>
                                            <td><input type="text" style="width: 190px;"></td>
                                            <td><input type="text" style="width: 190px;"></td>
                                        </tr>

                                    </tbody>
                                    <input type="hidden"  name="crmId" id="crmId"/>
                                    <input type="hidden"  name="crmFirstName" id="crmFirstName"/>
                                    <input type="hidden"  name="crmLastName" id="crmLastName"/>
                                    <input type="hidden"  name="role" id="role"/>
                                    <input type="hidden"  name="profile" id="profile"/>
                                    <input type="hidden"  name="crmEmail" id="crmEmail"/>
                                    <input type="hidden"  name="crmMobile" id="crmMobile"/>
                                    <input type="hidden"  name="crmFax" id="crmFax"/>
                                    <input type="hidden"  name="crmWebsite" id="crmWebsite"/>
                                    <input type="hidden"  name="dateOfBirth" id="dateOfBirth"/>
                                    <input type="hidden"  name="crmStreet" id="crmStreet"/>
                                    <input type="hidden"  name="crmCity" id="crmCity"/>
                                    <input type="hidden"  name="crmState" id="crmState"/>
                                    <input type="hidden"  name="crmZipCode" id="crmZipCode"/>
                                    <input type="hidden"  name="crmCountry" id="crmCountry"/>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="margin-right: 0px;margin-left: 0px;margin-top: 10px;">
                        <div class="col" style="margin-bottom: 20px;">
                            <p>Prepared By:&nbsp;</p>
                        </div>
                        <div class="col-3 text-center" style="margin-bottom: 20px;padding: 0px;">
                            <p></p><button class="btn btn-primary text-center" type="submit" onclick="myFunction()" style="padding: 10px;">Print &amp; Save</button></div>
                    </div>
                </form>
                <!----------------------------------------->
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
//            alert(data); 
            $("#patient_name").val(data.patient_name);
            $("#id").val(data.id);
            $("#date").val(data.date);
            $("#patient_age").val(data.patient_age);
            $("#patient_gender").val(data.patient_gender);
            $("#patient_address").val(data.patient_address);

            $("#test1").val(data.test1);
            $("#test2").val(data.test2);
            $("#test3").val(data.test3);
            $("#test4").val(data.test4);
            $("#test5").val(data.test5);

        });
    });
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $("button").click(function () {
            $.post("demo_test_post.asp",
                    {
                        name: "Donald Duck",
                        city: "Duckburg"
                    },
            function (data, status) {
                alert("Data: " + data + "\nStatus: " + status);
            });
        });
    });
</script>