package pl.alx.debt.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.alx.debt.model.Debt;
import pl.alx.debt.model.User;

import java.util.List;

public interface DebtDao extends JpaRepository<Debt, Integer> {
    List<Debt> findByLender(User lender);
}
