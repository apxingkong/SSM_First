package com.xing.controller;

import com.xing.pojo.Books;
import com.xing.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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

    //分页查询书籍
    /*@RequestMapping("/booksPage")
    public String booksPage(String pageSizes,String pageNo,String goPageNo,Model model){

        //获取当前页面的分页数据
        //1.页面额ong量
        String pageSizeStr = pageSizes;
        //2.当前页码
        String pageNoStr = pageNo;
        //3.跳转页码
        String goPageNoStr= goPageNo;
        //4.默认值处理
        int pageSize = (null==pageSizeStr || pageSizeStr.equals("") ? 3 : Integer.parseInt(pageSizeStr));
        int pageNos = (null==pageNoStr || pageNoStr.equals("") ? 1 : Integer.parseInt(pageNoStr));
        //如果按照页码跳转，pageNo为跳转页码
        if (null != goPageNoStr && goPageNoStr.equals("")) {
            pageNos = Integer.parseInt(goPageNoStr);
        }
        //获取所有的总条数
        int totalCount = bookService.getToalCount();

        //
        PageSupport pageSupport = new PageSupport();
        pageSupport.setPageSize(pageSize);
        pageSupport.setTotalCount(totalCount);

        //页码处理
        int totalPage = pageSupport.getTotalPage();
        if (pageNos<1) {
            pageNos=1;
        }else if (pageNos > totalPage) {
            pageNos = totalPage;
        }
        System.out.println("分几页："+totalPage);
        System.out.println("每页几个："+pageSize);
        pageSupport.setCurrentPageNo(pageNos);

        //根据分页数据获取对应图书列表
        List<Books> books = bookService.getBookListPage((pageNos-1)*pageSize+1,pageSize);

        //返回页面显示
        model.addAttribute("list", books);
        model.addAttribute("page", pageSupport);
        return "allBook";
    }*/
}
