package prod.dao;

import prod.domain.Futterlager;
import prod.domain.LogEntry;

public class FutterLagerDao extends GenericDaoImpl<Futterlager, Long> {
  public FutterLagerDao() {
    super(Futterlager.class);
  }
}
