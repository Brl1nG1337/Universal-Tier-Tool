package prod.dao;

import org.springframework.stereotype.Repository;

import prod.domain.LogEntry;

@Repository
public class LogDao extends GenericDaoImpl<LogEntry, Long> {
  public LogDao() {
    super(LogEntry.class);
  }
}
