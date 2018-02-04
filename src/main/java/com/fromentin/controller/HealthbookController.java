package com.fromentin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fromentin.service.HealthbookServiceImpl;

@Controller
public class HealthbookController {

    @Autowired
    HealthbookServiceImpl healthbook_service;

    @RequestMapping(value = "/profil", method = RequestMethod.GET)
    public String profil(Model model) {
        return "profil";
    }
    
    @RequestMapping(value = "/help", method = RequestMethod.GET)
    public String help(Model model) {
        return "help";
    }
    
    @RequestMapping(value = "/clients", method = RequestMethod.GET)
    public String clients(Model model) {
        return "clients";
    }
    
    @RequestMapping(value = "/documents", method = RequestMethod.GET)
    public String documents(Model model) {
        return "documents";
    }
    
    @RequestMapping(value = "/securite", method = RequestMethod.GET)
    public String securits(Model model) {
        return "securite";
    }    
    
    @RequestMapping(value = "/documents/1", method = RequestMethod.GET)
    public String document(Model model) {
        return "document";
    }

}
