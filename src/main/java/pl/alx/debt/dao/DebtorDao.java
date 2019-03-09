package pl.alx.debt.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.alx.debt.model.Debtor;

public interface DebtorDao extends JpaRepository<Debtor, Integer> {
}
