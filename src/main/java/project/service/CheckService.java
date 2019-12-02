package project.service;

import project.entity.User;

public interface CheckService {

    boolean checkRoleUserDao(User user);

    boolean checkLoginAndPassword(User user);

    boolean checkLogin(User user);

}
