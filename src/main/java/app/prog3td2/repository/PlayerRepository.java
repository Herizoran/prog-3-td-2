package app.prog3td2.repository;

import app.prog3td2.model.PlayerEntity;
import org.springframework.data.jpa.repository.JpaRepository;


public interface PlayerRepository extends JpaRepository<PlayerEntity, Integer> {
}
