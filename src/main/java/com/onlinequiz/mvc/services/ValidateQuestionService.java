package com.onlinequiz.mvc.services;


import com.onlinequiz.mvc.models.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class ValidateQuestionService {

    @Autowired
    RestTemplate restTemplate;

    private int score = 0;

    public int validateAnswer(Question question) {

        /** Got the answers to questions here from DB **/

        ResponseEntity<Question> responseEntity =
                restTemplate.getForEntity("http://localhost:8070/questions", Question.class);

        if(responseEntity.getBody().getAnswer().equals(question.getAnswer())){
            score += 10;
            return score;
        }else {
            return score;
        }
    }
}
