package pl.coderslab.app.order;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Long> {
    List<Order> findAllByIsFinish(boolean trueOrFalse);

    Order findFirstByIsFinishOrderByCreatedOnDesc(boolean trueOrFalse);

    long countByBrakeCaliperName(String BrakeCaliperName);
}
