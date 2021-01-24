/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.spring.maven.controller.impl.IReportController;
import com.spring.maven.model.Report;
import com.spring.maven.service.impl.IReportService;
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
 * @author B8
 */
@RestController
public class ReportController implements IReportController {

    @Autowired
    IReportService reportService;

    @Override

    public ModelAndView create() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/reportSave", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        reportService.save(request);
        return new ModelAndView("invoice/reportprint");
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
    public List<Report> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @RequestMapping(value = "getReportByNid/{patient_nid}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public String getReportByNid(@PathVariable("patient_nid") int patient_nid) {
        GsonBuilder gson = new GsonBuilder();
        Gson g = gson.create();
        Report report = reportService.getByNid(patient_nid);
        return g.toJson(report);
    }

    @RequestMapping(value = "getReportById/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public String getReportById(@PathVariable("id") int id) {
        GsonBuilder gson = new GsonBuilder();
        Gson g = gson.create();
        Report report = reportService.getByNid(id);
        return g.toJson(report);
    }

}
