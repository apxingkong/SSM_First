<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>BBS论坛</title>
    <link rel="shortcut icon" href="https://i.postimg.cc/28ByBG6h/logo1ico.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/xingkong.css"/>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#gos").click(function () {
                let pNo = $("#goPage").val();
                let pSize = $("#pageSizes").val();
                window.location.href = "${pageContext.request.contextPath}/bbsListPage?pageNo="+pNo+"&pageSizes="+pSize;
            });
            $("#oks").click(function () {
                let pages = $("#pageSizes").val();
                window.location.href = "${pageContext.request.contextPath}/bbsListPage?pageNo=1&pageSizes="+pages;
            });
        })
    </script>
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>海角论坛首页</small>
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <form class="input-group" action="${pageContext.request.contextPath}/bbsList" method="post">
                        <span>讨论版区：</span>
                        <select name="sortId" style="margin: 0 50px">
                            <option value="0">全部</option>
                            <c:forEach items="${bbsSorts}" var="bbss">
                                <option value="${bbss.id}">${bbss.name}</option>
                            </c:forEach>
                        </select>
                        <input type="submit" value="搜索" class="btn btn-primary"/>
                    </form>
                </div>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-2">
                <a href="${pageContext.request.contextPath}/toAddDetail" class="btn btn-primary">发帖</a>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                        <tr>
                            <th style="text-align: center">帖子ID</th>
                            <th style="text-align: center">标题</th>
                            <th style="text-align: center">作者</th>
                            <th style="text-align: center">发布时间</th>
                            <th style="text-align: center">回复次数</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:if test="${bbsDetails.size() == 0}" var="flag">
                            <tr>
                                <td colspan="5" align="center">抱歉，暂无数据！！！</td>
                            </tr>
                        </c:if>
                        <c:if test="${!flag}">
                            <c:forEach var="bbs" items="${bbsDetails}">
                                <tr style="text-align: center">
                                    <td>${bbs.id}</td>
                                    <td><a href="${pageContext.request.contextPath}/toShowBbs?id=${bbs.id}">${bbs.title}</a></td>
                                    <td>${bbs.author}</td>
                                    <td>${bbs.bbsDate}</td>
                                    <td>${bbs.replyCount}</td>
                                </tr>
                            </c:forEach>
                        </c:if>
                    </tbody>
                    <%--<tfoot>
                        <c:if test="" var="flag">
                            <td colspan="5" height="35px" align="center">
                                共${page.totalCount}条记录&nbsp;&nbsp;&nbsp;&nbsp;每页&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="text" value="${page.pageSize}" style="width: 90px" id="pageSizes" name="pageSizes"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;条&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="button" value="OK" id="oks"/>&nbsp;&nbsp;&nbsp;&nbsp;
                                第${page.currentPageNo} 页&nbsp;&nbsp;/&nbsp;&nbsp;共${page.totalPage}页&nbsp;&nbsp;
                                &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/bbsListPage?pageNo=1&pageSizes=${param.pageSizes}" style="color: blue">第一页</a>
                                &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/bbsListPage?pageNo=${page.currentPageNo-1}&pageSizes=${param.pageSizes}" style="color: blue">上一页</a>
                                &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/bbsListPage?pageNo=${page.currentPageNo+1}&pageSizes=${param.pageSizes}" style="color: blue">下一页</a>
                                &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/bbsListPage?pageNo=${page.totalPage}&pageSizes=${param.pageSizes}" style="color: blue">最后一页</a>
                                &nbsp;&nbsp;转到第&nbsp;&nbsp;
                                <input type="text" style="width: 90px;" id="goPage" name="goPage"/>
                                页&nbsp;&nbsp;
                                <input type="button" value="go" id="gos"/>
                            </td>
                        </c:if>
                    </tfoot>--%>
                </table>
            </div>
        </div>
    </div>
</body>
</html>