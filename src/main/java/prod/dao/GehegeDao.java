package prod.dao;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import prod.domain.Gehege;
import prod.dto.GehegeFuetterungDto;

@Repository
public class GehegeDao extends GenericDaoImpl<Gehege, Long> {
  public GehegeDao() {
    super(Gehege.class);
  }

  public List<GehegeFuetterungDto> findAllFuetterungsZeiten() {
    String sql =
        "SELECT g.gehegeid, g.name, g.fuetterungszeit, f.name, ft.futtermenge_kg " +
            "FROM gehege g " +
            "JOIN futterlager fl ON g.futterlagerid = fl.futterlagerid " +
            "JOIN futtertrog ft ON g.gehegeid = ft.gehegeid " +
            "JOIN futter f ON ft.futterid = f.futterid " +
            "ORDER BY g.gehegeid ASC";

    List<Object[]> resultList = entityManager.createNativeQuery(sql).getResultList();
    return convertToGehegeFuetterungDto(resultList);
  }

  private List<GehegeFuetterungDto> convertToGehegeFuetterungDto(List<Object[]> resultList) {
    List<GehegeFuetterungDto> dtoList = new   ArrayList<>();
    for (Object[] resultArray : resultList) {
      GehegeFuetterungDto dto = new GehegeFuetterungDto();
      dto.setGehegeId((Integer) resultArray[0]);
      dto.setGehegeName((String) resultArray[1]);
      dto.setFuetterungszeit((String) resultArray[2]);
      dto.setFutterName((String) resultArray[3]);
      dto.setFutterMenge(String.valueOf(resultArray[4])); // Konvertiere float zu String
      dtoList.add(dto);
    }
    return dtoList;
  }

}
