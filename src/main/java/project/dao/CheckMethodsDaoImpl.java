package project.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import project.entity.User;


@Repository
public class CheckMethodsDaoImpl implements CheckMethodsDao {

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public boolean checkLoginAndPasswordDao(User user) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User where login = :login and password = :password");
        query.setParameter("login", user.getLogin());
        query.setParameter("password", user.getPassword());
        return !query.list().isEmpty();
    }

    @Override
    public boolean checkLoginDao(User user) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("select login from User where login = :login");
        query.setParameter("login", user.getLogin());
        return query.list().isEmpty();
    }
}
