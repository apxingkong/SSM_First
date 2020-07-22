package com.xing.controller;

import com.alibaba.fastjson.JSON;
import com.sun.org.apache.xpath.internal.operations.Mod;
import com.xing.pojo.Books;
import com.xing.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.awt.print.Book;
import java.util.ArrayList;
import java.util.List;

/**
 * @author jialin
 */
@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    //查询所有书籍
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> books = bookService.queryAllBook();
        model.addAttribute("list",books);
        return "allBook";
    }
    //跳转到添加书籍界面
    @RequestMapping("/toAddBook")
    public String toAddBook(){
        return "addBook";
    }
    //书籍添加
    @RequestMapping("/addBook")
    public String addBook(Books books){
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }
    //跳转到修改书籍界面
    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(int id, Model model){
        Books books = bookService.queryBookById(id);
        model.addAttribute("QBook",books);
        return "updateBook";
    }
    //书籍修改
    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }
    //书籍删除
    @RequestMapping("/deleteBook")
    public String deleteBook(int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }
    //书籍查询
    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model){
        Books books = bookService.queryBookByName(queryBookName);
        List<Books> list = new ArrayList<Books>();
        list.add(books);
        if (books == null){
            list = bookService.queryAllBook();
            model.addAttribute("error","未查到");
        }
        model.addAttribute("list",list);
        return "allBook";
    }
}
