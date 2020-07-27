<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/27
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link rel="shortcut icon" href="https://i.postimg.cc/28ByBG6h/logo1ico.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#userCode").blur(function () {
                var userCode = $("#userCode").val();
                if (userCode == ""){
                    alert('用户名不能为空!');
                }else if (userCode.length > 25){
                    alert('用户名不能超过25个字!');
                }
            });
            $("#password").blur(function () {
                var password = $("#password").val();
                if (password == ""){
                    alert('密码不能为空！');
                }else if (password.length < 6){
                    alert('密码不能少于6位！');
                }
            });
            $("#passwordD").blur(function () {
                var passwords = $("#passwordD").val();
                if (passwords == ""){
                    alert('密码不能为空！');
                }else if (passwords.length < 6){
                    alert('密码不能少于6位！');
                }else if (passwords != $("#password").val()){
                    alert('密码不一致！');
                }
            });
            $("#email").blur(function () {
                var email = $("#email").val();
                if (email == ""){
                    alert('密码不能为空！');
                }else if (email.indexOf('@') == -1){
                    alert('邮箱格式有误！');
                }
            });
            $("form").submit(function () {
                $.ajax({
                    url:"addUser",
                    type:"post",
                    data:$("form").serialize(),
                    datatype:"json",
                    success:function(mydata){
                        console.log(mydata);
                        if(mydata == true){//后台返回为true，跳转图书页面
                        if (confirm('注册成功，是否立即登录?')){
                            window.location.href="${pageContext.request.contextPath}/loginOut";
                        }
                        }else{
                            alert('注册失败,请重新注册！');
                            $("#userCode").val("");
                            $("#password").val("");
                        }
                    }
                });
                return false;
            });
        });
        function back() {
            window.location.href = "${pageContext.request.contextPath}/loginOut";
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-6 col-md-offset-3">
            <h1>
                <small>会员注册</small>
            </h1>
        </div>
    </div>
    <form class="col-md-6 col-md-offset-3" method="post">
        <div class="form-group">
            <label for="userCode">登录账号：</label>
            <input type="text" id="userCode" name="userCode" class="form-control" placeholder="请输入账号" required/>
            <span style="color: red">*</span>
        </div>
        <div class="form-group">
            <label for="password">密&nbsp;&nbsp;码：</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" required/>
            <span style="color: red">*</span>
        </div>
        <div class="form-group">
            <label for="passwordD">确认密码：</label>
            <input type="password" id="passwordD" name="passwordD" class="form-control" placeholder="确认密码" required/>
            <span style="color: red">*</span>
        </div>
        <div class="form-group">
            <label>性&nbsp;&nbsp;别：</label>
            <select name="gender" id="gender">
                <option value="0">请选择</option>
                <option value="1">男</option>
                <option value="2">女</option>
            </select>
            <span style="color: red">*</span>
        </div>
        <div class="form-group">
            <label for="email">登录账号：</label>
            <input type="email" id="email" name="email" class="form-control" placeholder="请输入邮箱"/>
        </div>
        <div class="form-group">
            <input type="submit" value="注册" class="form-control btn btn-primary"/>
            <input type="reset" value="重置" class="form-control btn btn-default"/>
            <input type="button" value="返回" class="form-control btn btn-default" onclick="back()"/>
        </div>
    </form>
</div>
</body>
</html>
