package org.nb.service.impl;

import org.apache.ibatis.annotations.Select;
import org.nb.entity.Book;
import org.nb.mapper.BookMapper;
import org.nb.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {
    @Autowired
    private BookMapper bookMapper;
    @Override
    public List<Book> list() {
        return bookMapper.list();
    }
}
