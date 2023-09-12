package org.example.app.reservation;

import org.dom4j.rule.Mode;
import org.example.app.model.Reservation;
import org.example.app.room.RoomDao;
import org.example.app.user.UserDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.persistence.ManyToOne;

@Controller
@RequestMapping("reservations")
public class ReservationController {

    private final ReservationDao reservationDao;
    private final RoomDao roomDao;
    private final UserDao userDao;

    public ReservationController(ReservationDao reservationDao, RoomDao roomDao, UserDao userDao) {
        this.reservationDao = reservationDao;
        this.roomDao = roomDao;
        this.userDao = userDao;
    }

    @GetMapping("list")
    public String getReservationsList(Model model) {
        model.addAttribute("reservations", reservationDao.findAll());
        return "reservations/reservations-list";
    }

    @GetMapping("add")
    public String GetAddReservationView(Model model) {
        model.addAttribute("reservation", new Reservation());
        model.addAttribute("roomList", roomDao.findAll());
        return "reservations/add-view";
        }
    @PostMapping("add")
    public String addReservation (Reservation reservation) {
        reservationDao.save(reservation);
        return "redirect:/reservations/list";

    }
}
