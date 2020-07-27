package com.kgc.book.controller;

import com.kgc.book.beans.BookInfo;
import com.kgc.book.beans.BookType;
import com.kgc.book.beans.Users;
import com.kgc.book.service.BookInfoService;
import com.kgc.book.service.BookTypeService;
import com.kgc.book.service.UserService;
import com.kgc.book.utils.PageSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * @author jialin
 */
@Controller
public class BookInfoController {
    @Autowired
    private BookInfoService bookInfoService;
    @Autowired
    private BookTypeService bookTypeService;
    @Autowired
    private UserService userService;

    /**
     * 图书列表
     * @param request
     * @param map
     * @return
     */
    @RequestMapping("/bookList")
    public String bookList(HttpServletRequest request, Map<String,Object> map){
        //图书分类
        List<BookType> bookTypes = bookTypeService.queryAllType();
        map.put("bookTypes",bookTypes);
        String bookType = request.getParameter("bookType") == null ? "0" : request.getParameter("bookType");
        String isBorrow = request.getParameter("isBorrow") == null ? "10" : request.getParameter("isBorrow");
        System.err.println("yeMi isBorrow is : "+request.getParameter("isBorrow"));
        System.err.println("isBorrow is : "+isBorrow);
        String bookName = request.getParameter("bookNames") == "" ? null : request.getParameter("bookNames");
        System.err.println("bookNames is : "+bookName);
        List<BookInfo> bookInfos = bookInfoService.queryBookList(Integer.valueOf(bookType),bookName,Integer.valueOf(isBorrow));
        map.put("bookInfos",bookInfos);
        return "bookList";
    }
    @RequestMapping("/bookListPage")
    public String bookListPage(String pageSizes, String pageNo, String goPageNo,HttpServletRequest request, Map<String,Object> map){
        //获取当前页面的分页数据
        //1.页面容量
        String pageSizeStr = pageSizes;
        //2.当前页码
        String pageNoStr = pageNo;
        //3.跳转页码
        String goPageNoStr= goPageNo;
        //4.默认值处理
        int pageSize = (null==pageSizeStr || pageSizeStr.equals("") ? 6 : Integer.parseInt(pageSizeStr));
        int pageNos = (null==pageNoStr || pageNoStr.equals("") ? 1 : Integer.parseInt(pageNoStr));
        //如果按照页码跳转，pageNo为跳转页码
        if (null != goPageNoStr && goPageNoStr.equals("")) {
            pageNos = Integer.parseInt(goPageNoStr);
        }
        //获取所有的总条数
        int totalCount = bookInfoService.getToalCount();

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

        map.put("page",pageSupport);


        //图书分类
        List<BookType> bookTypes = bookTypeService.queryAllType();
        map.put("bookTypes",bookTypes);
        String bookType = request.getParameter("bookType") == null ? "0" : request.getParameter("bookType");
        String isBorrow = request.getParameter("isBorrow") == null ? "10" : request.getParameter("isBorrow");
        System.err.println("yeMi isBorrow is : "+request.getParameter("isBorrow"));
        System.err.println("isBorrow is : "+isBorrow);
        String bookName = request.getParameter("bookNames") == "" ? null : request.getParameter("bookNames");
        System.err.println("bookNames is : "+bookName);
        List<BookInfo> bookInfos = bookInfoService.queryBookList2(Integer.valueOf(bookType),bookName,Integer.valueOf(isBorrow),(pageNos-1)*pageSize,pageSize);
        map.put("bookInfos",bookInfos);
        return "bookList";
    }

    @RequestMapping("/borrowBook")
    public String borrowBook(HttpServletRequest request){
        String bookId = request.getParameter("bookId");
        bookInfoService.borrowBook(bookId);
        return "login";
    }

    @ResponseBody
    @RequestMapping("/loginUser")
    public boolean loginUser(HttpServletRequest request, Map<String,Object> map, HttpSession session){
        String userName = request.getParameter("userCode");
        String password = request.getParameter("password");
        Users users = new Users();
        users.setUserCode(userName);
        users.setPassword(password);
        map.put("users",users);
        session.setAttribute("userName",userName);
        if (userService.queryUSer(users) > 0){
            return true;
        }
        return false;
    }
    @ResponseBody
    @RequestMapping("/addUser")
    public boolean addUser(HttpServletRequest request,Map<String,Object> map){
        String userName = request.getParameter("userCode");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender") == null ? "男" : ("1".equals(request.getParameter("gender")) ? "男" : "女");
        String email = request.getParameter("email");
        Users users = new Users();
        users.setUserCode(userName);
        users.setPassword(password);
        users.setGender(gender);
        users.setEmail(email);
        if (userService.addUser(users) > 0){
            return true;
        }
        return false;
    }

    @RequestMapping("/loginOut")
    public String loginOut(HttpSession session){
        session.removeAttribute("userName");
        return "login";
    }

    @RequestMapping("/toRegister")
    public String register(){
        return "register";
    }
}
