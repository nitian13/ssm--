package org.nb.service;

import org.nb.entity.User;

import java.util.List;

public interface UserService {

    List<User> list();

    User login(User user);
}
