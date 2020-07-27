<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${now}" pattern="yyyy-MM-dd HH:mm:ss" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/23
  Time: 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>空气质量信息维护界面</title>
    <link rel="shortcut icon" href="https://i.postimg.cc/28ByBG6h/logo1ico.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function back(){
            window.open("${pageContext.request.contextPath}/airQualityListPage","_self")
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-6 col-md-offset-3">
            <h1>
                <small>空气质量信息维护界面</small>
            </h1>
        </div>
    </div>
    <form class="col-md-6 col-md-offset-3" action="${pageContext.request.contextPath}/updateAirQuality" method="post">
        <input type="hidden" value="${airQuality.id}" name="id"/>
        <input type="hidden" value="${year}" name="lastModifyTime1"/>
        <div class="form-group">
            <label>检测区域：</label>
            <select name="districtId">
                <option value="${distID.id}">${distID.name}</option>
                <c:forEach var="dis" items="${districts}">
                    <option value="${dis.id}">${dis.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="monDate">检测日期：</label>
            <input type="text" id="monDate" name="monitorTime1" class="form-control" placeholder="请输入检测日期" value="${airQuality.monitorTime}"/>
        </div>
        <div class="form-group">
            <label for="pm10">PM10值：</label>
            <input type="text" id="pm10" name="pm10" class="form-control" placeholder="请输入PM10" value="${airQuality.pm10}"/>
        </div>
        <div class="form-group">
            <label for="pm25">PM2.5值：</label>
            <input type="text" id="pm25" name="pm25" class="form-control" placeholder="请输入PM2.5" value="${airQuality.pm25}"/>
        </div>
        <div class="form-group">
            <label for="monStation">监测站：</label>
            <input type="text" id="monStation" name="monitoringStation" class="form-control" placeholder="请输入检测站" value="${airQuality.monitoringStation}"/>
        </div>
        <div class="form-group">
            <input type="submit" value="修改" class="form-control btn btn-primary"/>
            <input type="reset" value="删除" class="form-control btn btn-default"/>
            <input type="button" value="返回" class="form-control btn btn-default" onclick="back()"/>
        </div>
    </form>
</div>
</body>
</html>
