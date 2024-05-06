package org.nb.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.nb.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class UserMapperTest {
    @Autowired
    private UserMapper userMapper;

    @Test
    public void list(){
        List<User> list=userMapper.list();
        System.out.println(list);
    }

    @Test
    public void login(){
        User user=new User();
        user.setName("bb");
        user.setPassword("123456");
        User u= userMapper.login(user);
        System.out.println(u);
    }
}
