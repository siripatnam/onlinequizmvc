package com.onlinequiz.mvc.controller;

import com.onlinequiz.mvc.models.Login;
import com.onlinequiz.mvc.services.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    @Autowired
    LoginService loginService;

    @RequestMapping(value = "/validateLogin", method = RequestMethod.POST)
    public ModelAndView validateLogin(@ModelAttribute("login") Login login){

        System.out.println("Inside the validate Login");
        Boolean bool = loginService.validateLogin(login);
        System.out.println(bool);

        if (bool == true) {
            return new ModelAndView("rules");
        }else {
            ModelAndView modelAndView = new ModelAndView("Login");
            modelAndView.addObject("error","Incorrect user name or password");
            return  modelAndView;
        }


    }


}
