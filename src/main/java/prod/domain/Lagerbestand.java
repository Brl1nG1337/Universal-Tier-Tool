package prod.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "v_lagerbestand")
public class Lagerbestand {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @Column(name = "Futtersorte")
  private String name;

  @Column(name = "Verfügbarer_Bestand")  // Hier wird der entsprechende Spaltenname aus der View gemappt
  private Double bestand;

}
