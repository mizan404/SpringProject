/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.IApproveListController;
import com.spring.maven.model.ApproveList;
import com.spring.maven.service.impl.IApproveListService;
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
public class ApproveListController implements IApproveListController {

    @Autowired
    IApproveListService approveListService;

    @Override
    public ModelAndView create() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/approveSave", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        approveListService.save(request);
        return new ModelAndView("staff/approvedlist");
    }

    @Override
    @RequestMapping(value = "approveEdit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("id") int id) {
        Map<String, Object> map = new HashMap<>();
        ApproveList approveList = approveListService.getById(id);
        map.put("approveList", approveList);
        return new ModelAndView("/staff/appointmentFormForHospital", "map", map);
    }

    @Override
    public ModelAndView update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ModelAndView delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @RequestMapping(value = "approvedelete/{id}", method = RequestMethod.GET)
    public ModelAndView adminDelele(@PathVariable("id") int id) {
        approveListService.delete(id);
        return new ModelAndView("redirect:/approvedlist");
    }

    @Override
    public List<ApproveList> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/approvedlist")
    public ModelAndView getAllApproveList() {
        List<ApproveList> approveLists = approveListService.getAll();
        Map<String, Object> map = new HashMap<>();
        map.put("approveLists", approveLists);
        return new ModelAndView("staff/approvedlist", "map", map);
    }

}
