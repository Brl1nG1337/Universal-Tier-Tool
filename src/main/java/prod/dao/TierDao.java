package prod.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import prod.domain.Tier;

import java.util.List;

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
}
