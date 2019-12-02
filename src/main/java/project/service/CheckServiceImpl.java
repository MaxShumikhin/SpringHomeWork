package project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import project.dao.CheckMethodsDao;
import project.entity.User;

@Service
public class CheckServiceImpl implements CheckService {

    private CheckMethodsDao checkDao;

    @Autowired
    public void setCheckDao(CheckMethodsDao checkDao) {
        this.checkDao = checkDao;
    }

    @Override
    @Transactional
    public boolean checkRoleUserDao(User user) {
        return checkDao.checkRoleUserDao(user);
    }

    @Override
    @Transactional
    public boolean checkLoginAndPassword(User user) {
        return checkDao.checkLoginAndPasswordDao(user);
    }

    @Override
    @Transactional
    public boolean checkLogin(User user) {
        return checkDao.checkLoginDao(user);
    }
}
