package com.onlinequiz.mvc.controller;

import com.onlinequiz.mvc.models.Login;
import com.onlinequiz.mvc.services.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("login")
public class LoginController {

    @Autowired
    LoginService loginService;

    @ModelAttribute("login")
    public Login sessionLogin() {
        return new Login();
    }

    @RequestMapping(value = "/validateLogin", method = RequestMethod.POST)
    public ModelAndView validateLogin(@ModelAttribute("login") Login login){

        System.out.println("Inside the validate Login");
        Boolean bool = loginService.validateLogin(login);
        System.out.println(bool);



        if (bool == true) {
            if(login.getStudentId()==9999)
            {
                return new ModelAndView("adminHome");
            }
            else {
                return new ModelAndView("rules");
            }
        }else {
            ModelAndView modelAndView = new ModelAndView("Login");
            modelAndView.addObject("error","Incorrect user name or password");
            return  modelAndView;
        }


    }


}
