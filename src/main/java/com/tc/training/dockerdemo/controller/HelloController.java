package com.tc.training.dockerdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 *
 */
@RestController
public class HelloController {

    @GetMapping(path = "/hello")
    public Map<String, String> sayHello() {
        // this function is used for the hello controller
        // it  return status running message
        return Map.of("status", "running", "message", "hello, stranger!");
    }
}
