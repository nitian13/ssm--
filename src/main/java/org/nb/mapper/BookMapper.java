package org.nb.mapper;

import org.apache.ibatis.annotations.Select;
import org.nb.entity.Book;

import java.util.List;

public interface BookMapper {

    @Select("select * from book")
    List<Book> list();
}
