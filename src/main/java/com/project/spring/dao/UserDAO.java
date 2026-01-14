package com.project.spring.dao;

import com.project.spring.entity.User;

import java.util.List;

public interface UserDAO {
    List<User> getAllUsers();

    void saveUser(User user);

    void updateUser(User user);

    User getUserById(int id);

    void deleteUser(int id);

}
