package app.prog3td2.repository;

import app.prog3td2.model.TeamEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TeamRepository extends JpaRepository<TeamEntity, Integer> {
    List<TeamEntity> findByName(String name);

}
