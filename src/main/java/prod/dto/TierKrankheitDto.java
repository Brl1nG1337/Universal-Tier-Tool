package prod.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TierKrankheitDto {
  private int tierId;
  private String tiername;
  private String krankheit;
  private String ansteckend;
  private String behandlungsmassnahme;
}
