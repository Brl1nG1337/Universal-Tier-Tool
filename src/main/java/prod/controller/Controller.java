package prod.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import prod.dao.FutterDao;
import prod.dao.GehegeDao;
import prod.dao.KrankheitDao;
import prod.dao.LogEntryDao;
import prod.dao.TierDao;
import prod.domain.Krankheit;
import prod.domain.LogEntry;
import prod.domain.Tier;
import prod.dto.GehegeFuetterungDto;
import prod.dto.TierKrankheitDto;

@org.springframework.stereotype.Controller
public class Controller {

  @Autowired
  private TierDao tierDao;
  @Autowired
  private KrankheitDao krankheitDao;
  @Autowired
  private FutterDao futterDao;
  @Autowired
  private GehegeDao gehegeeDao;
  @Autowired
  private LogEntryDao logEntryDao;

  @GetMapping("/")
  public String home() {
    return "index";
  }

  @GetMapping("/tiere")
  public String tiere(Model model) {
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


  @GetMapping("/krankheiten")
  public String krankheiten(Model model) {
    // Krankheiten aus der DB laden
    final List<Krankheit> alleKrankheit = krankheitDao.findAll();
    model.addAttribute("krankheiten", alleKrankheit);
    return "krankheiten";
  }

  @GetMapping("/futterlager")
  public String futterlager(Model model) {
    model.addAttribute("futterList", futterDao.findAll());
    return "futterlager";
  }

  @GetMapping("/fuetterung")
  public String showFuetterungsplan(Model model) {
    final List<GehegeFuetterungDto> allFuetterungsZeiten = gehegeeDao.findAllFuetterungsZeiten();
    model.addAttribute("gehegeFuetterungsDtos", allFuetterungsZeiten);
    return "fuetterung";
  }

  @GetMapping("/besondere-pflege")
  public String showBesondere(Model model) {
    final List<Tier> allSchwanger = tierDao.findAllSchwanger();
    final List<Tier> jungTiere = tierDao.findAllJungtiere();
    final List<TierKrankheitDto> krankeTiere = tierDao.findAllKrankeTiere();
    model.addAttribute("schwangereTiere", allSchwanger);
    model.addAttribute("jungtiere", jungTiere);
    model.addAttribute("tierKrankheitDtos", krankeTiere);
    return "besondere-pflege";
  }

  @GetMapping("/bestellungen")
  public String bestellungen(Model model) {
    final List<LogEntry> bestellungen = logEntryDao.findAllBestellungen();
    model.addAttribute("bestellungen", bestellungen);
    return "bestellungen";
  }
}