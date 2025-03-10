package prod.dao;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import jakarta.persistence.NoResultException;
import prod.domain.Futter;
import prod.domain.Lagerbestand;

@Repository
public class FutterDao extends GenericDaoImpl<Futter, Long> {
  public FutterDao() {
    super(Futter.class);
  }

  @Override
  @Query(value = "SELECT f1_0.futterid, f1_0.futterlagerid, f1_0.menge, f1_0.name FROM futter f1_0;", nativeQuery = true)
  public List<Futter> findAll() {
    return super.findAll();
  }

}
