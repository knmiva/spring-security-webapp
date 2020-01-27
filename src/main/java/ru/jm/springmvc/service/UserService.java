package ru.jm.springmvc.service;

import java.util.List;

import ru.jm.springmvc.model.User;

public interface UserService {

    List < User > getUsers();

    void saveUser(User theUser);

    User getUser(long theId);

    void deleteUser(long theId);

}
