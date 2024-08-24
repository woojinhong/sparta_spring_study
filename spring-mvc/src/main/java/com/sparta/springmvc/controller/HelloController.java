package com.sparta.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/api")
public class HelloController {

    @GetMapping("hello")
    @ResponseBody
    public String hello(){
        return "Hello world!";
    }

    @PostMapping("hello")
    @ResponseBody
    public String hi(){
        return "Hello world post!";
    }
}
