package pl.coderslab.app.order;


import org.hibernate.Hibernate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
@Transactional
public class OrderDAO {
    @PersistenceContext
    EntityManager entityManager;


    public Order findById(Long id) {
        Order order = entityManager.find(Order.class, id);
        Hibernate.initialize(order.getCustomer());
        Hibernate.initialize(order.getGalvanicCoating());
        return order;
    }
}
