package prod.dao;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Repository;

import prod.domain.LogEntry;

@Repository
public class LogEntryDao extends GenericDaoImpl<LogEntry, Long> {
  public LogEntryDao() {
    super(LogEntry.class);
  }

  public List<LogEntry> findAllBestellungen() {
    return entityManager.createQuery("Select le FROM " + LogEntry.class.getSimpleName() + " le order by le.logId asc",
                            LogEntry.class).getResultList().stream().filter(e -> e.getTyp().equals("bestellung"))
                        .collect(Collectors.toList());
  }

}
