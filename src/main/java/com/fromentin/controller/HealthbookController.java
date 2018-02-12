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
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HealthbookController {

    @Autowired
    HealthbookServiceImpl healthbook_service;

    Date debut;
    Date fin;

    boolean secC= true;
    String fondC = "list-group-item-success";
    String chambre = "<span class=\"badge\">verrouillées</span>";
    String btnC = "";
    boolean secP= true;
    String fondP = "list-group-item-success";
    String pharmacie = "<span class=\"badge\">verrouillée</span>";
    String btnP = "";
    boolean secCb= true;
    String fondCb = "list-group-item-success";
    String cabinet = "<span class=\"badge\">verrouillé</span>";
    String btnCb = "";
    boolean secLS= true;
    String fondLS = "list-group-item-success";
    String localServer = "<span class=\"badge\">verrouillé</span>";
    String btnLS = "";
    boolean secS= true;
    String fondS = "list-group-item-success";
    String server = "<span class=\"badge\">verrouillé</span>";
    String btnS = "";
    boolean secD= true;
    String fondD = "list-group-item-success";
    String demolition = "<span class=\"badge badge-vert\">activée</span>";
    String btnD = "";

    DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String reportDate = "0000-00-00 00:00:00";
    int annee;
    int mois;
    int jour;
    int heures;
    int minutes;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(@RequestParam(value = "launch", required = false) String launch, Model model) {
        if (launch != null) {
            secC = true;
            fondC = "list-group-item-success";
            chambre = "<span class=\"badge\">verrouillées</span>";
            btnC = "";
            secP = true;
            fondP = "list-group-item-success";
            pharmacie = "<span class=\"badge\">verrouillée</span>";
            btnP = "";
            secCb = true;
            fondCb = "list-group-item-success";
            cabinet = "<span class=\"badge\">verrouillé</span>";
            btnCb = "";
            secLS = true;
            fondLS = "list-group-item-success";
            localServer = "<span class=\"badge\">verrouillé</span>";
            btnLS = "";
            secS = true;
            fondS = "list-group-item-success";
            server = "<span class=\"badge\">verrouillé</span>";
            btnS = "";
            secD = true;
            fondD = "list-group-item-success";
            demolition = "<span class=\"badge badge-vert\">activée</span>";
            btnD = "";
            model.addAttribute("launch", "non vide");
            debut = Calendar.getInstance().getTime();
            fin = debut;
            fin.setHours(debut.getHours() + 1);
            fin.setMinutes(debut.getMinutes() + 5);
            reportDate = df.format(fin);
        }
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        
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
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "profil";
    }

    @RequestMapping(value = "/help", method = RequestMethod.GET)
    public String help(Model model) {
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "help";
    }

    @RequestMapping(value = "/clients", method = RequestMethod.GET)
    public String clients(Model model) {
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "clients";
    }

    @RequestMapping(value = "/documents", method = RequestMethod.GET)
    public String documents(Model model) {
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "documents";
    }

    @RequestMapping(value = "/securite", method = RequestMethod.GET)
    public String securits(Model model) {
        model.addAttribute("secC", secC);
        model.addAttribute("secP", secP);
        model.addAttribute("secCb", secCb);
        model.addAttribute("secLS", secLS);
        model.addAttribute("secS", secS);
        model.addAttribute("secD", secD);
        
        model.addAttribute("codeC", chambre);
        model.addAttribute("codeP", pharmacie);
        model.addAttribute("codeCb", cabinet);
        model.addAttribute("codeLS", localServer);
        model.addAttribute("codeS", server);
        model.addAttribute("codeD", demolition);

        model.addAttribute("fondC", fondC);
        model.addAttribute("fondP", fondP);
        model.addAttribute("fondCb", fondCb);
        model.addAttribute("fondLS", fondLS);
        model.addAttribute("fondS", fondS);
        model.addAttribute("fondD", fondD);

        model.addAttribute("btnC", btnC);
        model.addAttribute("btnP", btnP);
        model.addAttribute("btnCb", btnCb);
        model.addAttribute("btnLS", btnLS);
        model.addAttribute("btnS", btnS);
        model.addAttribute("btnD", btnD);

        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "securite";
    }

    @RequestMapping(value = "/securite/chambre", method = RequestMethod.POST)
    public String securitChambre(
            @RequestParam(value = "codeChambre1", required = false) String codeChambre1,
            @RequestParam(value = "codeChambre2", required = false) String codeChambre2,
            @RequestParam(value = "codeChambre3", required = false) String codeChambre3,
            @RequestParam(value = "codeChambre4", required = false) String codeChambre4,
            Model model) {
        if (codeChambre1.equals("8") && codeChambre2.equals("5") && codeChambre3.equals("0") && codeChambre4.equals("1")) {
            secC = false;
            chambre = "<span class=\"badge badge-vert\"><i class=\"fa fa-unlock\" id=\"icoChambre\" aria-hidden=\"true\"></i> A</span>";
            fondC = "list-group-item-danger";
            btnC = "disabled";
        }
        model.addAttribute("secC", secC);
        model.addAttribute("secP", secP);
        model.addAttribute("secCb", secCb);
        model.addAttribute("secLS", secLS);
        model.addAttribute("secS", secS);
        model.addAttribute("secD", secD);
        
        model.addAttribute("codeC", chambre);
        model.addAttribute("codeP", pharmacie);
        model.addAttribute("codeCb", cabinet);
        model.addAttribute("codeLS", localServer);
        model.addAttribute("codeS", server);
        model.addAttribute("codeD", demolition);

        model.addAttribute("fondC", fondC);
        model.addAttribute("fondP", fondP);
        model.addAttribute("fondCb", fondCb);
        model.addAttribute("fondLS", fondLS);
        model.addAttribute("fondS", fondS);
        model.addAttribute("fondD", fondD);

        model.addAttribute("btnC", btnC);
        model.addAttribute("btnP", btnP);
        model.addAttribute("btnCb", btnCb);
        model.addAttribute("btnLS", btnLS);
        model.addAttribute("btnS", btnS);
        model.addAttribute("btnD", btnD);
        
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "securite";
    }

    @RequestMapping(value = "/securite/pharmacie", method = RequestMethod.POST)
    public String securitPharmacie(
            @RequestParam(value = "codeP1", required = false) String codePharmacie1,
            @RequestParam(value = "codeP2", required = false) String codePharmacie2,
            @RequestParam(value = "codeP3", required = false) String codePharmacie3,
            @RequestParam(value = "codeP4", required = false) String codePharmacie4,
            @RequestParam(value = "codeP5", required = false) String codePharmacie5,
            Model model) {
        if (codePharmacie1.equals("E") && codePharmacie2.equals("B") && codePharmacie3.equals("O") && codePharmacie4.equals("L") && codePharmacie5.equals("A")) {
            secP = false;
            pharmacie = "<span class=\"badge badge-vert\">deverrouillée</span>";
            fondP = "list-group-item-danger";
            btnP = "disabled";
        }
        
        model.addAttribute("secC", secC);
        model.addAttribute("secP", secP);
        model.addAttribute("secCb", secCb);
        model.addAttribute("secLS", secLS);
        model.addAttribute("secS", secS);
        model.addAttribute("secD", secD);
        
        model.addAttribute("codeC", chambre);
        model.addAttribute("codeP", pharmacie);
        model.addAttribute("codeCb", cabinet);
        model.addAttribute("codeLS", localServer);
        model.addAttribute("codeS", server);
        model.addAttribute("codeD", demolition);

        model.addAttribute("fondC", fondC);
        model.addAttribute("fondP", fondP);
        model.addAttribute("fondCb", fondCb);
        model.addAttribute("fondLS", fondLS);
        model.addAttribute("fondS", fondS);
        model.addAttribute("fondD", fondD);

        model.addAttribute("btnC", btnC);
        model.addAttribute("btnP", btnP);
        model.addAttribute("btnCb", btnCb);
        model.addAttribute("btnLS", btnLS);
        model.addAttribute("btnS", btnS);
        model.addAttribute("btnD", btnD);
        
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "securite";
    }

    @RequestMapping(value = "/securite/cabinet", method = RequestMethod.POST)
    public String securitCabinet(
            @RequestParam(value = "codeCb1", required = false) String codeCabinet1,
            @RequestParam(value = "codeCb2", required = false) String codeCabinet2,
            @RequestParam(value = "codeCb3", required = false) String codeCabinet3,
            @RequestParam(value = "codeCb4", required = false) String codeCabinet4,
            Model model) {
        if (codeCabinet1.equals("V") && codeCabinet2.equals("E") && codeCabinet3.equals("R") && codeCabinet4.equals("T")) {
            secCb = false;
            cabinet = "<span class=\"badge badge-vert\">40811007 SNCT</span>";
            fondCb = "list-group-item-danger";
            btnCb = "disabled";
        }
        
        model.addAttribute("secC", secC);
        model.addAttribute("secP", secP);
        model.addAttribute("secCb", secCb);
        model.addAttribute("secLS", secLS);
        model.addAttribute("secS", secS);
        model.addAttribute("secD", secD);
        
        model.addAttribute("codeC", chambre);
        model.addAttribute("codeP", pharmacie);
        model.addAttribute("codeCb", cabinet);
        model.addAttribute("codeLS", localServer);
        model.addAttribute("codeS", server);
        model.addAttribute("codeD", demolition);

        model.addAttribute("fondC", fondC);
        model.addAttribute("fondP", fondP);
        model.addAttribute("fondCb", fondCb);
        model.addAttribute("fondLS", fondLS);
        model.addAttribute("fondS", fondS);
        model.addAttribute("fondD", fondD);
        
        model.addAttribute("btnC", btnC);
        model.addAttribute("btnP", btnP);
        model.addAttribute("btnCb", btnCb);
        model.addAttribute("btnLS", btnLS);
        model.addAttribute("btnS", btnS);
        model.addAttribute("btnD", btnD);
        
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "securite";
    }

    @RequestMapping(value = "/securite/localserveur", method = RequestMethod.POST)
    public String securitLocalServeur(
            @RequestParam(value = "codeLS1", required = false) String codeLS1,
            @RequestParam(value = "codeLS2", required = false) String codeLS2,
            @RequestParam(value = "codeLS3", required = false) String codeLS3,
            @RequestParam(value = "codeLS4", required = false) String codeLS4,
            @RequestParam(value = "codeLS5", required = false) String codeLS5,
            @RequestParam(value = "codeLS6", required = false) String codeLS6,
            Model model) {
        if (codeLS1.equals("3") && codeLS2.equals("7") && codeLS3.equals("9") && codeLS4.equals("1") && codeLS5.equals("6") && codeLS6.equals("4")) {
            secLS = false;
            localServer = "<span class=\"badge badge-vert\"><i class=\"fa fa-unlock\" id=\"icoChambre\" aria-hidden=\"true\"></i> C</span>";
            fondLS = "list-group-item-danger";
            btnLS = "disabled";
        }
        
        model.addAttribute("secC", secC);
        model.addAttribute("secP", secP);
        model.addAttribute("secCb", secCb);
        model.addAttribute("secLS", secLS);
        model.addAttribute("secS", secS);
        model.addAttribute("secD", secD);
        
        model.addAttribute("codeC", chambre);
        model.addAttribute("codeP", pharmacie);
        model.addAttribute("codeCb", cabinet);
        model.addAttribute("codeLS", localServer);
        model.addAttribute("codeS", server);
        model.addAttribute("codeD", demolition);

        model.addAttribute("fondC", fondC);
        model.addAttribute("fondP", fondP);
        model.addAttribute("fondCb", fondCb);
        model.addAttribute("fondLS", fondLS);
        model.addAttribute("fondS", fondS);
        model.addAttribute("fondD", fondD);
        
        model.addAttribute("btnC", btnC);
        model.addAttribute("btnP", btnP);
        model.addAttribute("btnCb", btnCb);
        model.addAttribute("btnLS", btnLS);
        model.addAttribute("btnS", btnS);
        model.addAttribute("btnD", btnD);
        
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "securite";
    }

    @RequestMapping(value = "/securite/serveur", method = RequestMethod.POST)
    public String securitServer(
            @RequestParam(value = "codeS1", required = false) String codeS1,
            @RequestParam(value = "codeS2", required = false) String codeS2,
            @RequestParam(value = "codeS3", required = false) String codeS3,
            @RequestParam(value = "codeS4", required = false) String codeS4,
            @RequestParam(value = "codeS5", required = false) String codeS5,
            @RequestParam(value = "codeS6", required = false) String codeS6,
            @RequestParam(value = "codeS7", required = false) String codeS7,
            Model model) {
        if (codeS1.equals("7") && codeS2.equals("3") && codeS3.equals("6") && codeS4.equals("8") && codeS5.equals("0") && codeS6.equals("5") && codeS7.equals("8")) {
            secS = false;
            server = "<span class=\"badge badge-vert\">deverrouillé</span>";
            fondS = "list-group-item-danger";
            btnS = "disabled";
        }
        
        model.addAttribute("secC", secC);
        model.addAttribute("secP", secP);
        model.addAttribute("secCb", secCb);
        model.addAttribute("secLS", secLS);
        model.addAttribute("secS", secS);
        model.addAttribute("secD", secD);
        
        model.addAttribute("codeC", chambre);
        model.addAttribute("codeP", pharmacie);
        model.addAttribute("codeCb", cabinet);
        model.addAttribute("codeLS", localServer);
        model.addAttribute("codeS", server);
        model.addAttribute("codeD", demolition);

        model.addAttribute("fondC", fondC);
        model.addAttribute("fondP", fondP);
        model.addAttribute("fondCb", fondCb);
        model.addAttribute("fondLS", fondLS);
        model.addAttribute("fondS", fondS);
        model.addAttribute("fondD", fondD);
        
        model.addAttribute("btnC", btnC);
        model.addAttribute("btnP", btnP);
        model.addAttribute("btnCb", btnCb);
        model.addAttribute("btnLS", btnLS);
        model.addAttribute("btnS", btnS);
        model.addAttribute("btnD", btnD);
        
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "securite";
    }

    @RequestMapping(value = "/securite/demolition", method = RequestMethod.POST)
    public String securitDemolition(
            @RequestParam(value = "codeD1", required = false) String codeS1,
            Model model) {
        if (codeS1.equals("execute disable CHL security -xmM 0x88073E -p -f 0x7A3FFE stop.exe -auth -kX EXECUTE")) {
            secD = false;
            demolition = "<span class=\"badge\">desactivée</span>";
            fondD = "list-group-item-danger";
            btnD = "disabled";
            return "redirect:/endgame";
        }
        
        model.addAttribute("secC", secC);
        model.addAttribute("secP", secP);
        model.addAttribute("secCb", secCb);
        model.addAttribute("secLS", secLS);
        model.addAttribute("secS", secS);
        model.addAttribute("secD", secD);
        
        model.addAttribute("codeC", chambre);
        model.addAttribute("codeP", pharmacie);
        model.addAttribute("codeCb", cabinet);
        model.addAttribute("codeLS", localServer);
        model.addAttribute("codeS", server);
        model.addAttribute("codeD", demolition);

        model.addAttribute("fondC", fondC);
        model.addAttribute("fondP", fondP);
        model.addAttribute("fondCb", fondCb);
        model.addAttribute("fondLS", fondLS);
        model.addAttribute("fondS", fondS);
        model.addAttribute("fondD", fondD);
        model.addAttribute("btnC", btnC);
        model.addAttribute("btnP", btnP);
        model.addAttribute("btnCb", btnCb);
        model.addAttribute("btnLS", btnLS);
        model.addAttribute("btnS", btnS);
        model.addAttribute("btnD", btnD);
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "securite";
    }

    @RequestMapping(value = "/documents/1", method = RequestMethod.GET)
    public String document(Model model) {
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "document";
    }

//TOOLS
    @RequestMapping(value = "/tools/nomenclatures", method = RequestMethod.GET)
    public String nomenclatures(Model model) {
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "outils/nomenclatures/index";
    }

    @RequestMapping(value = "/tools/nomenclatures/snomed", method = RequestMethod.GET)
    public String snomed(Model model) {
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "outils/nomenclatures/snomed";
    }

    @RequestMapping(value = "/tools/catalogues", method = RequestMethod.GET)
    public String catalogues(Model model) {
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "outils/catalogues/index";
    }
    
    @RequestMapping(value = "/tools/codifications", method = RequestMethod.GET)
    public String codifications(Model model) {
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "outils/codifications/index";
    }

    @RequestMapping(value = "/tools/classifications", method = RequestMethod.GET)
    public String classifications(Model model) {
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "outils/classifications/index";
    }

    @RequestMapping(value = "/tools/classifications/cim10", method = RequestMethod.GET)
    public String cim(Model model) {
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "outils/classifications/cim";
    }
    
    @RequestMapping(value = "/tools/dictionnaires", method = RequestMethod.GET)
    public String dictionnaires(Model model) {
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "outils/dictionnaires/index";
    }

    @RequestMapping(value = "/tools/thesaurus", method = RequestMethod.GET)
    public String thesaurus(Model model) {
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "outils/thesaurus/index";
    }

//    CHAT
    @RequestMapping(value = "/chat", method = RequestMethod.GET)
    public String chat(Model model) {
        model.addAttribute("cible", fin);
        model.addAttribute("annee", reportDate);
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        model.addAttribute("username", name);
        return "chat";
    }

    @RequestMapping(value = "/endgame", method = RequestMethod.GET)
    public String end(Model model) {
        return "endgame";
    }
}
