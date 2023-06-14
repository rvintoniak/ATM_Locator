package com.ss.atmlocator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SignInController {

    @RequestMapping(value = "/signup")
    public String signup() {
        return "signup";
    }
}
