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
        "SELECT tierID, tiername, krankheit, ansteckend, behandlungsmassnahme FROM v_tierKrankheiten order by tierID asc";
    List<Object[]> resultList = entityManager.createNativeQuery(sql).getResultList();
    return convertToTierKrankheitDto(resultList);
  }

  private List<TierKrankheitDto> convertToTierKrankheitDto(List<Object[]> resultList) {
    List<TierKrankheitDto> dtoList = new ArrayList<>();
    for (Object[] resultArray : resultList) {
      TierKrankheitDto dto = new TierKrankheitDto();
      dto.setTierId((Integer) resultArray[0]);
      dto.setTiername((String) resultArray[1]);
      dto.setKrankheit((String) resultArray[2]);
      dto.setAnsteckend((resultArray[3].equals(1) ? "Ja" : "Nein"));
      dto.setBehandlungsmassnahme((String) resultArray[4]);
      dtoList.add(dto);
    }

    return dtoList;
  }


}
