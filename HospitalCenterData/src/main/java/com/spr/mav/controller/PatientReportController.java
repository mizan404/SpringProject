/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spr.mav.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.spr.mav.controller.impl.IPatientReportController;
import com.spr.mav.model.Patient;
import com.spr.mav.model.PatientReport;
import com.spr.mav.service.impl.IPatientReportService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author mohdm
 */
@RestController
public class PatientReportController implements IPatientReportController {

    @Autowired
    IPatientReportService patientReportService;

    @Override

    public ModelAndView create() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ModelAndView save(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ModelAndView update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ModelAndView delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<PatientReport> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @RequestMapping(value = "/getPatientReportByNid", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public String getAllPatientsByNid(HttpServletRequest request) {
        patientReportService.save(request);

        //GsonBuilder gson = new GsonBuilder();
        //Gson g = gson.create();
        //PatientReport patientReport = patientReportService.getByNid(patient_nid);
        // return g.toJson(patientReport);
        return null;
    }
//    @RequestMapping(value = "/getPatientReport1", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
//    public String getAllPatientsByNid() {
//        System.out.println("///////////////............ " );
//        //GsonBuilder gson = new GsonBuilder();
//        //Gson g = gson.create();
//        //PatientReport patientReport = patientReportService.getByNid(patient_nid);
//       // return g.toJson(patientReport);
//        return null;
//    }

    @RequestMapping(value = "/getPatientReportById/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public String getAllPatientsById(@PathVariable("id") int id) {
        GsonBuilder gson = new GsonBuilder();
        Gson g = gson.create();
        PatientReport patientReport = patientReportService.getById(id);
        return g.toJson(patientReport);
    }
//
//    @RequestMapping(value = "/getPatientReportByNid/{patient_nid}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
//    public String getAllPatientsByNid(@PathVariable("patient_nid") int patient_nid) {
//        GsonBuilder gson = new GsonBuilder();
//        Gson g = gson.create();
//        List<PatientReport> patientReport = patientReportService.getByNid(patient_nid);
//        return g.toJson(patientReport);
//    }

}
