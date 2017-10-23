/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fromentin.controller;

import com.fromentin.service.HealthbookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdministratorController {

    @Autowired
    HealthbookServiceImpl healthbook_service;

    @RequestMapping(value = "/administration", method = RequestMethod.GET)
    public String admin(Model model) {
        model.addAttribute("adm", "Partie ADMINISTRATION");
        return "index";
    }

}
