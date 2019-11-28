package project.service;

import project.entity.User;

import java.util.List;

public interface UtilService {
    boolean saveUser(User user);

    void deleteUser(User user);

    void updateUser(User user);

    User findUserById(int id);

    List<User> allUsers();
}
