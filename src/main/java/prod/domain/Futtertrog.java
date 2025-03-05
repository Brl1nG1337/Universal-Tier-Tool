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
@Table(name = "Futtertrog")
public class Futtertrog {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer futtertrogID;

  @ManyToOne
  @JoinColumn(name = "gehegeID")
  private Gehege gehege;

  @ManyToOne
  @JoinColumn(name = "futterID")
  private Futter futter;

  private Double futtermengeKg;
}