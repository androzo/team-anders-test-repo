package com.androzo.uptracedemo.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class HelloController {

    @GetMapping("/hello")
    public String sayHello() {
        log.info("test");
        log.error("error");
        return "Hello, OpenTelemetry!";
    }
}