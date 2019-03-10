package pl.alx.debt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.alx.debt.dao.UserDao;
import pl.alx.debt.model.User;

@Controller
public class RegisterController {

    @Autowired
    private UserDao userDao;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @GetMapping("/register")
    public String registerPage() {
        return "register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute UserForm userForm) {

        // stworzyc obiekt user
        User user = new User(
                userForm.getEmail(),
                passwordEncoder.encode(userForm.getPassword()),
                userForm.getFirstName(),
                userForm.getLastName()
        );

        // zapisac do bazy
        userDao.save(user);

        return "redirect:/login";
    }
}
