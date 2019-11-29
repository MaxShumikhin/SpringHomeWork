package project.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import project.entity.User;

import java.util.List;


@Repository
public class MethodsDaoImpl implements MethodsDao {

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public boolean saveUserDao(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(user);
        return true;
    }

    @Override
    public void deleteUserDao(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(user);
    }

    @Override
    public void updateUserDao(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.update(user);
    }

    @Override
    public User findUserByIdDao(int id) {
        return null;
    }

    @Override
    public List<User> allUsersDao() {
       Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from project.entity.User").list();
    }
}