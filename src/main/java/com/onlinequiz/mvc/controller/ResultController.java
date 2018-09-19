package com.onlinequiz.mvc.controller;

import com.onlinequiz.mvc.models.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ResultController {
    @Autowired
    RestTemplate restTemplate;

    @RequestMapping(value = "/results",method = RequestMethod.GET)
    public ModelAndView getResults(){

        ResponseEntity<Results[]> responseEntity=
                restTemplate.getForEntity("http://localhost:8070/results",Results[].class);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject(new Results());
        modelAndView.setViewName("studentResults");
        modelAndView.addObject("results",responseEntity.getBody());
        return modelAndView;
    }

}
