package prod.dao;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import jakarta.persistence.NoResultException;
import prod.domain.Futter;
import prod.domain.Gehege;
import prod.domain.Lagerbestand;

@Repository
public class GehegeDao extends GenericDaoImpl<Gehege, Long> {
  public GehegeDao() {
    super(Gehege.class);
  }

}
