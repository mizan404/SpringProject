/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.INoticeController;
import com.spring.maven.model.Notice;
import com.spring.maven.service.impl.INoticeService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author B8
 */
@RestController
public class NoticeController implements INoticeController {

    @Autowired
    INoticeService noticeService;

    @Override
    public ModelAndView create() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/saveNotice")
    public ModelAndView save(HttpServletRequest request) {

        noticeService.save(request);
        return new ModelAndView("admin/notice");
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
    public List<Notice> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @RequestMapping("/doctornotice")
    public ModelAndView dNotice() {
        List<Notice> notice = noticeService.getAllByDoctorPrivilege();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("notice", notice);
        return new ModelAndView("/doctor/doctorNotice", "map", map);

    }

    @RequestMapping("/staffnotice")
    public ModelAndView sNotice() {
        List<Notice> notice = noticeService.getAllByStaffPrivilege();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("notice", notice);
        return new ModelAndView("/staff/staffNotice", "map", map);

    }

}
