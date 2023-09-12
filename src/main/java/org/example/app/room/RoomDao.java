package org.example.app.room;

import org.example.app.model.Room;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

@Repository
@Transactional
public class RoomDao {

    @PersistenceContext
    EntityManager em;

    public void save(Room entity) {

        em.persist(entity);
    }

    public void update(Room entity) {
        em.merge(entity);
    }

    public void delete(Room entity) {
        em.remove(em.contains(entity) ? entity : em.merge(entity));
    }

    public Room findById(Long id) {
        Room room = em.find(Room.class, id);
        return room;
    }

    public List<Room> findAll() {
        TypedQuery<Room> query = em.createQuery("SELECT r from Room r FETCH ALL PROPERTIES", Room.class);
        List<Room> rooms = query.getResultList();
        return rooms;
    }
}


