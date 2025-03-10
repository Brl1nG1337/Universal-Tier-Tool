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
@Table(name = "Gehege")
public class Gehege {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer gehegeID;
  private String name;
  private String fuetterungszeit;

  @ManyToOne
  @JoinColumn(name = "futterlagerID")
  private Futterlager futterlager;
}
