<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>首页</title>

  <link rel="stylesheet"href="static/css/bootstrap-theme.css">
  <link rel="stylesheet"href="static/css/bootstrap.css">
  <script type="text/javascript"src="static/js/jquery-3.5.1.min.js" ></script>
  <script type="text/javascript"src="static/js/messages.js" ></script>
  <script type="text/javascript"src="static/js/check.js"></script>
  <style>
    body{background-color: #c7ddef;background-size:cover;font-size: 16px;}
    .form{
      background: rgba(255,255,255,0.4);
      padding: 20px;
      padding-left: 40px;
      padding-right: 40px;
    }
    a{
      text-decoration: none;
      color: white;
    }
    .butt{
      width: 250px;
      height: 40px;
      margin: 100px auto;
      text-align: center;
      line-height: 40px;
      background: linear-gradient(to right,#4facfe,#00f2fe);
      border-radius: 20px;
      box-shadow: 5px 5px 5px lightgray;
    }
    .butt:hover{
      background: linear-gradient(to right,#00f2fe,#4facfe);
    }

  </style>

</head>
<body>
<div class="container" style="margin-top: 200px;">
  <form class="col-sm-offset-4 col-sm-4 col-sm-offset-4 form form-horizontal " action="${pageContext.request.contextPath}/Video/allVideo" method="post" id="login_form">

    <h3 class=" text-center">用户登录</h3>
    <div class="form-group">
      <label for="username" class="col-sm-2 control-label">账&nbsp;号</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名">
      </div>
    </div>

    <div class="form-group">
      <label for="password" class="col-sm-2 control-label">密&nbsp;码</label>
      <div class="col-sm-10 ">
        <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
      </div>
    </div>
    <button type="submit" class="btn btn-success center-block">登录</button>
    <div class="text-right">
      <a href="#" >注册新账号</a>
    </div>
  </form>
</div>
<h3 class="butt">
  <a href="http://localhost:7100/api/wechatlogin/wechat/login" target="_blank">微信登录</a>
</h3>
</body>
</html>
