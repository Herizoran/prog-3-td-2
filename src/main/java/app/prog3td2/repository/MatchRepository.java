package app.prog3td2.repository;

import app.prog3td2.model.MatchEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MatchRepository extends JpaRepository<MatchEntity, Integer> {
    List<MatchEntity> findByName(String name);

}
