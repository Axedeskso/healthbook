package com.fromentin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fromentin.service.HealthbookServiceImpl;

@Controller
public class ToolsController {

    @Autowired
    HealthbookServiceImpl healthbook_service;

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

}
