package pl.alx.debt.model;

import lombok.*;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Getter
@NoArgsConstructor
public class Debt {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private LocalDateTime createdAt;

    private BigDecimal amount;

    private boolean paidOff;

    @ManyToOne
    @JoinColumn(name = "lender_id")
    private User lender;

    @ManyToOne
    @JoinColumn(name = "debtor_id")
    private Debtor debtor;

    public Debt(User lender, Debtor debtor, BigDecimal amount) {
        this.lender = lender;
        this.debtor = debtor;
        this.amount = amount;
        this.createdAt = LocalDateTime.now();
        this.paidOff = false;
    }

    public String getLenderName() {
        return lender.getFirstName() + " " + lender.getLastName();
    }

    public String getDebtorName() {
        return debtor.getFirstName() + " " + debtor.getLastName();
    }
}
