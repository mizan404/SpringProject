/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.spring.maven.controller.impl.IDoctorController;
import com.spring.maven.model.Doctor;
import com.spring.maven.service.impl.IDoctorService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
 * @author TCLD
 */
@RestController
@RequestMapping(value = "doctor")
public class DoctorController implements IDoctorController {

    @Autowired
    IDoctorService doctorService;

    @Override
    @RequestMapping(value = "create")
    public ModelAndView create() {
        return new ModelAndView("doctor/doctorpage");

    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        doctorService.save(request);
        return new ModelAndView("redirect:/admin/doctorpage");

    }

    @Override
    @RequestMapping(value = "doctorEdit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("id") int id) {
        Map<String, Object> map = new HashMap<>();
        Doctor doctor = doctorService.getById(id);
        map.put("doctor", doctor);
        return new ModelAndView("doctor/patientprescription", "map", map);
    }

    @Override
    @RequestMapping(value = "/doctorUpdate")
    public ModelAndView update(HttpServletRequest request) {
        doctorService.update(request);
        return new ModelAndView();
    }

    @Override
    @RequestMapping(value = "/doctorDelete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(int id) {
        doctorService.delete(id);
        return new ModelAndView();
    }

    @Override
    public List<Doctor> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/viewDoctor")
    public ModelAndView doctorView() {
        List<Doctor> doctors = doctorService.getAll();
        Map<String, Object> map = new HashMap<>();
        map.put("doctors", doctors);
        return new ModelAndView("/doctor/patientprescription", "map", map);

    }

}
