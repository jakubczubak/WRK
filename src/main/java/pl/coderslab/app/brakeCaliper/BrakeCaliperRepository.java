package pl.coderslab.app.brakeCaliper;

import org.hibernate.annotations.FetchProfile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.cdi.Eager;
import org.springframework.transaction.annotation.Transactional;


public interface BrakeCaliperRepository extends JpaRepository<BrakeCaliper, Long> {


}
