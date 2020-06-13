package com.maaoooo.service;

import com.maaoooo.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author lzr
 * @date 2020/6/10 14:15:07
 * @description
 */
public interface BookService {
    //增加一本书
    int addBook(Books books);

    //删除一本书
    int deleteBookById(int id);

    //更新一本书
    int updateBook(Books books);

    //查询一本书
    Books queryBookById(int id);

    //查询全部的书
    List<Books> queryAllBook();

    //根据名字查询书籍
    Books queryBookByName(String name);
}
