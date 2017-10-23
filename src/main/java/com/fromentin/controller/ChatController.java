package com.fromentin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fromentin.service.HealthbookServiceImpl;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ChatController {

    @Autowired
    HealthbookServiceImpl healthbook_service;

    @RequestMapping(value = "/chat", method = RequestMethod.GET)
    public String chat(Model model) {
        return "chat";
    }
    
}
