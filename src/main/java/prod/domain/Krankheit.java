package prod.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "Krankheit")
public class Krankheit {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer krankheitID;
  private String name;
  private Integer ansteckend;
  private String behandlungsmassnahme;
}