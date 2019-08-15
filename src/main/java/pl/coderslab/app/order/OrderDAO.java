package pl.coderslab.app.order;


import org.hibernate.Hibernate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

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

    public List<Order> findAll() {
        Query query = entityManager.createQuery("Select o from Order o");
        List<Order> orderList = query.getResultList();
        for (int i = 0; i < orderList.size(); i++) {
            Hibernate.initialize(orderList.get(i).getBrakeCaliper().getPartName());
        }
        return orderList;
    }
}

