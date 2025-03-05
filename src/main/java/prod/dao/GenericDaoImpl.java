package prod.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

public abstract class GenericDaoImpl<T, ID> implements GenericDao<T, ID> {

  @PersistenceContext
  protected EntityManager entityManager;

  private final Class<T> entityClass;

  @Autowired
  public GenericDaoImpl(Class<T> entityClass) {
    this.entityClass = entityClass;
  }

  @Override
  @Transactional
  public T save(T entity) {
    entityManager.persist(entity);
    return entity;
  }

  @Override
  public Optional<T> findById(ID id) {
    T entity = entityManager.find(entityClass, id);
    return Optional.ofNullable(entity);
  }

  @Override
  public List<T> findAll() {
    return entityManager.createQuery("SELECT e FROM " + entityClass.getSimpleName() + " e",
        entityClass).getResultList();
  }

  @Override
  @Transactional
  public T update(T entity) {
    return entityManager.merge(entity);
  }

  @Override
  @Transactional
  public void deleteById(ID id) {
    T entity = findById(id).orElseThrow(() -> new RuntimeException("Entity not found"));
    entityManager.remove(entity);
  }

  @Override
  @Transactional
  public void delete(T entity) {
    entityManager.remove(entity);
  }
}