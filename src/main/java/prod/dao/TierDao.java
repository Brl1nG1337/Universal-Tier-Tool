package prod.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import prod.domain.Tier;
import prod.dto.TierKrankheitDto;

@Repository
public class TierDao extends GenericDaoImpl<Tier, Long> {
  public TierDao() {
    super(Tier.class);
  }

  @Override
  @Query(value = "SELECT tierID, name, tiersorte, tierart, geschlecht, jahre, geburtstag, herkunft, schwanger, gehegeID FROM tier", nativeQuery = true)
  public List<Tier> findAll() {
    return super.findAll();
  }

  public List<Tier> findAllSchwanger() {
    return entityManager.createQuery("SELECT t FROM " + Tier.class.getSimpleName()
        + " t where t.schwanger = 1 order by t.tierID asc", Tier.class).getResultList();
  }

  public List<Tier> findAllJungtiere() {
    return entityManager.createQuery("SELECT t FROM " + Tier.class.getSimpleName()
        + " t where t.jahre <= 3 order by t.tierID asc", Tier.class).getResultList();
  }


  public List<TierKrankheitDto> findAllKrankeTiere() {
    String sql =
        "SELECT tierID, tiername, krankheit, ansteckend, behandlungsmassnahme FROM v_tierKrankheiten order by tierID asc"; // Ersetzen Sie "v_tierKrankheiten" mit dem tatsächlichen Namen Ihrer View

    List<Object[]> resultList = entityManager.createNativeQuery(sql).getResultList();
    return convertToTierKrankheitDto(resultList);
  }

  private List<TierKrankheitDto> convertToTierKrankheitDto(List<Object[]> resultList) {
    List<TierKrankheitDto> dtoList = new ArrayList<>();

    for (Object[] resultArray : resultList) {
      // Erstellen Sie ein neues DTO für jede Zeile in den Ergebnissen
      TierKrankheitDto dto = new TierKrankheitDto();

      // Konvertieren Sie die einzelnen Werte aus dem Array in die DTO-Attribute
      dto.setTierId((Integer) resultArray[0]); // TierID als Integer
      dto.setTiername((String) resultArray[1]); // Tiername als String
      dto.setKrankheit((String) resultArray[2]); // Krankheit als String
      dto.setAnsteckend((resultArray[3].equals(1) ? "Ja" : "Nein")); // Ansteckend als boolean
      dto.setBehandlungsmassnahme((String) resultArray[4]); // Behandlungsmassnahme als String

      // Fügen Sie das DTO zur Ergebnisliste hinzu
      dtoList.add(dto);
    }

    return dtoList;
  }


}
