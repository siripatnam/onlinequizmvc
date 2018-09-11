package com.onlinequiz.mvc.controller;

import com.onlinequiz.mvc.models.Register;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class RegisterController {
    @Autowired
    RestTemplate restTemplate;
    @RequestMapping(value = "/reg")
    public ModelAndView registrationPage(HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("registeration");
        ResponseEntity<Register[]> responseEntity=restTemplate.getForEntity("http://localhost:8070/register",Register[].class);
        return modelAndView;
    }
}
