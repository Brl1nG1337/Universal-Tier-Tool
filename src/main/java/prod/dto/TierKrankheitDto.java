package prod.dto;


public class TierKrankheitDto {
  private int tierId;
  private String tiername;
  private String krankheit;
  private String ansteckend;
  private String behandlungsmassnahme;
  public String getTiername() {
    return tiername;
  }

  public void setTiername(final String tiername) {
    this.tiername = tiername;
  }

  public int getTierId() {
    return tierId;
  }

  public void setTierId(final int tierId) {
    this.tierId = tierId;
  }

  public String getKrankheit() {
    return krankheit;
  }

  public void setKrankheit(final String krankheit) {
    this.krankheit = krankheit;
  }

  public String getAnsteckend() {
    return ansteckend;
  }

  public void setAnsteckend(final String ansteckend) {
    this.ansteckend = ansteckend;
  }

  public String getBehandlungsmassnahme() {
    return behandlungsmassnahme;
  }

  public void setBehandlungsmassnahme(final String behandlungsmassnahme) {
    this.behandlungsmassnahme = behandlungsmassnahme;
  }

}
