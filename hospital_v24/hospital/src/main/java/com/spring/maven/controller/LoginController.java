package com.spring.maven.controller;

import java.security.Principal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author mohdm
 */
@Controller
public class LoginController {

    @RequestMapping("/dashboard")
    public ModelAndView hello(ModelMap model, Principal principal) {

        String loggedInUserName = principal.getName();

        return new ModelAndView("dashBoard/dashBoard", "userName", loggedInUserName);
    }

    @RequestMapping("/admin")
    public ModelAndView helloAdmin(ModelMap model, Principal principal) {

        String loggedInUserName = principal.getName();

        return new ModelAndView("dashBoard/dashBoard", "userName", loggedInUserName);
    }

//    @RequestMapping("/doctor-dashboard")
//    public ModelAndView dhello(ModelMap model, Principal principal) {
//
//        String loggedInUserName = principal.getName();
//
//        return new ModelAndView("doctor/doctordashboard", "userName", loggedInUserName);
//    }
//
//    @RequestMapping("/doctor")
//    public ModelAndView helloDoctor(ModelMap model, Principal principal) {
//
//        String loggedInUserName = principal.getName();
//
//        return new ModelAndView("doctor/doctordashboard", "userName", loggedInUserName);
//    }

//    @RequestMapping("/staff")
//    public ModelAndView helloStaff(ModelMap model, Principal principal) {
//
//        String loggedInUserName = principal.getName();
//
//        return new ModelAndView("doctor/doctorpage", "userName", loggedInUserName);
//    }
//    @RequestMapping(value = "/d-login", method = RequestMethod.GET)
//    public String dlogin(ModelMap model) {
//        return "commonlogin/doctorlogin";
//    }
//
//    @RequestMapping(value = "/d-loginError", method = RequestMethod.GET)
//    public String dloginError(ModelMap model) {
//        model.addAttribute("error", "true");
//        return "commonlogin/doctorlogin";
//    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap model) {
        return "commonlogin/login";
    }

    @RequestMapping(value = "/loginError", method = RequestMethod.GET)
    public String loginError(ModelMap model) {
        model.addAttribute("error", "true");
        return "commonlogin/login";
    }

    // for 403 access denied page
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied(Principal user) {

        ModelAndView model = new ModelAndView();
        if (user != null) {
            model.addObject("msg", "Hi " + user.getName()
                    + ", You can not access this page!");
        } else {
            model.addObject("msg",
                    "You can not access this page!");
        }

        model.setViewName("403");
        return model;
    }

}
