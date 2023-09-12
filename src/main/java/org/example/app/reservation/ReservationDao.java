package org.example.app.reservation;

import org.example.app.model.Reservation;
import org.example.app.model.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

@Repository
@Transactional
public class ReservationDao {

    @PersistenceContext
    EntityManager em;

    public void save(Reservation entity) {
        em.persist(entity);
    }

    public void update(Reservation entity) {
        em.merge(entity);
    }

    public void delete(Reservation entity) {
        em.remove(em.contains(entity) ? entity : em.merge(entity));
    }

    public Reservation findById(Long id) {
        Reservation reservation = em.find(Reservation.class, id);
        return reservation;
    }

    public List<Reservation> findAll() {
        TypedQuery<Reservation> query = em.createQuery("SELECT r from Reservation r FETCH ALL PROPERTIES", Reservation.class);
        List<Reservation> reservations = query.getResultList();
        return reservations;
    }

    public List<Reservation> findReservationsByUser(User user) {
        return em.createQuery("SELECT r FROM Reservation r  WHERE r.user =: user", Reservation.class)
                .setParameter("user", user)
                .getResultList();
    }
}



