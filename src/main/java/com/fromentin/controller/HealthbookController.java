package com.fromentin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fromentin.service.HealthbookServiceImpl;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HealthbookController {

    @Autowired
    HealthbookServiceImpl healthbook_service;

    @RequestMapping(value = "/profil", method = RequestMethod.GET)
    public String profil(Model model) {
        return "profil";
    }
    
    @RequestMapping(value = "/clients", method = RequestMethod.GET)
    public String clients(Model model) {
        return "clients";
    }


}
