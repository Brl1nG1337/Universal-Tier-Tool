package prod.dao;

import org.springframework.stereotype.Repository;

import prod.domain.Krankheit;

@Repository
public class KrankheitDao extends GenericDaoImpl<Krankheit, Long> {
  public KrankheitDao() {
    super(Krankheit.class);
  }

}
