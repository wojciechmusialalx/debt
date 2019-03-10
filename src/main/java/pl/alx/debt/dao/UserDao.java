package pl.alx.debt.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.alx.debt.model.User;

public interface UserDao extends JpaRepository<User, Integer> {
    User findByEmail(String email);
}
