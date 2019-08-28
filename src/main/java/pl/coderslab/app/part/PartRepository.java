package pl.coderslab.app.part;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PartRepository extends JpaRepository<Part, Long> {
    Part findById(String id);
    List<Part> findAllByOrderByName();
}