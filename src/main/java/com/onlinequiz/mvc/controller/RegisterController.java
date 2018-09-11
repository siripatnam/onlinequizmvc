package com.onlinequiz.mvc.controller;

import com.onlinequiz.mvc.models.Register;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;

@Controller
public class RegisterController {

    @Autowired
    RestTemplate restTemplate;

//    public String Register(HttpServletRequest httpServletRequest){
//        ResponseEntity<Register[]> responseEntity = restTemplate.getForEntity("http://localhost:8080/register",Register[].class);
//
//    }
}
