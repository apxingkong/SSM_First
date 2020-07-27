<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>添加页面</title>
    <link rel="shortcut icon" href="https://i.postimg.cc/28ByBG6h/logo1ico.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/xingkong.css"/>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#title").blur(function () {
                var title = $("#title").val();
                $.ajax({
                   url: "addTitle" ,
                    type: "post",
                    data: $("form").serialize(),
                    datatype: "json",
                    success: function (data) {
                        if (data){
                            console.log('标题可以添加');
                        }else {
                            alert("标题已存在！");
                            $("#title").val("");
                        }
                    }
                });
            });
            $("form").submit(function () {
                $.ajax({
                    url:"addBbsDetail",
                    type:"post",
                    data:$("form").serialize(),
                    datatype:"json",
                    success:function (data) {
                        if (data){
                            alert("添加成功！");
                            window.location.href = "${pageContext.request.contextPath}/bbsList";
                        }else {
                            alert("添加失败！");
                        }
                    }
                });
                return false;
            });
        });
        function back() {
            window.history.back(-1);
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-offset-3 col-md-6">
                <h1>
                    <small>发布新帖</small>
                </h1>
            </div>
        </div>

        <form class="col-md-6 col-md-offset-3" method="post">
            <div class="form-group">
                <span>发布新区</span>
                <select name="sortId">
                    <option value="0">请选择</option>
                    <c:forEach var="bbsSort" items="${bbsSorts}">
                        <option value="${bbsSort.id}">${bbsSort.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <span>作者</span>
                <input type="text" name="author" id="author" class="form-control" placeholder="请输入作者名"/>
                <span style="color: red">*</span>
            </div>
            <div class="form-group">
                <span>标题</span>
                <input type="text" name="title" id="title" class="form-control" placeholder="请输入标题"/>
                <span style="color: red">*</span>
            </div>
            <div class="form-group">
                <span>详细内容</span>
                <textarea name="detail" class="form-control" id="detail"></textarea>
                <span style="color: red">*</span>
            </div>
            <div class="form-group col-md-2 col-md-offset-1">
                <input type="submit" value="提交" class="form-control btn btn-primary"/>
            </div>
            <div class="form-group col-md-2">
                <input type="button" value="返回" class="form-control btn btn-default" onclick="back()"/>
            </div>
        </form>
    </div>
</body>
</html>