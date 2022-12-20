package app.prog3td2.repository;

import app.prog3td2.model.SponsorEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SponsorRepository extends JpaRepository<SponsorEntity, Integer> {
    List<SponsorEntity> findByName(String name);

}
