package com.fromentin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fromentin.service.HealthbookServiceImpl;
import java.util.Date;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HealthbookController {

    @Autowired
    HealthbookServiceImpl healthbook_service;

    Date debut;
    Date fin;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(@RequestParam(value = "launch", required = false) String launch, Model model) {
        if (launch != null) {
            debut = new Date();
            fin = new Date();
            
            fin.setHours(debut.getHours()+1);
            
            model.addAttribute("debut", debut);
            model.addAttribute("fin", fin);
        }
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

    @RequestMapping(value = "/profil", method = RequestMethod.GET)
    public String profil(Model model) {
        model.addAttribute("debut", debut);
        model.addAttribute("fin", fin);
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
//TOOLS

    @RequestMapping(value = "/tools/nomenclatures", method = RequestMethod.GET)
    public String nomenclatures(Model model) {
        return "outils/nomenclatures/index";
    }

    @RequestMapping(value = "/tools/nomenclatures/snomed", method = RequestMethod.GET)
    public String snomed(Model model) {
        return "outils/nomenclatures/snomed";
    }

    @RequestMapping(value = "/tools/catalogues", method = RequestMethod.GET)
    public String catalogues(Model model) {
        return "outils/catalogues/index";
    }

    @RequestMapping(value = "/tools/codifications", method = RequestMethod.GET)
    public String codifications(Model model) {
        return "outils/codifications/index";
    }

    @RequestMapping(value = "/tools/classifications", method = RequestMethod.GET)
    public String classifications(Model model) {
        return "outils/classifications/index";
    }

    @RequestMapping(value = "/tools/dictionnaires", method = RequestMethod.GET)
    public String dictionnaires(Model model) {
        return "outils/dictionnaires/index";
    }

    @RequestMapping(value = "/tools/thesaurus", method = RequestMethod.GET)
    public String thesaurus(Model model) {
        return "outils/thesaurus/index";
    }

//    CHAT
    @RequestMapping(value = "/chat", method = RequestMethod.GET)
    public String chat(Model model) {
        return "chat";
    }

}
