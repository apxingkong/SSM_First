<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="shortcut icon" href="https://i.postimg.cc/28ByBG6h/logo1ico.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("form").submit(function () {
                $.ajax({
                    url:"loginUser",
                    type:"post",
                    data:$("form").serialize(),
                    datatype:"json",
                    success:function(mydata){
                        console.log(mydata);
                        if(mydata == true){//后台返回为true，跳转图书页面
                            alert('登录成功！');
                            window.location.href="${pageContext.request.contextPath}/bookListPage";
                        }else{
                            alert('登录失败,请重新输入！');
                            $("#userCode").val("");
                            $("#password").val("");
                        }
                    }
                });
                return false;
            });
        });
        function register() {
            window.location.href = "${pageContext.request.contextPath}/toRegister";
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-6 col-md-offset-3">
            <h1>
                <small>图书借阅系统</small>
            </h1>
        </div>
    </div>
    <form class="col-md-6 col-md-offset-3" method="post">
        <div class="form-group">
            <label for="userCode">登录账号：</label>
            <input type="text" id="userCode" name="userCode" class="form-control" placeholder="请输入账号" required/>
        </div>
        <div class="form-group">
            <label for="password">登录密码：</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" required/>
        </div>
        <div class="form-group">
            <input type="submit" value="登录 | Login" class="form-control btn btn-primary"/>
            <input type="reset" value="重置" class="form-control btn btn-default"/>
            <input type="button" value="注册用户" class="form-control btn btn-default" onclick="register()"/>
        </div>
    </form>
</div>
</body>
</html>
