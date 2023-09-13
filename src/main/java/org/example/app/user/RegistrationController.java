package org.example.app.user;

import org.example.app.model.User;
import org.example.app.reservation.ReservationDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("login")
public class RegistrationController {

    private final UserDao userDao;
    private final ReservationDao reservationDao;

    public RegistrationController(UserDao userDao, ReservationDao reservationDao) {
        this.userDao = userDao;
        this.reservationDao = reservationDao;
    }

    @GetMapping
    public String loginView() {
        return "login/login";

    }

    @PostMapping
    public String getLogin(@RequestParam String email, @RequestParam String password, Model model) {

        List<User> users = userDao.findAll();
        Optional<User> matchingUser = users.stream()
                .filter(user -> user.getEmail().equals(email) && user.getPassword().equals(password))
                .findFirst();
        User user = userDao.findById(matchingUser.get().getId());

        if (matchingUser.isPresent()) {
            user.setEnable(true);
            userDao.update(user);

            if (matchingUser.get().getId() == 1L) {
                return "/login/admin-view";
            } else {
                return "/login/user-view";
            }

        } else {
            model.addAttribute("loginError", "Nieprawidłowy emial lub hasło.");
            return "/login/index";
        }
    }


    }


