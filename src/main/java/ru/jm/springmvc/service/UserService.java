package ru.jm.springmvc.service;

import java.util.List;

import ru.jm.springmvc.model.User;

public interface UserService {

    List<User> getUsers();

    User saveUser(User theUser);

    User getUser(long theId);

    void deleteUser(Long id);

    User updateUser(User theUser);

}
