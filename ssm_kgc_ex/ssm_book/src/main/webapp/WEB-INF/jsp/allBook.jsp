<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/21
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示界面</title>
    <link rel="shortcut icon" href="https://pics.images.ac.cn/image/5f1008907e854.html" type="image/x-icon"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
<script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $("#gos").click(function(){
                var no = $("#goPage").val();
                var pages = $("#pageSizes").val();
                window.location.href="${pageContext.request.contextPath}/book/booksPage?pageNo="+no+"&pageSizes="+pages;
            });
            $("#oks").click(function(){
                var pages = $("#pageSizes").val();
                window.location.href="${pageContext.request.contextPath}/book/booksPage?pageNo=1&pageSizes="+pages;
            });
        });
    </script>
</head>
<body>
    <div class="container">

        <div class="row clearfix">
            <div class="container">
                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <a href="#" class="navbar-brand">LOGO</a>
                    </div>
                    <a class="btn btn-primary navbar-btn" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
                    <a class="btn btn-primary navbar-btn" href="${pageContext.request.contextPath}/book/allBook">全部书籍</a>
                    <span style="color: red;font-weight: bold">${error}</span>
                    <form class="nav navbar-form navbar-right" action="${pageContext.request.contextPath}/book/queryBook" method="post">
                        <div class="form-group">
                            <input type="text" name="queryBookName" class="form-control" placeholder="请输入书籍名称">
                            <input type="submit" value="查询" class="btn btn-primary">
                        </div>
                    </form>
                </nav>
            </div>
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>书籍列表 ---- 显示所有书籍</small>
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 column">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
                </div>
                <div class="col-md-4 column">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">全部书籍</a>
                    <span style="color: red;font-weight: bold">${error}</span>
                </div>
                <div class="col-md-4 column">
                    <form class="input-group" action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right">
                            <input type="text" name="queryBookName" class="form-control" placeholder="请输入书籍名称">
                            <span class="input-group-btn">
                                <input type="submit" value="查询" class="btn btn-primary">
                            </span>
                    </form>
                </div>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                        <tr>
                            <th style="text-align: center">书籍编号</th>
                            <th style="text-align: center">书籍名称</th>
                            <th style="text-align: center">书籍数量</th>
                            <th style="text-align: center">书籍详情</th>
                            <th style="text-align: center">书籍操作</th>
                        </tr>
                    </thead>
                    <%--书籍从数据库查询出来--%>
                    <tbody>
                        <c:forEach var="book" items="${list}">
                            <tr style="text-align: center">
                                <td>${book.bookID}</td>
                                <td>${book.bookName}</td>
                                <td>${book.bookCounts}</td>
                                <td>${book.detail}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookID}">修改</a>
                                    &nbsp; | &nbsp;
                                    <a href="${pageContext.request.contextPath}/book/deleteBook?id=${book.bookID}">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>

                    <tfoot>
                    <tr>
                        <td colspan="5" height="35px">
                            <a class="btn btn-primary navbar-btn" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;共${page.totalCount}条记录&nbsp;&nbsp;&nbsp;&nbsp;每页
                            <input type="text" value="${page.pageSize }" style="width: 90px;" id="pageSizes" name="pageSizes"/>
                            条&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="button" value="ok" id="oks"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;第${page.currentPageNo }页/共${page.totalPage }页&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/book/booksPage?pageNo=1&pageSizes=${param.pageSizes}" style="color:blue">第一页</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/book/booksPage?pageNo=${page.currentPageNo-1}&pageSizes=${param.pageSizes}" style="color:blue">上一页</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/book/booksPage?pageNo=${page.currentPageNo+1}&pageSizes=${param.pageSizes}" style="color:blue">下一页</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/book/booksPage?pageNo=${page.totalPage}&pageSizes=${param.pageSizes}" style="color:blue">最后一页</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;转到第
                            <input type="text" style="width: 90px;" id="goPage" name="goPage"/>
                            页&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<input type="button" value="go" id="gos"/>
                        </td>
                    </tr>
                    <%--<tr>
                        <td colspan="5" height="35px">
                            <input type="button" value="新增图书" id="add"/>
                            &nbsp;共${page.totalCount}条记录&nbsp;每页
                            <input type="text" value="${page.pageSize }" style="width: 90px;" id="pageSizes" name="pageSizes"/>
                            条&nbsp;
                            <input type="button" value="ok" id="oks"/>
                            &nbsp;第${page.currentPageNo }页/共${page.totalPage }页&nbsp;
                            &nbsp;<a href="${pageContext.request.contextPath}/book/booksPage?pageNo=1&pageSizes=${param.pageSizes}" style="color:blue">第一页</a>
                            &nbsp;<a href="${pageContext.request.contextPath}/book/booksPage?pageNo=${page.currentPageNo-1}&pageSizes=${param.pageSizes}" style="color:blue">上一页</a>
                            &nbsp;<a href="${pageContext.request.contextPath}/book/booksPage?pageNo=${page.currentPageNo+1}&pageSizes=${param.pageSizes}" style="color:blue">下一页</a>
                            &nbsp;<a href="${pageContext.request.contextPath}/book/booksPage?pageNo=${page.totalPage}&pageSizes=${param.pageSizes}" style="color:blue">最后一页</a>
                            &nbsp;转到第
                            <input type="text" style="width: 90px;" id="goPage" name="goPage"/>
                            页&nbsp;
                            &nbsp;<input type="button" value="go" id="gos"/>
                        </td>
                    </tr>--%>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>

</body>
</html>
