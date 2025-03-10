package prod.dao;

import org.springframework.stereotype.Repository;

import prod.domain.Futterlager;

@Repository
public class FutterLagerDao extends GenericDaoImpl<Futterlager, Long> {
  public FutterLagerDao() {
    super(Futterlager.class);
  }
}
