<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>查看页面</title>
    <link rel="shortcut icon" href="https://i.postimg.cc/28ByBG6h/logo1ico.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/xingkong.css"/>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
        });
        function back() {
            window.location.href = "bbsList";
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-offset-3 col-md-6">
                <h1>
                    <small>查看帖子</small>
                </h1>
            </div>
        </div>

        <form class="col-md-6 col-md-offset-3" method="post">
            <div class="form-group">
                <span>发布区域:</span>
                <input type="text" value="${bbsSorts.name}" class="form-control" readonly/>
                <%--<select name="sortId">
                    <c:forEach var="bbsSort" items="${bbsSorts}">
                        <option value="${bbsSort.id}">${bbsSort.name}</option>
                    </c:forEach>
                </select>--%>
            </div>
            <div class="form-group">
                <span>作者:</span>
                <input type="text" name="author" id="author" value="${bbsDetail.author}" class="form-control" readonly />
            </div>
            <div class="form-group">
                <span>标题:</span>
                <input type="text" name="title" id="title" value="${bbsDetail.title}" class="form-control" readonly/>
            </div>
            <div class="form-group">
                <span>详细内容:</span>
                <textarea name="detail" class="form-control" id="detail" readonly>${bbsDetail.detail}</textarea>
            </div>
            <div class="form-group col-md-2 col-md-offset-1">
                <%--<input type="submit" value="删除" class="form-control btn btn-primary"/>--%>
                <a href="${pageContext.request.contextPath}/delBbs?id=${bbsDetail.id}" class="form-control btn btn-primary">删除</a>
            </div>
            <div class="form-group col-md-2">
                <input type="button" value="返回" class="form-control btn btn-default" onclick="back()"/>
            </div>
        </form>
    </div>
</body>
</html>