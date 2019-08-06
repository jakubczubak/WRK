package pl.coderslab.app.customer;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerReposiotry extends JpaRepository<Customer, Long> {
    Customer findById(String id);
}
