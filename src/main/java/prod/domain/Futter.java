package prod.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "Futter")
public class Futter {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer futterID;
  private String name;
  @Column(name = "menge_kg")
  private Double mengeKg;
  @ManyToOne
  @JoinColumn(name = "futterlagerID")
  private Futterlager futterlager;


  public Futter(Integer futterID, String name, Double mengeKg) {
    this.futterID = futterID;
    this.name = name;
    this.mengeKg = mengeKg;
  }
}