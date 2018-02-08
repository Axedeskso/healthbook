package com.fromentin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fromentin.service.HealthbookServiceImpl;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Logger;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HealthbookController {

    @Autowired
    HealthbookServiceImpl healthbook_service;
    
    Date debut;
    Date fin;
    
    String fondChambre ="list-group-item-success";
    String chambre = "verrouillées";
    String btnChambre ="";
    
    String pharmacie = "verrouillée";
    
    String cabinet = "verrouillé";
    
    String localServer = "verrouillé";
    String server = "verrouillé";
    String demolition = "activée";
    
    DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String reportDate = "0000-00-00 00:00:00";
    int annee;int mois;int jour;int heures;int minutes;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(@RequestParam(value = "launch", required = false) String launch, Model model) {
        if (launch != null) {
            model.addAttribute("launch", "non vide");
            debut = Calendar.getInstance().getTime();
            fin = debut;
            fin.setHours(debut.getHours() + 1);
            fin.setMinutes(debut.getMinutes() + 5);
            reportDate = df.format(fin);
        }
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
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
        model.addAttribute("annee", reportDate);
        return "profil";
    }

    @RequestMapping(value = "/help", method = RequestMethod.GET)
    public String help(Model model) {
        model.addAttribute("debut", debut);
        model.addAttribute("fin", fin);
        return "help";
    }

    @RequestMapping(value = "/clients", method = RequestMethod.GET)
    public String clients(Model model) {
        model.addAttribute("debut", debut);
        model.addAttribute("fin", fin);
        return "clients";
    }

    @RequestMapping(value = "/documents", method = RequestMethod.GET)
    public String documents(Model model) {
        model.addAttribute("debut", debut);
        model.addAttribute("fin", fin);
        return "documents";
    }

    @RequestMapping(value = "/securite", method = RequestMethod.GET)
    public String securits(Model model) {
        model.addAttribute("codeC", chambre);
        model.addAttribute("fondC", fondChambre);
        model.addAttribute("codeP", pharmacie);
        model.addAttribute("codeCb", cabinet);
        model.addAttribute("codeLS", localServer);
        model.addAttribute("codeS", server);
        model.addAttribute("codeD", demolition);
        model.addAttribute("fin", fin);
        return "securite";
    }
    
    @RequestMapping(value = "/securite/chambre", method = RequestMethod.POST)
    public String securit(
            @RequestParam(value = "codeChambre1", required = false) int codeChambre1,
            @RequestParam(value = "codeChambre2", required = false) int codeChambre2,
            @RequestParam(value = "codeChambre3", required = false) int codeChambre3,
            @RequestParam(value = "codeChambre4", required = false) int codeChambre4,
            Model model) {
        if (codeChambre1 == 8 && codeChambre2 == 5 && codeChambre3 == 0 && codeChambre4 == 1 ) {
            chambre = "<i class=\"fa fa-unlock\" id=\"icoChambre\" aria-hidden=\"true\"></i> A";
            fondChambre = "list-group-item-warning";
            btnChambre = "disabled";
        }
        model.addAttribute("codeC", chambre);
        model.addAttribute("fondC", fondChambre);
        model.addAttribute("btnC", btnChambre);
        
        model.addAttribute("codeP", pharmacie);
        
        model.addAttribute("codeCb", cabinet);
        model.addAttribute("fin", fin);
        return "securite";
    }
    
    @RequestMapping(value = "/securite/pharmacie", method = RequestMethod.POST)
    public String securit(
            @RequestParam(value = "codePharmacie1", required = false) String codePharmacie1,
            @RequestParam(value = "codePharmacie2", required = false) String codePharmacie2,
            @RequestParam(value = "codePharmacie3", required = false) String codePharmacie3,
            @RequestParam(value = "codePharmacie4", required = false) String codePharmacie4,
            @RequestParam(value = "codePharmacie5", required = false) String codePharmacie5,
            Model model) {
        if (codePharmacie1.equals("E")&& codePharmacie2.equals("B") && codePharmacie3.equals("O") && codePharmacie4.equals("L") && codePharmacie5.equals("A")) {
            pharmacie = "déverrouillée";
        }
        model.addAttribute("codeC", chambre);
        model.addAttribute("codeP", pharmacie);
        model.addAttribute("codeCb", cabinet);
        model.addAttribute("fin", fin);
        return "securite";
    }
    
    @RequestMapping(value = "/securite/cabinet", method = RequestMethod.POST)
    public String securit(
            @RequestParam(value = "codeCabinet1", required = false) String codeCabinet1,
            @RequestParam(value = "codeCabinet2", required = false) String codeCabinet2,
            @RequestParam(value = "codeCabinet3", required = false) String codeCabinet3,
            @RequestParam(value = "codeCabinet4", required = false) String codeCabinet4,
            Model model) {
        if (codeCabinet1.equals("V") && codeCabinet2.equals("E") && codeCabinet3.equals("R") && codeCabinet4.equals("T") ) {
            cabinet = "40811007 SNCT";
        }
        model.addAttribute("codeC", chambre);
        model.addAttribute("codeCb", cabinet);
        model.addAttribute("fin", fin);
        return "securite";
    }
    
    @RequestMapping(value = "/documents/1", method = RequestMethod.GET)
    public String document(Model model) {
        model.addAttribute("debut", debut);
        model.addAttribute("fin", fin);
        return "document";
    }
    
//TOOLS
    @RequestMapping(value = "/tools/nomenclatures", method = RequestMethod.GET)
    public String nomenclatures(Model model) {
        model.addAttribute("debut", debut);
        model.addAttribute("fin", fin);
        return "outils/nomenclatures/index";
    }

    @RequestMapping(value = "/tools/nomenclatures/snomed", method = RequestMethod.GET)
    public String snomed(Model model) {
        model.addAttribute("debut", debut);
        model.addAttribute("fin", fin);
        return "outils/nomenclatures/snomed";
    }

    @RequestMapping(value = "/tools/catalogues", method = RequestMethod.GET)
    public String catalogues(Model model) {
        model.addAttribute("debut", debut);
        model.addAttribute("fin", fin);
        return "outils/catalogues/index";
    }

    @RequestMapping(value = "/tools/codifications", method = RequestMethod.GET)
    public String codifications(Model model) {
        model.addAttribute("debut", debut);
        model.addAttribute("fin", fin);
        return "outils/codifications/index";
    }

    @RequestMapping(value = "/tools/classifications", method = RequestMethod.GET)
    public String classifications(Model model) {
        model.addAttribute("debut", debut);
        model.addAttribute("fin", fin);
        return "outils/classifications/index";
    }

    @RequestMapping(value = "/tools/dictionnaires", method = RequestMethod.GET)
    public String dictionnaires(Model model) {
        model.addAttribute("debut", debut);
        model.addAttribute("fin", fin);
        return "outils/dictionnaires/index";
    }

    @RequestMapping(value = "/tools/thesaurus", method = RequestMethod.GET)
    public String thesaurus(Model model) {
        model.addAttribute("debut", debut);
        model.addAttribute("fin", fin);
        return "outils/thesaurus/index";
    }

//    CHAT
    @RequestMapping(value = "/chat", method = RequestMethod.GET)
    public String chat(Model model) {
        model.addAttribute("debut", debut);
        model.addAttribute("fin", fin);
        return "chat";
    }

}
