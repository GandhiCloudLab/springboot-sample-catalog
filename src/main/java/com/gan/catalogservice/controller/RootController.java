package com.gan.catalogservice.controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Configuration
@CrossOrigin
@RestController
public class RootController {

    int i = 1;

    @GetMapping("/")

    private ModelAndView welcome() {
        String result = "Welcome to catalog service app ..." ;
        System.out.println(result);
        return new ModelAndView ("index.html");
    }

    @GetMapping("/hello")
    private String hello() {
        String result = "hello catalog service" ;
        System.out.println(result);
        return result;
    }
}
