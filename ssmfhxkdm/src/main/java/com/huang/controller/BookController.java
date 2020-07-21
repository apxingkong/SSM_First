package com.huang.controller;

import com.huang.pojo.Books;
import com.huang.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author jialin
 */
@Controller
@RequestMapping("/Video")
public class BookController {
    //controller层调service层
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    //查询全部的书籍，并且返回到书籍返回界面
    @RequestMapping("/allVideo")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allVideo";
    }

    //跳转到添加书籍界面
    @RequestMapping("/toAddVideo")
    public String addBook(){
        return "addVideo";
    }

    //添加书籍的请求
    @RequestMapping("/addVideo")
    public String addBook(Books books){
        System.out.println("addBook=>"+books);
        bookService.addBook(books);
        return "redirect:/Video/allVideo";
    }

    //修改书籍界面
    @RequestMapping("/toUpdateVideo")
    public String toUpdateBook(int id,Model model){
        Books books = bookService.queryBookById(id);
        model.addAttribute("QBook",books);
        return "updateVideo";
    }

    //修改书籍
    @RequestMapping("/updateVideo")
    public String updateBook(Books books){
        System.out.println("updatebooks==>"+books);
        bookService.updateBook(books);
        return "redirect:/Video/allVideo";
    }

    //删除书籍
    @RequestMapping("/deleteVideo")
    public String deleteBook(int id){
        bookService.deleteBookById(id);
        return "redirect:/Video/allVideo";
    }

}
