package com.onlinequiz.mvc.controller;

import com.onlinequiz.mvc.models.Login;
import com.onlinequiz.mvc.models.Register;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {
    @Autowired
    RestTemplate restTemplate;


    @RequestMapping(value = "/validateRegister")
    public ModelAndView registrationPage(@ModelAttribute("register") Register register) {
        System.out.println("Inside the /validateRegister");
        register.setGender("male");

        ResponseEntity<Register> responseEntity = restTemplate
                .postForEntity("http://localhost:8070/register",register,Register.class);


        int statusCode = responseEntity.getStatusCodeValue();
        if (statusCode >= 200 && statusCode <= 299) {
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.addObject(new Login());
            modelAndView.setViewName("Login");
            return modelAndView;
        } else {
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.addObject("RegisterError","Error Registering the student");
            return modelAndView;
        }
    }
}


