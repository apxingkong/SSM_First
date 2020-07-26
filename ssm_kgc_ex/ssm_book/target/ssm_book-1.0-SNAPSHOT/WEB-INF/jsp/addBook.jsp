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
    <title>添加书籍</title>
    <link rel="shortcut icon" href="https://pics.images.ac.cn/image/5f1008907e854.html" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function check()
        {
            //验证
            var f=document.getElementById("fm");
            var str = f.bookPublishDate.value;
            var r = str.match(/^(\d{1,4})(-)(\d{1,2})(-)(\d{1,2})$/);
            if(f.bkcout.value==''){
                alert("图书数量不可以为空！");
                return false;
            }
            else if(f.bkname.value==''){
                alert("图书名称不可以为空！");
                return false;
            }
            else if(f.bkdetail.value==''){
                alert("图书描述不可以为空！");
                return false;
            }
            else if(f.bookPublishDate.value==''){
                alert("出版日期不可以为空！");
                return false;
            }
            else if(r==null || r[3]>12 || r[5] > 31){
                alert("出版日期格式输入不合法！"+"  "+r);
                return false;
            }
            return true;
        }
        function back(){
            window.open("${pageContext.request.contextPath}/book/allBook","_self")
        }
    </script>
</head>
<body>
    <div class="container">

        <div class="row clearfix">
            <div class="col-md-6 col-md-offset-3 column">
                <div class="page-header">
                    <h1>
                        <small>增加书籍</small>
                    </h1>
                </div>
            </div>
        </div>

        <form class="col-md-6 col-md-offset-3" action="${pageContext.request.contextPath}/book/addBook" method="post" id="fm">
            <div class="form-group">
                <label for="bkname">书籍名称：</label>
                <input type="text" class="form-control" name="bookName" id="bkname" placeholder="请输入书籍名称" required/>
            </div>
            <div class="form-group">
                <label for="bkcout">书籍数量：</label>
                <input type="text" class="form-control" name="bookCounts" id="bkcout" placeholder="请输入书籍数量" required/>
            </div>
            <div class="form-group">
                <label for="bkdetail">书籍描述：</label>
                <input type="text" class="form-control" name="detail" id="bkdetail" placeholder="请输入书籍描述" required/>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="添加"/>
                <input type="button" class="form-control" value="返回" onclick="back()"/>
            </div>
        </form>
    </div>
</body>
</html>
