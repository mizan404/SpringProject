/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.spring.maven.model.ApproveList;
import com.spring.maven.model.Doctor;
import com.spring.maven.model.HospitalAppointment;
import com.spring.maven.model.Notice;
import com.spring.maven.model.OnlineAppointment;
import com.spring.maven.model.Prescription;
import com.spring.maven.model.Report;
import com.spring.maven.service.impl.IApproveListService;
import com.spring.maven.service.impl.IDoctorService;
import com.spring.maven.service.impl.IHospitalAppointmentService;
import com.spring.maven.service.impl.INoticeService;
import com.spring.maven.service.impl.IOnlineAppointmentService;
import com.spring.maven.service.impl.IPrescriptionService;
import com.spring.maven.service.impl.IReportService;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author mohdm
 */
@RestController()
public class IndexController {

    @Autowired
    IHospitalAppointmentService hospitalAppointmentService;

    @Autowired
    IOnlineAppointmentService onlineAppointmentService;

    @Autowired
    IPrescriptionService prescriptionService;

    @Autowired
    IDoctorService doctorService;

    @Autowired
    IApproveListService approveListService;

    @Autowired
    IReportService reportService;

    @Autowired
    INoticeService noticeService;

    @RequestMapping("/")

    public ModelAndView index() {
        return new ModelAndView("index");
    }

    @RequestMapping("/commonlogin")
    public ModelAndView login() {
        return new ModelAndView("commonlogin/commonlogin");
    }

    @RequestMapping("/adminlogin")
    public ModelAndView adminlogin() {
        return new ModelAndView("commonlogin/adminlogin");
    }

    @RequestMapping("/doctorlogin")
    public ModelAndView doctorlogin() {
        return new ModelAndView("commonlogin/doctorlogin");
    }

    @RequestMapping("/stafflogin")
    public ModelAndView stafflogin() {
        return new ModelAndView("commonlogin/stafflogin");
    }

    @RequestMapping("/onlineappoint")
    public ModelAndView onlineAppointment() {
        return new ModelAndView("onlineAppointment/appointmentForm");

    }

    @RequestMapping("/staff/dashboard")
    public ModelAndView staffboard(HttpServletRequest request) {
        String nid = request.getParameter("username");

        String password = request.getParameter("password");
        Map<String, Object> map = new HashMap<String, Object>();
        if (nid.equals("staff") && password.equals("staff")) {
            return new ModelAndView("/staff/homestaffpage");
        } else {
            map.put("status", "Incorrect: Nid or Name or Password");
            return new ModelAndView("redirect:/stafflogin", "map", map);
        }
    }

    @RequestMapping("/staffdashboard")
    public ModelAndView staffdashboard() {
        return new ModelAndView("staff/homestaffpage");

    }

    @RequestMapping("/doctordashboard")
    public ModelAndView doctordashboard() {
        return new ModelAndView("doctor/doctordashboard");

    }

    @RequestMapping("/staff/approvelist")
    public ModelAndView approveList() {
        return new ModelAndView("staff/approvedlist");

    }

    @RequestMapping("/doctor/dashboard")
    public ModelAndView DashBoard(HttpServletRequest request) {
        String nid = request.getParameter("username");

        String password = request.getParameter("password");
        Map<String, Object> map = new HashMap<String, Object>();
        if (nid.equals("doctor") && password.equals("doctor")) {
            return new ModelAndView("/doctor/doctordashboard");
        } else {
            map.put("status", "Incorrect: Nid or Name or Password");
            return new ModelAndView("redirect:/doctorlogin", "map", map);
        }
    }

//    @RequestMapping("/doctor/hospitalappointment")
//    public ModelAndView doctorHospitalList() {
//        return new ModelAndView("doctor/physicalappointment");
//
//    }
    @RequestMapping("/doctor/onlineappointment")
    public ModelAndView doctorOnlineList() {
        return new ModelAndView("doctor/onlineappointment");

    }

    @RequestMapping("/inviocelist")
    public ModelAndView invoiceList() {
        return new ModelAndView("staff/invoiceList");

    }

//   @RequestMapping("/hospitalinvoice")
//    public ModelAndView hospitalInvoice() {
//        return new ModelAndView("staff/hospitalInvoice");
//
//    }
//    @RequestMapping("/onlineinvoice")
//    public ModelAndView onlineInvoice() {
//        return new ModelAndView("staff/onlineInvoice");
//
//    }
    @RequestMapping(value = "/hospitalinvoice")
    public ModelAndView getAllHospitalAppointment() {
        List<HospitalAppointment> hospitalAppointments = hospitalAppointmentService.getAll();
        Map<String, Object> map = new HashMap<>();
        map.put("hospitalAppointments", hospitalAppointments);

        return new ModelAndView("staff/hospitalInvoice", "map", map);
    }

    @RequestMapping(value = "/patientwaitinglist/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("id") int id) {
        Map<String, Object> map = new HashMap<>();
        HospitalAppointment hospitalAppointment = hospitalAppointmentService.getById(id);
        map.put("hospitalAppointment", hospitalAppointment);
        return new ModelAndView("doctor/patientprescription", "map", map);
    }

    @RequestMapping(value = "/appointmentlist")
    public ModelAndView getAllHospitalAppointmentlist() {
        List<HospitalAppointment> hospitalAppointments = hospitalAppointmentService.getAll();
        Map<String, Object> map = new HashMap<>();
        map.put("hospitalAppointments", hospitalAppointments);

        return new ModelAndView("doctor/physicalappointment", "map", map);
    }
//    @RequestMapping(value = "/onlineinvoice")
//    public ModelAndView getAllAppointment() {
//
//        List<OnlineAppointment> onlineAppointments = onlineAppointmentService.getAll();
//        Map<String, Object> map = new HashMap<String, Object>();
//        map.put("onlineAppointments", onlineAppointments);
//        return new ModelAndView("staff/onlineInvoice", "map", map);
//    }
//    @RequestMapping("doctor/physicalappointment")
//    public ModelAndView physicalList() {
//        return new ModelAndView("doctor/physicalappointment");
//
//    }

