package ru.jm.springmvc.dao;

import java.util.List;

import ru.jm.springmvc.model.User;

public interface UserDAO {

    List<User> getUsers();

    User saveUser(User theUser);

    User getUser(Long theId);

    void deleteUser(Long id);

    User updateUser(User theUser);
}
