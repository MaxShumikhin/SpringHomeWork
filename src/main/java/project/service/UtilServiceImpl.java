package project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import project.dao.MethodsDao;
import project.entity.User;


import java.util.List;


@Service
public class UtilServiceImpl implements UtilService {

    private MethodsDao dao;

    @Autowired
    public void setDao(MethodsDao dao) {
        this.dao = dao;
    }

    @Override
    @Transactional
    public boolean saveUser(User user) {
        return dao.saveUserDao(user);
    }

    @Override
    @Transactional
    public void deleteUser(User user) {
        dao.deleteUserDao(user);
    }

    @Override
    @Transactional
    public void updateUser(User user) {
        dao.updateUserDao(user);
    }

    @Override
    @Transactional
    public User findUserById(int id) {
        return dao.findUserByIdDao(id);
    }

    @Override
    @Transactional
    public List<User> allUsers() {
        return dao.allUsersDao();
    }

    @Override
    @Transactional
    public List<User> oneUser(User user){return dao.oneUserDao(user);}

}
