package project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.dao.MethodsDao;
import project.entity.User;

import javax.transaction.Transactional;
import java.util.List;


@Service
public class UtilServiceImpl implements UtilService {

    @Autowired
    private MethodsDao dao;

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
    public List<User> allUsers() {
        return dao.allUsersDao();
    }
}
