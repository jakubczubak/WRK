package pl.coderslab.app.part;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PartRepository extends JpaRepository<Part,Long> {
    Part findById(String id);
}