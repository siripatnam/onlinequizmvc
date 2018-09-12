package com.onlinequiz.mvc.services;


import com.onlinequiz.mvc.models.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class LoginService {

    @Autowired
    RestTemplate restTemplate;

    public boolean validateLogin(Login login){

        ResponseEntity<Login> responseEntity =
                restTemplate.postForEntity("http://localhost:8070/login",login,Login.class);

        System.out.println(responseEntity.getBody().getPassword());
        System.out.println(responseEntity.getBody().getStudentId());

        return (login.getPassword().equals(responseEntity.getBody().getPassword()));



    }
}
