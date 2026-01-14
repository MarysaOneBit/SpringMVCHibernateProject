package com.project.spring.service;

import com.project.spring.entity.User;

import java.util.List;

public interface UserService {
    public List<User> getAllUsers();

    public void saveUser(User user);

    public User getUserById(int id);

    public void deleteUser(int id);
}
