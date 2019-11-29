package project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.dao.CheckMethodsDao;
import project.dao.MethodsDao;
import project.entity.User;

import javax.transaction.Transactional;
import java.util.List;


@Service
public class UtilServiceImpl implements UtilService {

    private MethodsDao dao;
    private CheckMethodsDao checkDao;


    @Autowired
    public void setDao(MethodsDao dao) {
        this.dao = dao;
    }

    @Autowired
    public void setCheckDao(CheckMethodsDao checkDao) {
        this.checkDao = checkDao;
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
    public boolean checkLoginAndPassword(User user) {
        return checkDao.checkLoginAndPasswordDao(user);
    }

    @Override
    @Transactional
    public boolean checkLogin (User user) {
        return checkDao.checkLoginDao(user);
    }
}