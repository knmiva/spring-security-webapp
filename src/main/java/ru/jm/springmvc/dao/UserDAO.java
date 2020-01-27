package ru.jm.springmvc.dao;

import java.util.List;

import ru.jm.springmvc.model.User;

public interface UserDAO {

    List < User > getUsers();

    void saveUser(User theUser);

    User getUser(long theId);

    void deleteUser(long theId);
}
