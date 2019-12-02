package project.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
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
        session.merge(user);
    }

    @Override
    public User findUserByIdDao(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(User.class, id);
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<User> allUsersDao() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from User", User.class).list();
    }
    @Override
    public List<User> oneUserDao(User user) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User where login = :login and password = :password");
        query.setParameter("login", user.getLogin());
        query.setParameter("password", user.getPassword());
        return query.list();
    }
}
