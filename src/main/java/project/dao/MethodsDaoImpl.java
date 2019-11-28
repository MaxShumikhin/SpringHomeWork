package project.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import project.entity.User;
import project.service.HibernateUtil;


import java.util.List;

@Repository
public class MethodsDaoImpl implements MethodsDao {

    private Transaction transaction;

    @Override
    public boolean saveUserDao(User user) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(user);
            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } return false;
    }

    @Override
    public void deleteUserDao(User user) {

    }

    @Override
    public void updateUserDao(User user) {

    }

    @Override
    public User findUserByIdDao(int id) {
        return null;
    }

    @Override
    public List<User> allUsersDao() {
        return null;
    }
}
