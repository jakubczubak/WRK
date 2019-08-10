package pl.coderslab.app.brakeCaliper;

import org.hibernate.Hibernate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
@Transactional

public class BrakeCaliperDAO {
    @PersistenceContext
    EntityManager entityManager;

    public BrakeCaliper findById(Long id){
       BrakeCaliper brakeCaliper =entityManager.find(BrakeCaliper.class,id);
        Hibernate.initialize(brakeCaliper.getPartName());
        return brakeCaliper;
    }
}
