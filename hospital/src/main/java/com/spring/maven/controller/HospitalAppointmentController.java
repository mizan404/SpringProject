/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.IHospitalAppointmentController;
import com.spring.maven.model.HospitalAppointment;
import com.spring.maven.service.impl.IHospitalAppointmentService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
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
@RequestMapping(value = "/physicalappointment")
public class HospitalAppointmentController implements IHospitalAppointmentController {

    @Autowired
    IHospitalAppointmentService hospitalAppointmentService;

    @Override
    @RequestMapping("/create")
    public ModelAndView create() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        hospitalAppointmentService.save(request);
        return new ModelAndView("redirect:/staff/appointmentform");
    }

    @Override
    @RequestMapping(value = "/hospitalinvoice/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("id") int id) {
        Map<String, Object> map = new HashMap<>();
        HospitalAppointment hospitalAppointment = hospitalAppointmentService.getById(id);
        map.put("hospitalAppointment", hospitalAppointment);
        return new ModelAndView("invoice/hospitalinvoicepage", "map", map);
    }

    @Override
    public ModelAndView update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/hospitaldelete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        hospitalAppointmentService.delete(id);
        return new ModelAndView("redirect:/staff/hospitalInvoice");

    }

    @Override
    public List<HospitalAppointment> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/list")
    public ModelAndView getAllHospitalAppointment() {
        List<HospitalAppointment> hospitalAppointments = hospitalAppointmentService.getAll();
        Map<String, Object> map = new HashMap<>();
        map.put("hospitalAppointments", hospitalAppointments);

        return new ModelAndView("doctor/physicalappointment", "map", map);
    }

}
