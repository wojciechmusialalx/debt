package pl.alx.debt.controller;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class UserForm {
    private String firstName;
    private String lastName;
    private String email;
    private String password;
}
