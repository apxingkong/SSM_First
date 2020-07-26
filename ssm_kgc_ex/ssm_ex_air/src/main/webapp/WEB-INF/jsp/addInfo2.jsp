<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/23
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加检测信息</title>
    <link rel="shortcut icon" href="https://pics.images.ac.cn/image/5f1008907e854.html" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("form").submit(function () {
                $.ajax({
                    url:"addAirQuality2",
                    type:"post",
                    data:$("form").serialize(),
                    datatype:"json",
                    success:function(mydata){
                        console.log(mydata);
                        if(mydata == true){//后台返回为true，跳转图书页面
                            alert('添加成功！');
                            window.location.href="${pageContext.request.contextPath}/airQualityListPage";
                        }else{
                            alert('添加失败！');
                        }
                    }
                });
                return false;
            });
        })

        var DATE_FORMAT = /^[0-9]{4}-[0-1]?[0-9]{1}-[0-3]?[0-9]{1}$/;
        function checkDate(){
            var monidate = document.getElementById("monDate").value;
            if(DATE_FORMAT.test(monidate)){
                console.log(monidate + '日期格式正确');
            } else {
                alert("抱歉，您输入的日期格式有误" + monidate);
            }
        }
        function back(){
            window.open("${pageContext.request.contextPath}/airQualityListPage","_self");
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-6 col-md-offset-3">
                <h1>
                    <small>添加空气质量信息</small>
                </h1>
            </div>
        </div>
        <form class="col-md-6 col-md-offset-3">
            <input type="hidden" value="${airQuality.id}" name="id"/>
            <div class="form-group">
                <label>检测区域：</label>
                <select name="districtId" id="districtId">
                    <option value="0">请选择</option>
                    <c:forEach var="dis" items="${districts}">
                        <option value="${dis.id}">${dis.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="monDate">检测日期：</label>
                <input type="text" id="monDate" name="monitorTime1" class="form-control" placeholder="请输入检测日期" required onBlur="checkDate();"/>
            </div>
            <div class="form-group">
                <label for="pm10">PM10值：</label>
                <input type="text" id="pm10" name="pm10" class="form-control" placeholder="请输入PM10" required/>
            </div>
            <div class="form-group">
                <label for="pm25">PM2.5值：</label>
                <input type="text" id="pm25" name="pm25" class="form-control" placeholder="请输入PM2.5" required/>
            </div>
            <div class="form-group">
                <label for="monStation">监测站：</label>
                <input type="text" id="monStation" name="monitoringStation" class="form-control" placeholder="请输入检测站" value="${airQuality.monitoringStation}"/>
            </div>
            <div class="form-group">
                <input type="submit" value="保存" class="form-control btn btn-primary"/>
                <input type="reset" value="重置" class="form-control btn btn-default"/>
                <input type="button" value="返回" class="form-control btn btn-default" onclick="back()"/>
            </div>
        </form>
    </div>
</body>
</html>
