package ru.jm.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.jm.springmvc.dao.UserDAO;
import ru.jm.springmvc.model.User;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    @Override
    @Transactional
    public List <User> getUsers() {
        return userDAO.getUsers();
    }

    @Override
    @Transactional
    public void saveUser(User theUser) {
        userDAO.saveUser(theUser);
    }

    @Override
    @Transactional
    public User getUser(long theId) {
        return userDAO.getUser(theId);
    }

    @Override
    @Transactional
    public void deleteUser(long theId) {
        userDAO.deleteUser(theId);
    }
}
