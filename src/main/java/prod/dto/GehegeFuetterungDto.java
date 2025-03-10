package prod.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class GehegeFuetterungDto {
  private int gehegeId;
  private String gehegeName;
  private String fuetterungszeit;
  private String futterName;
  private String futterMenge;
}
