package com.onlinequiz.mvc.controller;

import com.onlinequiz.mvc.models.Login;
import com.onlinequiz.mvc.models.Register;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView viewHome() {

        return new ModelAndView("rules");
    }

    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public ModelAndView viewLogin(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject(new Login());
        modelAndView.setViewName("Login");
        return modelAndView;
    }

    @RequestMapping(value = "/Register", method = RequestMethod.GET)
    public ModelAndView viewRegister(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject(new Register());
        modelAndView.setViewName("registeration");
        return modelAndView;
    }
}
