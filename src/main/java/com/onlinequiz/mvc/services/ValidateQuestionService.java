package com.onlinequiz.mvc.services;


import com.onlinequiz.mvc.models.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service
public class ValidateQuestionService {

    @Autowired
    RestTemplate restTemplate;

    private int score = 0;


    public int validateAnswer(Question question) {

        /** Got the answers to questions here from DB **/

        ResponseEntity<Question[]> responseEntity =
                restTemplate.getForEntity("http://localhost:8070/questions", Question[].class);

        Question[] arr = responseEntity.getBody();
        List<Question> questionList = Arrays.asList(arr);

        String answer = responseEntity.getBody()[0].getAnswer();

        System.out.println(answer);

        if(answer.equals(question.getAnswer())){
           return score = 10;
        }else {
            return score;
        }


    }
}
