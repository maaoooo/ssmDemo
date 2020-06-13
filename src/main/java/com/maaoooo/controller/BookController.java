package com.maaoooo.controller;

import com.maaoooo.pojo.Books;
import com.maaoooo.service.BookService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.awt.print.Book;
import java.util.ArrayList;
import java.util.List;

/**
 * @author lzr
 * @date 2020/6/11 09:15:50
 * @description
 */
@Controller
@RequestMapping("/book")
public class BookController {
    //controller调用service
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    //查询全部书籍，返回到一个书籍展示页面
    @RequestMapping("/allbook")
    public String list(Model model) {
        List<Books> allBooks = bookService.queryAllBook();
        model.addAttribute("allBooks", allBooks);
        return "allbook";
    }

    //跳转到增加书籍页面
    @RequestMapping("/goAddPaper")
    public String goAddPaper() {
        return "addbook";
    }

    //添加书籍
    @RequestMapping("/addBook")
    public String addBook(Books books) {
//        System.out.println("addBooks=>"+books);
        int i = bookService.addBook(books);
        System.out.println("对‘" + i + "’条数据进行了影响.");
        return "redirect:/book/allbook";
    }

    //跳转到修改页面
    @RequestMapping("/toUpdatePager")
    public String toUpdatePager(int id, Model model) {
        Books queryBookById = bookService.queryBookById(id);
        model.addAttribute("book", queryBookById);
        return "updatebook";
    }

    //修改书籍
    @RequestMapping("/updatebook")
    public String updatebook(Books books) {
        System.out.println(books);
        int i = bookService.updateBook(books);
        System.out.println("对‘" + i + "’条数据进行了影响.");
        return "redirect:/book/allbook";
    }

    //跳转到删除页面
    @RequestMapping("/todeletePage")
    public String todeletePage(int id, Model model) {
        model.addAttribute("id", id);
        return "delete";
    }

    //删除书籍
    @RequestMapping("/doDelete/{bookID}")
    public String doDelete(@PathVariable("bookID") int id) {
        bookService.deleteBookById(id);
        return "redirect:/book/allbook";
    }

    //根据书名查询
    @RequestMapping("/queryByName")
    public String queryByName(String queryBookName, Model model) {
        //如果查询的名字为空
        if (queryBookName.equals("")) {
            model.addAttribute("bookNotFound",queryBookName);
            return "bookNotFound";
        }

        List<Books> booksList = new ArrayList<Books>();
        Books queryBookByName = bookService.queryBookByName(queryBookName);

        //如果没找到
        if (queryBookByName == null) {
            model.addAttribute("bookNotFound",queryBookName);
            return "bookNotFound";
        }
        //查询到了
        booksList.add(queryBookByName);
        model.addAttribute("allBooks", booksList);
        return "allbook";
    }
}
