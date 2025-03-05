package prod.domain;

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
@Table(name = "Tier")
public class Tier {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer tierID;
  private String name;
  private String tiersorte;
  private String tierart;
  private String geschlecht;
  private Integer jahre;
  private String geburtstag;
  private String herkunft;
  private Integer schwanger;

  @ManyToOne
  @JoinColumn(name = "gehegeID")
  private Gehege gehege;
}
