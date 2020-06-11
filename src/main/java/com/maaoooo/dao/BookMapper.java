package com.maaoooo.dao;

import com.maaoooo.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author lzr
 * @date 2020/6/10 10:56:58
 * @description
 */
public interface BookMapper {
    //增加一本书
    int addBook(Books books);
    //删除一本书
    int deleteBookById(@Param("bookID") int id);
    //更新一本书
    int updateBook(Books books);
    //查询一本书
    Books queryBookById(@Param("bookID") int id);
    //查询全部的书
    List<Books> queryAllBook();
}
