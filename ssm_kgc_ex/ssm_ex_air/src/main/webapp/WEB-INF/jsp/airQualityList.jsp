<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/23
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>列表页</title>
    <link rel="shortcut icon" href="https://i.postimg.cc/28ByBG6h/logo1ico.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $("#gos").click(function(){
                var no = $("#goPage").val();
                var pages = $("#pageSizes").val();
                window.location.href="${pageContext.request.contextPath}/airQualityListPage?pageNo="+no+"&pageSizes="+pages;
            });
            $("#oks").click(function(){
                var pages = $("#pageSizes").val();
                window.location.href="${pageContext.request.contextPath}/airQualityListPage?pageNo=1&pageSizes="+pages;
            });
        });
    </script>
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="container">
        </div>
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>空气质量监测信息库</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/toAddAirQuality">新增信息</a>
            </div>
            <div class="col-md-6 column">
                <form class="input-group" action="${pageContext.request.contextPath}/airQualityListPage" method="post" style="float: right">
                    <div class="form-group">
                        <span>按区域查询：</span>
                        <select name="districtId" style="margin: 0 20px">
                            <option value="0">不限</option>
                            <c:forEach items="${districts}" var="district">
                                <option value="${district.id}">${district.name}</option>
                            </c:forEach>
                        </select>
                        <input type="submit" value="查询" class="btn btn-primary" style="margin: 0 20px">
                        <a href="${pageContext.request.contextPath}/toAddAirQuality">添加空气质量信息</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th style="text-align: center">序号</th>
                    <th style="text-align: center">区域</th>
                    <th style="text-align: center">监测时间</th>
                    <th style="text-align: center">PM10数据</th>
                    <th style="text-align: center">PM2.5数据</th>
                    <th style="text-align: center">监测站</th>
                    <th style="text-align: center">操作</th>
                </tr>
                </thead>
                <%--从数据库查询出来--%>
                <tbody>
                <c:if test="${airQualities.size() == 0}" var="flag">
                    <tr>
                        <td colspan="7" align="center">抱歉，暂无数据！！！</td>
                    </tr>
                </c:if>
                <c:if test="${!flag}">
                    <c:forEach var="air" items="${airQualities}">
                        <tr style="text-align: center">
                            <td>${air.id}</td>
                            <td>${air.districtName}</td>
                            <td>${air.moniTime}</td>
                            <td>${air.pm10}</td>
                            <td>${air.pm25}</td>
                            <td>${air.monitoringStation}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/toUpdateAirQuality2?id=${air.id}&ids=${air.districtId}">修</a>
                                &nbsp; | &nbsp;
                                <a href="${pageContext.request.contextPath}/toUpdateAirQuality?id=${air.id}&ids=${air.districtId}">修改</a>
                                &nbsp; | &nbsp;
                                <a href="${pageContext.request.contextPath}/delAirQuality?id=${air.id}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>
                </tbody>

                <tfoot>
                <tr>
                    <c:if test="${airQualities.size() != 0}" var="flag">
                        <td colspan="7" height="35px" align="center">
                            <a class="btn btn-primary navbar-btn" href="${pageContext.request.contextPath}/toAddAirQuality2">新增信息</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;共${page.totalCount}条记录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;每页
                            <input type="text" value="${page.pageSize }" style="width: 90px;" id="pageSizes" name="pageSizes"/>
                            条&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="button" value="ok" id="oks"/>&nbsp;&nbsp;
                            &nbsp;&nbsp;第${page.currentPageNo }页/共${page.totalPage }页&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/airQualityListPage?pageNo=1&pageSizes=${param.pageSizes}" style="color:blue">第一页</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/airQualityListPage?pageNo=${page.currentPageNo-1}&pageSizes=${param.pageSizes}" style="color:blue">上一页</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/airQualityListPage?pageNo=${page.currentPageNo+1}&pageSizes=${param.pageSizes}" style="color:blue">下一页</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/airQualityListPage?pageNo=${page.totalPage}&pageSizes=${param.pageSizes}" style="color:blue">最后一页</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;转到第
                            <input type="text" style="width: 90px;" id="goPage" name="goPage"/>
                            页&nbsp;&nbsp;
                            &nbsp;<input type="button" value="go" id="gos"/>
                        </td>
                    </c:if>
                </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>
</body>
</html>
