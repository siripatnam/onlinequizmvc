package com.onlinequiz.mvc.services;

import com.onlinequiz.mvc.models.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class ResultService {
    @Autowired
    RestTemplate restTemplate;

    public Results saveResults(Results results) {

        System.out.println("Inside restservice : " +  results.getStudentid() + results.getScore());

        ResponseEntity<Results> responseEntity=
                restTemplate.postForEntity("http://localhost:8070/results", results, Results.class);



        return results;
    }
}
