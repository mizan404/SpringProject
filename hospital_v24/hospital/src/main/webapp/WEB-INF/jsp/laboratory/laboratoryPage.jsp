<jsp:include page="/WEB-INF/jsp/common/home/header.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <li class="nav-item" role="presentation"><a class="nav-link active" href="dashboard"><i class="fas fa-tachometer-alt" style="color: rgba(197,1,1,0.74);"></i><span style="color: rgb(0,21,211);">Dashboard</span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="doctorpage"><i class="fas fa-clinic-medical" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Doctor</strong><br></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="staffpage"><i class="fas fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Staff</strong><br></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="departmentpage"><i class="far fa-user" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Department</strong><br></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="laboratorypage"><i class="fas fa-hospital-symbol" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Laboratory</strong><br></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="medicinepage"><i class="fas fa-capsules" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Medicine</strong><br></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="adminpage"><i class="fas fa-calendar-minus" style="color: rgba(197,1,1,0.74);"></i><span style="color: #0e20c2;"><strong>Admin</strong><br></span></a></li>
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
            <div class="container-fluid">
                <div class="container my-4">
                    <div class="d-sm-flex justify-content-between align-items-center mb-4">
                        <h3 class="text-warning mb-0">Laboratory</h3>
                        <p class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="">


                            ${userName} 
                        </p>
                    </div>
                    <div class="row">
                        <!-- Grid column -->
                        <div class="col-xl-12 mb-4 mb-xl-0">
                            <!-- Section: Live preview -->


                            <section>
                                <div class="container-fluid">
                                    <div class="container mt-5">
                                        <div><h4 class="p-0 m-0 pb-3 d-flex justify-content-center">Insert Laboratory Details</h4></div>
                                        <form action="/laboratory/save" method="post">
                                            <div class="form-row p-0 m-0">
                                                <div class="col-lg-6 col-xl-6 p-0 m-0 p-3">
                                                    <!--<div class="form-group"><input class="form-control" type="number" placeholder="Admin Id" name="adminid"  nullable = true></div>-->
                                                    <!--<div class="form-group"><input class="form-control" type="text" placeholder="Medicine NID" name="admin_nid"/></div>-->
                                                    <!--<div class="form-group"><input class="form-control" type="text" placeholder="Test Category" name="medicine_name"/></div-->
                                                    <div class="form-group">

                                                        <!--                                                        <select class="form-control" name="doctor_department">
                                                                                                                    <optgroup label="Select A Doctor Department">
                                                                                                                        <option value="12" >This is item 1</option>
                                                                                                                        <option value="13">This is item 2</option>
                                                                                                                        <option value="14">This is item 3</option>
                                                                                                                    </optgroup>
                                                                                                                </select>-->
                                                    </div> 
                                                    <div class="form-group">
                                                        <select name="" class="form-control"  style="width:98%">
                                                            <option value="0" >Choose A Test Category</option>

                                                            <option value="BIOCHEMISTRY" >BIOCHEMISTRY </option>

                                                            <option value="BMD" >BMD</option>

                                                            <option value="CBCT" >CBCT</option>
                                                            <option value="CLINICAL PATHOLOGY" >CLINICAL PATHOLOGY </option>
                                                            <option value="COLONOSCOPY" >COLONOSCOPY</option>
                                                            <option value="COLOR DOPPLER" >COLOR DOPPLER</option>
                                                            <option value="COVID PCR LAB" >COVID PCR LAB</option>
                                                            <option value="CT SCAN" >CT SCAN </option>
                                                            <option value="CYTOPATHOLOGY" >CYTOPATHOLOGY</option>
                                                            <option value="DIAGNOSTIC CHARGES" >DIAGNOSTIC CHARGES</option>
                                                            <option value="ECG" >ECG</option>
                                                            <option value="ECHO" >ECHO</option>
                                                            <option value="EEG" >EEG</option>
                                                            <option value="EMG" >EMG</option>
                                                            <option value="ENDOSCOPY" >ENDOSCOPY</option>
                                                            <option value="ETT" >ETT</option>
                                                            <option value="FIBROSCAN" >FIBROSCAN</option>
                                                            <option value="HAEMATOLOGY" >HAEMATOLOGY</option>
                                                            <option value="HISTOPATHOLOGY" >HISTOPATHOLOGY</option>
                                                            <option value="IMMUNOLOGY" >IMMUNOLOGY</option>
                                                            <option value="MAMMOGRAPHY" >MAMMOGRAPHY</option>
                                                            <option value="MICROBIOLOGY" >MICROBIOLOGY</option>

                                                            <option value="MRI" >MRI </option>
                                                            <option value="NCV" >NCV</option>


                                                            <option value="PATHOLOGY" >PATHOLOGY</option>
                                                            <option value="PFT" >PFT</option>
                                                            <option value="RADIOLOGY" >RADIOLOGY</option>
                                                            <option value="REGISTRATION" >REGISTRATION</option>
                                                            <option value="ULTRASOUND" >ULTRASOUND</option>
                                                            <option value="UROFLOWETERY" >UROFLOWETERY</option>



                                                            <option value="X-RAY" >X-RAY </option>
                                                        </select>


                                                    </div>

                                                    <div class="form-group">
                                                        <!--<input class="form-control" type="text" placeholder="Test Name" name="generic_group"/>-->

                                                        <select name=""  class="form-control chosen" style="width:98%">
                                                            <option value="Anesthesia for CT.Scan of Brain"  selected >Anesthesia for CT.Scan of Brain</option>
                                                            <option value="Anesthesia for CT.Scan of Brain+PNS/Orbit" > Anesthesia for CT.Scan of Brain+PNS/Orbit</option>
                                                            <option value="Anesthesia for CT.Scan of Ear+MRI of Ear+Echo" >Anesthesia for CT.Scan of Ear+MRI of Ear+Echo</option>
                                                            <option value="CT Angio Abdomenal Vessel" >CT Angio Abdomenal Vessel</option>
                                                            <option value="CT Angio of Renal" >CT Angio of Renal</option>
                                                            <option value="CT Scan of Base of the Skull" >CT Scan of Base of the Skull</option>
                                                            <option value="CT Scan of Left Hip Joint" >CT Scan of Left Hip Joint</option>
                                                            <option value="CT Scan of Right Ankle" >CT Scan of Right Ankle</option>
                                                            <option value="9" >SHYAMOLI</option>
                                                            <option value="10" >MIRPUR (U-1)</option>
                                                            <option value="11" >MIRPUR (U-2)</option>
                                                            <option value="18" >BADDA</option>
                                                            <option value="27" >GAZIPUR</option>
                                                            <option value="12" >BOGRA (U-1)</option>
                                                            <option value="13" >BOGRA (U-2)</option>
                                                            <option value="14" >BOGRA (U-3)</option>
                                                            <option value="15" >RANGPUR (U-1)</option>
                                                            <option value="25" >RANGPUR (U-2)</option>
                                                            <option value="19" >DINAJPUR</option>
                                                            <option value="32" >KURIGRAM</option>
                                                            <option value="26" >MYMENSINGH</option>
                                                            <option value="28" >RAJSHAHI</option>
                                                            <option value="29" >NOAKHALI</option>
                                                            <option value="30" >KUSHTIA</option>
                                                            <option value="31" >BARISHAL</option>
                                                            <option value="16" >CHITTAGONG</option>
                                                        </select>


                                                    </div>

                                                    <!--<div class="form-group"><input class="form-control" type="text" placeholder="Admin Password" name="admin_password"/></div>-->
                                                    <input type="submit" value="Save"/>
                                                    <!-- <div class="col p-0 m-0 p-3 d-flex justify-content-end"><button class="btn btn-primary btn-block" type="submit">Submit</button></div> -->
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </section>
                            <section>
                                <div class="tab-pane fade" id="insert" role="tabpanel" aria-labelledby="home-tab">

                                </div>
                                <!--                                <ul class="nav nav-pills" id="myTab" role="tablist">
                                                                    <li class="nav-item waves-effect waves-light">
                                                                        <a class="nav-link" id="home-tab" data-toggle="tab" href="#insert" role="tab" aria-controls="home" aria-selected="false">Insert Medicine Data</a>
                                                                    </li>
                                                                    <li class="nav-item waves-effect waves-light">
                                                                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#update" role="tab" aria-controls="profile" aria-selected="false">Update Medicine Data</a>
                                                                    </li>
                                                                    <li class="nav-item waves-effect waves-light">
                                                                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#view" role="tab" aria-controls="profile" aria-selected="false">View Medicine Data</a>
                                                                    </li>
                                                                    <li class="nav-item waves-effect waves-light">
                                                                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#delete" role="tab" aria-controls="profile" aria-selected="false">Delete Medicine Data</a>
                                                                    </li>
                                                                </ul>
                                                                <div class="tab-content" id="myTabContent">
                                                                     Insert Section-----------------------------------------------------------------------------------------------------
                                                                    <div class="tab-pane fade" id="insert" role="tabpanel" aria-labelledby="home-tab">
                                                                        <section>
                                                                            <div class="container-fluid">
                                                                                <div class="container mt-5">
                                                                                    <div><h4 class="p-0 m-0 pb-3 d-flex justify-content-center">Insert Medicine Details</h4></div>
                                                                                    <form action="/medicine/save" method="post">
                                                                                        <div class="form-row p-0 m-0">
                                                                                            <div class="col-lg-6 col-xl-6 p-0 m-0 p-3">
                                                                                                <div class="form-group"><input class="form-control" type="number" placeholder="Admin Id" name="adminid"  nullable = true></div>
                                                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Medicine NID" name="admin_nid"/></div>
                                                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Medicine Name" name="medicine_name"/></div>
                                                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Medicine Group" name="generic_group"/></div>
                                
                                                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Admin Password" name="admin_password"/></div>
                                                                                                <input type="submit" value="Save"/>
                                                                                                 <div class="col p-0 m-0 p-3 d-flex justify-content-end"><button class="btn btn-primary btn-block" type="submit">Submit</button></div> 
                                                                                            </div>
                                                                                        </div>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                        </section>
                                                                    </div>
                                                                    Update Section  -------------------------------------------------------------------------------------------------------- 
                                                                    <div class="tab-pane fade" id="update" role="tabpanel" aria-labelledby="home-tab">
                                                                        <section>
                                                                            <div class="container-fluid">
                                                                                <div class="container mt-5">
                                                                                    <div><h4 class="p-0 m-0 pb-3 d-flex justify-content-center">Update Admin Details</h4></div>
                                                                                    <form >
                                                                                        <div class="form-row p-0 m-0">
                                                                                            <div class="col-lg-6 col-xl-6 p-0 m-0 p-3">
                                                                                                <div class="form-group"><input class="form-control" type="number" placeholder="Admin Id" name="adminId"></div>
                                                                                                <div class="form-group"><input class="form-control" type="number" placeholder="Admin NID" name="adminNid"/></div>
                                                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Admin Name" name="adminName"/></div>
                                                                                                <div class="form-group"><input class="form-control" type="password" placeholder="Admin Password" name="adminPassword"></div>
                                                                                                <div class="col p-0 m-0 p-3 d-flex justify-content-end"><button class="btn btn-primary btn-block" type="submit">Submit</button></div> 
                                                                                            </div>
                                
                                
                                
                                                                                        </div>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                        </section>
                                                                    </div>
                                                                     View Section ----------------------------------------------------------------------------------------------------
                                                                    <div class="tab-pane fade" id="view" role="tabpanel" aria-labelledby="profile-tab">
                                                                        <section>
                                                                            <div class="container-fluid">
                                                                                <div class="container mt-5">
                                
                                                                                    <div><h4 class="p-0 m-0 pb-3 d-flex justify-content-center">List Of Admin Details</h4></div>
                                
                                                                                    <table class="table">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th scope="col">Admin ID</th>
                                                                                                <th scope="col">Admin NID</th>
                                                                                                <th scope="col">Admin Name</th>
                                                                                                <th scope="col">Admin Password</th>
                                
                                
                                
                                
                                
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <tbody>
                                                                                            <tr >
                                                                                                <td>
                                
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                
                                                                                    </table>
                                
                                
                                
                                                                                </div>
                                                                            </div>
                                                                        </section>
                                                                    </div>
                                
                                
                                
                                
                                
                                
                                
                                
                                                                    Delete Section--------------------------------------------------------------------------------------------------
                                
                                                                    <div class="tab-pane fade" id="delete" role="tabpanel" aria-labelledby="profile-tab">
                                                                        <section>
                                
                                
                                
                                                                            <div class="container-fluid">
                                                                                <div class="container mt-5">
                                                                                    <div ><h4 class="p-0 m-0 pb-3 d-flex justify-content-center">Delete Admin Details</h4></div>
                                
                                                                                    <form class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                                                                                        <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Search for ...">
                                                                                            <div class="input-group-append"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                                                                                        </div>
                                                                                    </form>
                                
                                
                                                                                    <form >
                                                                                        <div class="form-row p-0 m-0">
                                
                                                                                            <div class="col-lg-6 col-xl-6 p-0 m-0 p-3" id="formPersonal">
                                
                                                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Name"></div>
                                                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Apellidos"></div>
                                                                                                <div class="form-group"><input class="form-control" type="email" required="" placeholder="Correo electr�nico"></div>
                                                                                                <div class="form-group"><input class="form-control" type="tel" placeholder="Celular / Tel�fono"></div>
                                                                                                 <div class="form-group"><input class="form-control" type="tel" required="" placeholder="LinkedIn"></div> 
                                                                                            </div>
                                                                                            <div class="col-lg-6 col-xl-6 p-0 m-0 p-3" id="formPersonal">
                                
                                                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Name"></div>
                                
                                                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Apellidos"></div>
                                                                                                <div class="form-group"><input class="form-control" type="email" required="" placeholder="Correo electr�nico"></div>
                                                                                                <div class="form-group"><input class="form-control" type="tel" placeholder="Celular / Tel�fono"></div>
                                                                                                 <div class="form-group"><input class="form-control" type="tel" required="" placeholder="LinkedIn"></div> 
                                                                                            </div>
                                                                                            <div class="col-lg-6 col-xl-6 p-0 m-0 p-3" id="formPersonal">
                                
                                                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Name"></div>
                                                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Apellidos"></div>
                                                                                                 <div class="form-group"><input class="form-control" type="email" required="" placeholder="Correo electr�nico"></div> 
                                                                                                 <div class="form-group"><input class="form-control" type="tel" placeholder="Celular / Tel�fono"></div> 
                                                                                                 <div class="form-group"><input class="form-control" type="tel" required="" placeholder="LinkedIn"></div> 
                                                                                            </div>
                                                                                            <div class="col-lg-6 col-xl-6 p-0 m-0 p-3" id="formPersonal">
                                
                                                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Name"></div>
                                                                                                <div class="form-group"><input class="form-control" type="text" placeholder="Apellidos"></div>
                                                                                                 <div class="form-group"><input class="form-control" type="email" required="" placeholder="Correo electr�nico"></div>
                                                                                                <div class="form-group"><input class="form-control" type="tel" placeholder="Celular / Tel�fono"></div>
                                                                                                <div class="form-group"><input class="form-control" type="tel" required="" placeholder="LinkedIn"></div> 
                                                                                            </div>
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                                                                            <div class="col p-0 m-0 p-3 d-flex justify-content-end"><button class="btn btn-primary btn-block" type="button">Delete</button></div>
                                                                                        </div>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                        </section>
                                
                                
                                                                    </div>
                                                                </div>-->

                            </section>
                            <!-- Section: Live preview -->

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-xl-6">





                        </div>
                        <!-- Grid column -->

                    </div>

                </div>
            </div>







        </div>

    </div>
</div>




<jsp:include page="/WEB-INF/jsp/common/home/footer.jsp" />
