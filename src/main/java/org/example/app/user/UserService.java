package org.example.app.user;

import lombok.AllArgsConstructor;
import org.example.app.model.User;

@AllArgsConstructor
public class UserService {

    private UserDao userDao;

    public void createUser(User user) {

    }
}
