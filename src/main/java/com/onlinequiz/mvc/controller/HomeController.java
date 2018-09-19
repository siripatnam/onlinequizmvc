package com.onlinequiz.mvc.controller;

import com.onlinequiz.mvc.models.Admin;
import com.onlinequiz.mvc.models.Login;
import com.onlinequiz.mvc.models.Question;
import com.onlinequiz.mvc.models.Register;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("login")
public class HomeController {
    @Autowired
    RestTemplate restTemplate;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView viewHome() {

        return new ModelAndView("home");
    }
    @ModelAttribute("login")
    public Login sessionLogin(){
        return new Login();
    }

    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public ModelAndView viewLogin(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject(new Login());
        modelAndView.setViewName("Login");
        return modelAndView;
    }

    @RequestMapping(value = "/Register", method = RequestMethod.GET)
    public ModelAndView viewRegister(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject(new Register());
        modelAndView.setViewName("registeration");
        return modelAndView;
    }
    @RequestMapping(value="/adminLogin",method = RequestMethod.GET)
    public ModelAndView viewAdminLogin(){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("adminLogin",new Admin());
        modelAndView.setViewName("Login");
        return modelAndView;
    }

   @RequestMapping(value = "/addQues",method = RequestMethod.GET)
    public ModelAndView viewQuesPage(){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("question",new Question());
        modelAndView.setViewName("addQuestions");
        return modelAndView;
    }
    @RequestMapping(value = "/delQues",method = RequestMethod.GET)
    public ModelAndView delQuesPage(){
        ResponseEntity<Question[]> responseEntity=
                restTemplate.
                        getForEntity("http://localhost:8070/questions",Question[].class);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject(new Question());
        modelAndView.addObject("questions", responseEntity.getBody());
        modelAndView.setViewName("delQuestions");
        return modelAndView;
    }



    @RequestMapping(value = "/contact",method = RequestMethod.GET)
    public ModelAndView viewContactPage(){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("contact");
        return modelAndView;
    }

    @RequestMapping(value = "/aboutUs",method = RequestMethod.GET)
    public ModelAndView viewAboutUsPage(){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("aboutUs");
        return modelAndView;
    }
}
