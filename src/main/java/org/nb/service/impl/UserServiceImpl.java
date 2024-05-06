package org.nb.service.impl;

import org.nb.entity.User;
import org.nb.mapper.UserMapper;
import org.nb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public List<User> list() {
        return userMapper.list();
    }

    @Override
    public User login(User user) {
        return userMapper.login(user);
    }
}
