package project.dao;

import project.entity.User;

public interface CheckMethodsDao {

    boolean checkLoginAndPasswordDao(User user);

     boolean checkLoginDao(User user);
}
