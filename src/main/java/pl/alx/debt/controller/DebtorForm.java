package pl.alx.debt.controller;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
public class DebtorForm {
    private String firstName;
    private String lastName;
    private String email;
}
