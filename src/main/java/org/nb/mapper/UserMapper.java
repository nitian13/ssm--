package org.nb.mapper;

import org.apache.ibatis.annotations.Select;
import org.nb.entity.User;

import java.util.List;

public interface UserMapper {

    @Select("select * from user;")
    List<User> list();

    @Select("select * from user where name=#{name} and password=#{password}")
    User login(User user);
}
