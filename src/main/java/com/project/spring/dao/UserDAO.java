package com.project.spring.dao;

import com.project.spring.entity.User;

import java.util.List;

public interface UserDAO {

    public List<User> getAllUsers();

    public void saveUser(User user);

    public User getUserById(int id);

    public void deleteUser(int id);

}