    @RequestMapping("doctor/prescription")
    public ModelAndView patientPrescription() {
        return new ModelAndView("doctor/patientprescription");

    }

    @RequestMapping(value = "getPrescriptionByNid/{patient_nid}", method = RequestMethod.GET)
    public Prescription getPrescriptionByNid(@PathVariable("patient_nid") int patient_nid) {
        //GsonBuilder gson = new GsonBuilder();
        //Gson g = gson.create();
        Prescription prescription = prescriptionService.getByNid(patient_nid);
        return prescription;
    }

    @RequestMapping("/report")
    public ModelAndView report() {
        List<Prescription> prescriptions = prescriptionService.getAll();
        Map<String, Object> map = new HashMap<>();
        map.put("prescriptions", prescriptions);
        return new ModelAndView("invoice/reportprint", "map", map);

    }
// For Doctor Rest API

    @RequestMapping(value = "getDoctorById/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public String getDoctorById(@PathVariable("id") int id) {
        GsonBuilder gson = new GsonBuilder();
        Gson g = gson.create();
        Doctor doctor = doctorService.getById(id);
        return g.toJson(doctor);
    }

//    // For search Patient by department  
//    @RequestMapping(value = "/patientbydeparmentreport")
//    public ModelAndView leaveHistoryData(@RequestParam("patient_problem") String patient_problem) {
//        List<HospitalAppointment> patientBydepartment = hospitalAppointmentService.getPatientByDepartment(patient_problem);
//        Map< String, Object> map = new HashMap<String, Object>();
//        map.put("patientBydepartment", patientBydepartment);
//
//        return new ModelAndView("/report/patientByDepartment", "map", map);
//    }
    //for search and report
    @RequestMapping(value = "/-------")
    public ModelAndView patientByDepartment() {
        List<OnlineAppointment> appointments = onlineAppointmentService.getAll();
        Map< String, Object> map = new HashMap<String, Object>();
        map.put("appointments", appointments);
//        System.out.println("---------------------------------------------------------------------" + patient_nid);
        return new ModelAndView("/report/onlinepatient", "map", map);

//        List<OnlineAppointment> onlineAppointments = onlineAppointmentService.getAll();
//        Map<String, Object> map = new HashMap<String, Object>();
//        map.put("onlineAppointments", onlineAppointments);
//        return new ModelAndView("staff/onlineAppointmentForm", "map", map);
    }

    @RequestMapping(value = "/onlinepatientreport")
    public ModelAndView onlinePatient() {
        List<OnlineAppointment> onlineAppointments = onlineAppointmentService.getAll();
        Map< String, Object> map = new HashMap<String, Object>();
        map.put("onlineAppointments", onlineAppointments);
        return new ModelAndView("/report/onlinepatient", "map", map);

    }

    @RequestMapping(value = "/approvedpatietnreport")
    public ModelAndView approvedpatietnreport() {
        List<ApproveList> onlineAppointments = approveListService.getAll();
        Map< String, Object> map = new HashMap<String, Object>();
        map.put("onlineAppointments", onlineAppointments);
        return new ModelAndView("/report/approvedpatietnreport", "map", map);

    }

    @RequestMapping(value = "/patientbydoctor")
    public ModelAndView patientbydoctor() {
        List<Prescription> onlineAppointments = prescriptionService.getAll();
        Map< String, Object> map = new HashMap<String, Object>();
        map.put("onlineAppointments", onlineAppointments);
        return new ModelAndView("/report/patientbydoctor", "map", map);

    }

    @RequestMapping(value = "/noticereport")
    public ModelAndView noticereport() {
        List<Notice> onlineAppointments = noticeService.getAll();
        Map< String, Object> map = new HashMap<String, Object>();
        map.put("onlineAppointments", onlineAppointments);
        return new ModelAndView("/report/noticereport", "map", map);

    }

    @RequestMapping(value = "/patientsymptoms")
    public ModelAndView patientsymptoms() {
        List<Prescription> onlineAppointments = prescriptionService.getAll();
        Map< String, Object> map = new HashMap<String, Object>();
        map.put("onlineAppointments", onlineAppointments);
        return new ModelAndView("/report/patientsymptoms", "map", map);

    }

    @RequestMapping(value = "/patientmedicides")
    public ModelAndView patientmedicides() {
        List<Prescription> onlineAppointments = prescriptionService.getAll();
        Map< String, Object> map = new HashMap<String, Object>();
        map.put("onlineAppointments", onlineAppointments);
        return new ModelAndView("/report/patientmedicides", "map", map);

    }

    @RequestMapping(value = "/patienttests")
    public ModelAndView patienttests() {
        List<Prescription> onlineAppointments = prescriptionService.getAll();
        Map< String, Object> map = new HashMap<String, Object>();
        map.put("onlineAppointments", onlineAppointments);
        return new ModelAndView("/report/patienttests", "map", map);

    }

    @RequestMapping(value = "/patienttestsreport")
    public ModelAndView patienttestsreport() {
        List<Report> onlineAppointments = reportService.getAll();
        Map< String, Object> map = new HashMap<String, Object>();
        map.put("onlineAppointments", onlineAppointments);
        return new ModelAndView("/report/patienttestsreport", "map", map);

    }

}
