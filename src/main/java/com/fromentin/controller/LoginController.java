package com.fromentin.controller;

import com.fromentin.security.HealthbookUserDAOImpl;
import com.fromentin.service.HealthbookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
    @Autowired
    HealthbookServiceImpl healthbook_service;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model) {
        return "index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(@RequestParam(value = "error", required = false) String error, @RequestParam(value = "logout", required = false) String logout, Model model) {

        if (error != null) {
            model.addAttribute("error", "Tentative de connexion échouée. Veuillez réessayer.");
        }
        if (logout != null) {
            model.addAttribute("msg", "Vous êtes déconnecté");
        }
        return "utils/login";
    }

    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public String accesssDenied(Model model) {
        return "utils/403";
    }
}
