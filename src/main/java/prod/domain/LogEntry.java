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
@Table(name = "log_entry")
public class LogEntry {
  public Long getLogId() {
    return logId;
  }

  public void setLogId(final Long logId) {
    this.logId = logId;
  }

  public String getTyp() {
    return typ;
  }

  public void setTyp(final String typ) {
    this.typ = typ;
  }

  public String getDetail() {
    return detail;
  }

  public void setDetail(final String detail) {
    this.detail = detail;
  }

  public String getDatum() {
    return datum;
  }

  public void setDatum(final String datum) {
    this.datum = datum;
  }

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long logId;
  private String typ;
  private String detail;
  private String datum;
}
