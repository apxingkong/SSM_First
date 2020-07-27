<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/27
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书列表页</title>
    <link rel="shortcut icon" href="https://i.postimg.cc/28ByBG6h/logo1ico.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $("#loginOut").click(function () {
                if (confirm("确认删除吗")){
                    window.location.href="${pageContext.request.contextPath}/loginOut";
                }
            });
            $("#gos").click(function(){
                var no = $("#goPage").val();
                var pages = $("#pageSizes").val();
                window.location.href="${pageContext.request.contextPath}/bookListPage?pageNo="+no+"&pageSizes="+pages;
            });
            $("#oks").click(function(){
                var pages = $("#pageSizes").val();
                window.location.href="${pageContext.request.contextPath}/bookListPage?pageNo=1&pageSizes="+pages;
            });
        });
    </script>
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="container">
        </div>
        <div class="col-md-12 column">
            <div class="page-header" style="text-align: center">
                <h1>
                    <small>图书借阅系统</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8 column col-md-offset-2">
                <form class="input-group" action="${pageContext.request.contextPath}/bookListPage" method="post" style="float: right">
                    <div class="form-group">
                        <span>图书分类：</span>
                        <select name="bookType" style="margin: 0 20px">
                            <option value="0">--请选择--</option>
                            <c:forEach items="${bookTypes}" var="bookType">
                                <option value="${bookType.id}">${bookType.typeName}</option>
                            </c:forEach>
                        </select>
                        <span>图书名称：</span>
                        <input type="text" name="bookNames" id="bookNames" width="300px"/>
                        <span>是否借阅：</span>
                        <select name="isBorrow" style="margin: 0 20px">
                            <option value="10">--请选择--</option>
                            <option value="0">未借阅</option>
                            <option value="1">已借阅</option>
                        </select>
                        <input type="submit" value="查询" class="btn btn-primary" style="margin: 0 20px">
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-4 col-md-offset-4">
            <span>当前用户：</span>
            <span id="currentUser" style="margin: 0 30px">${userName}</span>
            <%--<a id="loginOut" href="${pageContext.request.contextPath}/loginOut">退出</a>--%>
            <button id="loginOut" class="btn btn-primary">退出</button>
        </div>
    </div>

    <div class="row clearfix" style="margin-top: 30px">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th style="text-align: center">图书编号</th>
                    <th style="text-align: center">图书分类</th>
                    <th style="text-align: center">图书名称</th>
                    <th style="text-align: center">作者</th>
                    <th style="text-align: center">出版社</th>
                    <th style="text-align: center">操作</th>
                </tr>
                </thead>
                <%--从数据库查询出来--%>
                <tbody>
                <c:if test="${bookInfos.size() == 0}" var="flag">
                    <tr>
                        <td colspan="6" align="center">抱歉，暂无数据！！！</td>
                    </tr>
                </c:if>
                <c:if test="${!flag}">
                    <c:forEach var="book" items="${bookInfos}">
                        <tr style="text-align: center">
                            <td>${book.bookCode}</td>
                            <td>${book.bookTypename}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookAuthor}</td>
                            <td>${book.publishPress}</td>
                            <td>
                                <c:if test="${book.isBorrow == 1}">
                                    <span style="color: red">已借阅</span>
                                </c:if>
                                <c:if test="${book.isBorrow == 0}">
                                    <a href="${pageContext.request.contextPath}/borrowBook?bookId=${book.bookId}" style="color: blue">申请借阅</a>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>
                </tbody>

                <tfoot>
                <tr>
                    <c:if test="${airQualities.size() != 0}" var="flag">
                        <td colspan="7" height="35px" align="center">
                            <a class="btn btn-primary navbar-btn" href="${pageContext.request.contextPath}/toAddBooks">新增信息</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;共${page.totalCount}条记录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;每页
                            <input type="text" value="${page.pageSize }" style="width: 90px;" id="pageSizes" name="pageSizes"/>
                            条&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="button" value="ok" id="oks"/>&nbsp;&nbsp;
                            &nbsp;&nbsp;第${page.currentPageNo }页/共${page.totalPage }页&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/bookListPage?pageNo=1&pageSizes=${param.pageSizes}" style="color:blue">第一页</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/bookListPage?pageNo=${page.currentPageNo-1}&pageSizes=${param.pageSizes}" style="color:blue">上一页</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/bookListPage?pageNo=${page.currentPageNo+1}&pageSizes=${param.pageSizes}" style="color:blue">下一页</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/bookListPage?pageNo=${page.totalPage}&pageSizes=${param.pageSizes}" style="color:blue">最后一页</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;转到第
                            <input type="text" style="width: 90px;" id="goPage" name="goPage"/>
                            页&nbsp;&nbsp;
                            &nbsp;<input type="button" value="go" id="gos"/>
                        </td>
                    </c:if>
                </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>
</body>
</html>
