package ru.jm.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.jm.springmvc.dao.UserDAO;
import ru.jm.springmvc.model.User;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    private UserDAO userDAO;

    @Autowired
    public UserServiceImpl (UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    @Override
    public List<User> getUsers() {
        return userDAO.getUsers();
    }

    @Override
    public User saveUser(User theUser) {
        return userDAO.saveUser(theUser);
    }

    @Override
    public User updateUser(User theUser) {
        return userDAO.updateUser(theUser);
    }

    @Override
    public User getUser(long theId) {
        return userDAO.getUser(theId);
    }

    @Override
    public void deleteUser(Long id) {
        userDAO.deleteUser(id);
    }
}
