package org.example.app.user;

import org.example.app.model.User;
import org.example.app.reservation.ReservationDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("users")
public class UserController {

    private final UserDao userDao;
    private final ReservationDao reservationDao;

    public UserController(UserDao userDao, ReservationDao reservationDao) {
        this.userDao = userDao;
        this.reservationDao = reservationDao;
    }


    @GetMapping("list")
    public String getListView(Model model) {
        model.addAttribute("users",userDao.findAll());

        return "users/user-list";
    }

    @GetMapping("add")
    public String getAddView(Model model) {
        model.addAttribute("user",new User());
                return "users/add-view";
    }
    @PostMapping("add")
    public String addBook(User user) {
        userDao.save(user);
        return "redirect:/users/list";
    }
}
