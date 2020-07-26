<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/21
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link rel="shortcut icon" href="https://pics.images.ac.cn/image/5f1008907e854.html" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>修改书籍</small>
                    </h1>
                </div>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
            <input type="hidden" name="bookID" value="${QBook.bookID}">
            <div class="form-group">
                <label for="bkname">书籍名称：</label>
                <input type="text" class="form-control" name="bookName" id="bkname" value="${QBook.bookName}" placeholder="请输入书籍名称" required/>
            </div>
            <div class="form-group">
                <label for="bkcout">书籍数量：</label>
                <input type="text" class="form-control" name="bookCounts" id="bkcout" value="${QBook.bookCounts}" placeholder="请输入书籍数量" required/>
            </div>
            <div class="form-group">
                <label for="bkdetail">书籍描述：</label>
                <input type="text" class="form-control" name="detail" id="bkdetail" value="${QBook.detail}" placeholder="请输入书籍描述" required/>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="修改"/>
            </div>
        </form>

    </div>
</body>
</html>
