package com.onlinequiz.mvc.controller;

import com.onlinequiz.mvc.models.Login;
import com.onlinequiz.mvc.models.Question;
import com.onlinequiz.mvc.models.Results;
import com.onlinequiz.mvc.services.ResultService;
import com.onlinequiz.mvc.services.ValidateQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QuestionController {

    @Autowired
    RestTemplate restTemplate;

    @Autowired
    ValidateQuestionService validateQuestionService;

    @Autowired
    ResultService resultService;



    @RequestMapping(value = "/getQuestion",method = RequestMethod.GET)
    public ModelAndView getQuestion(@ModelAttribute("question") Question question){

       System.out.println("Inside get Question");
             ResponseEntity<Question[]> responseEntity=
                    restTemplate.
                           getForEntity("http://localhost:8070/questions",Question[].class);


            ModelAndView modelAndView = new ModelAndView();
            modelAndView.addObject(new Question());
            System.out.println(responseEntity.getBody().length);
            modelAndView.setViewName("question");
            modelAndView.addObject("questions", responseEntity.getBody());
            System.out.println("successfully added questions to the display page");
            return modelAndView;
    }

    @RequestMapping(value = "/validateQuestion",method = RequestMethod.GET)
    public ModelAndView validateQuestion(@ModelAttribute("question")Question question,
                                         @SessionAttribute("login") Login login){

        System.out.println("Inside the validate Question");
        ModelAndView modelAndView = new ModelAndView();
        System.out.println(question.getAnswer());

         int finalScore = validateQuestionService.validateAnswer(question);

        System.out.println("inside validate que: " + login.getStudentId());

         Results results = new Results();
         results.setScore(finalScore);
         results.setStudentid(login.getStudentId());

        System.out.println(finalScore);

        //for storing results in DB//
        resultService.saveResults(results);

        //To show results to student//
        modelAndView.addObject("results", results);
        modelAndView.setViewName("score");

        System.out.println("returning to score jsp ...");
        return modelAndView;
    }

    @RequestMapping(value = "/addQues",method = RequestMethod.POST)
    public ModelAndView addQuestion(@ModelAttribute("question") Question question){

        ResponseEntity<Question> responseEntity = restTemplate
                .postForEntity("http://localhost:8070/questions",question,Question.class);

        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject(new Question());
        modelAndView.setViewName("addQuestions");
        return modelAndView;
    }

    @RequestMapping(value = "/delQues",method = RequestMethod.POST)
    public ModelAndView deleteQuestion(@ModelAttribute("question") Question question){
        ResponseEntity<Question> responseEntity=restTemplate.postForEntity("http://localhost:8070/deletequestion",question,Question.class);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject(new Question());
        modelAndView.setViewName("delQuestions");
        return modelAndView;
    }

}
