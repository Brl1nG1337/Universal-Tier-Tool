package prod.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TierController {

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/tiere")
    public String tiere(Model model) {
        // Tiere aus der DB laden und ans Model übergeben
        return "tiere";
    }

    @PostMapping("/tiere/add")
    public String addTier(@RequestParam String name, @RequestParam String tierart, @RequestParam String geschlecht) {
        // Tier in die DB speichern
        return "redirect:/tiere";
    }

    @GetMapping("/krankheiten")
    public String krankheiten(Model model) {
        // Krankheiten aus der DB laden
        return "krankheiten";
    }

    @GetMapping("/futterlager")
    public String futterlager(Model model) {
        // Futterlagerbestand anzeigen
        return "futterlager";
    }

    @PostMapping("/futterlager/order")
    public String orderFutter(@RequestParam int futterId) {
        // Automatische Nachbestellung von Futter
        return "redirect:/futterlager";
    }
}