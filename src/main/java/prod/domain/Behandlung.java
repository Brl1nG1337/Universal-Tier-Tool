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
@Table(name = "Behandlung")
public class Behandlung {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer behandlungID;

  @ManyToOne
  @JoinColumn(name = "krankheitID")
  private Krankheit krankheit;

  @ManyToOne
  @JoinColumn(name = "medikamentID")
  private Medikament medikament;

  private Double mengeMgKg;
}