package com.maaoooo.service;

import com.maaoooo.dao.BookMapper;
import com.maaoooo.pojo.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lzr
 * @date 2020/6/10 14:16:13
 * @description
 */

public class BookServiceImpl implements BookService {
    @Autowired
    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    //service调用dao
    private BookMapper bookMapper;

    public int addBook(Books books) {

        return bookMapper.addBook(books);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    public Books queryBookById(int id) {
        return queryBookById(id);
    }

    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }
}
