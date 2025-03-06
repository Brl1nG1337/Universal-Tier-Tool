package prod.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import prod.dao.KrankheitDao;
import prod.dao.TierDao;
import prod.domain.Krankheit;
import prod.domain.Tier;

@Controller
public class TierController {

  @Autowired
  private TierDao tierDao;
  @Autowired
  private KrankheitDao krankheitDao;

  @GetMapping("/")
  public String home() {
    return "index";
  }

  @GetMapping("/tiere")
  public String tiere(Model model) {
    // Tiere aus der DB laden und ans Model übergeben
    final List<Tier> alleTiere = tierDao.findAll();
    model.addAttribute("tiere", alleTiere);
    return "tiere";
  }

  @GetMapping("/tier-detail")
  public String tierDetail(@RequestParam(value = "tierId", required = false) Long id, Model model) {
    if (id == null) {
      return "error";  // Gibt eine Fehlerseite zurück, falls keine ID übergeben wurde
    }
    Tier tier = tierDao.findById(id).orElse(null);

    if (tier == null) {
      return "error";  // Gibt eine Fehlerseite zurück, falls kein Tier mit der ID gefunden wurde
    }
    model.addAttribute("tier", tier);
    return "tier-detail";
  }



  @PostMapping("/tiere/add")
  public String addTier(@RequestParam String name, @RequestParam String tierart,
      @RequestParam String geschlecht) {
    // Tier in die DB speichern
    return "redirect:/tiere";
  }

  @GetMapping("/krankheiten")
  public String krankheiten(Model model) {
    // Krankheiten aus der DB laden
    final List<Krankheit> alleKrankheit = krankheitDao.findAll();
    model.addAttribute("krankheiten", alleKrankheit);
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