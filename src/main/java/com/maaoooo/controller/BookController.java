package com.maaoooo.controller;

import com.maaoooo.pojo.Books;
import com.maaoooo.service.BookService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String list(Model model){
        List<Books> allBooks=bookService.queryAllBook();
        model.addAttribute("allBooks",allBooks);
        return "allbook";
    }
    //跳转到增加书籍页面
    @RequestMapping("/goAddPaper")
    public String goAddPaper(){
        return "addbook";
    }
}
