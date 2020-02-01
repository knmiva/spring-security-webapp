package ru.jm.springmvc.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.jm.springmvc.model.User;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository("userDAO")
@Transactional
public class UserDAOImpl implements UserDAO {

    @PersistenceContext
    public EntityManager entityManager;

    public List<User> getUsers() {
        return entityManager
                .createQuery("select theUser from User theUser", User.class)
                .getResultList();
    }

    public User saveUser(User theUser) {
        entityManager.persist(theUser);
        return theUser;
    }

    public User updateUser(User theUser) {
        entityManager.merge(theUser);
        return theUser;
    }

    public User getUser(Long theId) {
        return entityManager.find(User.class, theId);
    }

    public void deleteUser(Long id) {
        Query query = entityManager.createNativeQuery("DELETE FROM users WHERE id = " + id);
        query.executeUpdate();
    }
}
