package com.project.spring.service;

import com.project.spring.entity.User;

import java.util.List;

public interface UserService {
    List<User> getAllUsers();

    void saveUser(User user);

    User getUserById(int id);

    void deleteUser(int id);

    void updateUser(User user);
}
