/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import java.security.Principal;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author TCLD
 */
@RestController
//@RequestMapping("admin")
public class DashBoardController {

//    @RequestMapping("/dashboard")
//    public ModelAndView dashBoard() {
//        return new ModelAndView("/dashBoard/dashBoard");
//    }
    @RequestMapping("/doctorpage")
    public ModelAndView doctorPage(Principal principal) {
        String loggedInUserName = principal.getName();

        return new ModelAndView("/doctor/doctorpage", "userName", loggedInUserName);
    }

    @RequestMapping("/staffpage")
    public ModelAndView staffPage(Principal principal) {
        String loggedInUserName = principal.getName();
        return new ModelAndView("/staff/staffpage", "userName", loggedInUserName);
    }

    @RequestMapping("/departmentpage")
    public ModelAndView deparmentPage(Principal principal) {
        String loggedInUserName = principal.getName();
        return new ModelAndView("/department/departmentpage", "userName", loggedInUserName);
    }

    @RequestMapping("/laboratorypage")
    public ModelAndView laboratoryPage(Principal principal) {
        String loggedInUserName = principal.getName();
        return new ModelAndView("/laboratory/laboratoryPage", "userName", loggedInUserName);
    }

    @RequestMapping("/medicinepage")
    public ModelAndView medicinePage(Principal principal) {
        String loggedInUserName = principal.getName();
        return new ModelAndView("/medicine/medicinepage", "userName", loggedInUserName);
    }

    @RequestMapping("/adminpage")
    public ModelAndView adminPage(Principal principal) {
        String loggedInUserName = principal.getName();
        return new ModelAndView("/admin/adminpage", "userName", loggedInUserName);
    }

    @RequestMapping("/allreport")
    public ModelAndView reportPage(Principal principal) {
        String loggedInUserName = principal.getName();
        return new ModelAndView("/report/report", "userName", loggedInUserName);
    }

    @RequestMapping("/notice")
    public ModelAndView noticePage(Principal principal) {
        String loggedInUserName = principal.getName();
        return new ModelAndView("/admin/notice", "userName", loggedInUserName);
    }

//    @RequestMapping("/doctor-report")
//    public ModelAndView fordoctornid(Principal principal) {
//        String loggedInUserName = principal.getName();
//        return new ModelAndView("/report/departmentreport", "userName", loggedInUserName);
//    }

//    @RequestMapping("/patientbydeparmentreport")
//    public ModelAndView deparmentreport(Principal principal) {
//        String loggedInUserName = principal.getName();
//        return new ModelAndView("/report/patientByDepartment", "userName", loggedInUserName);
//    }
}
