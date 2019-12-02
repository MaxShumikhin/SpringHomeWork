package project.dao;

import project.entity.User;

import java.util.List;

public interface MethodsDao {

    boolean saveUserDao(User user);

    void deleteUserDao(User user);

    void updateUserDao(User user);

    User findUserByIdDao(int id);

    List<User> allUsersDao();

    List<User> oneUserDao(User user);

}
