package org.example.app.user;

import org.example.app.model.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import java.util.List;

@Repository
@Transactional
public class UserDao {

    @PersistenceContext
    EntityManager em;

    public void save(User entity) {
        em.persist(entity);
    }

    public void update(User entity) {
        em.merge(entity);
    }

    public void delete(User entity) {
        em.remove(em.contains(entity) ? entity : em.merge(entity));
    }

    public User findById(Long id) {
        User user = em.find(User.class, id);
        return user;
    }

    public List<User> findAll() {
        TypedQuery<User> query = em.createQuery("SELECT u from User u FETCH ALL PROPERTIES", User.class);
        List<User> users = query.getResultList();
        return users;
    }

}
