<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css">
    <link rel = "shortcut icon" href="image/favicon.ico">
    <!--  popper.min.js 用于弹窗、提示、下拉菜单 -->
    <script src="https://cdn.staticfile.org/popper.js/2.9.3/umd/popper.min.js"></script>
    <!-- 最新的 Bootstrap5 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/js/bootstrap.min.js"></script>
    <title>XAUAT iOS Club</title>
    <meta charset="utf-8">
</head>
<body>
<div class="container-fluid p-5 bg-primary text-white text-center">
    <div class = "row">
        <div class="col-sm-4">
            <img src="image/0.png" style="width: 90px;height: 90px">
        </div>
        <div class="col-sm-4">
            <h1>XAUAT iOS Club</h1>
            <p>西安建筑科技大学iOS众创空间俱乐部</p>
        </div>
    </div>
</div>
<div class="b-example-divider"></div>
<div class="container mt-5">
    <div class="row">
        <div class="shadow col-sm-4">
            <h1>社团介绍</h1>
            <p>
                西安建筑科技大学iOS众创空间，是由Apple公司资金支持，受南山书院和西安建筑科技大学大学生创新创业实践中心指导的学术型学生团体。
                协会于2019.09月正式注册成立，以助力创新创业发展，指导社团成员进行软件开发，探讨前沿科技为目标。
            </p>
            <p>
                在学校、书院，Apple公司和学生社团的帮助下，提供专业的指导、广阔的平台以及相关的设备，使学生创造性的想法得以尽情发挥，
                在“众创空间”中感受科技、艺术与未来。在这里，我们将一起分享见解与故事，一起见证成长与坚持，一起探索属于各自的道路。iOS众创空间，让你相遇未来。
            </p>
        </div>
        <br>
        <div class="shadow col-sm-4">
            <h1>社团动态</h1>
            <a href="https://mp.weixin.qq.com/s?__biz=MzIyNjcxMTIwMQ==&mid=2247486282&idx=1&sn=dbb86b55054a2e68148992ba54e5ef28&chksm=e86d0884df1a81923225dccb6f0dbb7c2966d1324ce398e6926749ed5dcf64b4d9768a568085&token=224740428&lang=zh_CN#rd">iOS Club 2021,迎接全新的你。</a>
            <br>
            <a href="https://mp.weixin.qq.com/s?__biz=MzIyNjcxMTIwMQ==&mid=2247486831&idx=1&sn=064cdf26fb7bd20954f12b7071368761&chksm=e86d0ea1df1a87b7c938c002764157c6550470ac2b64a58cd76b0dde682697efec8f4696a87c&token=224740428&lang=zh_CN#rd">iOS Club 2021,给你更多可能。</a>
            <br>
            <a href="https://mp.weixin.qq.com/s?__biz=MzIyNjcxMTIwMQ==&mid=2247485576&idx=1&sn=067ce9a2548a591e51299dda80827dad&chksm=e86d0b46df1a8250fbcdcdf97678a65faaa9832f611563e47d21779daf14d6ae5e86d2cef918&token=224740428&lang=zh_CN#rd">First Meet</a>
            <br>
        </div>
        <br>
        <div class="shadow col-sm-4">
            <h1>关注我们</h1>
            <img src="image/qrcode.jpg" style="height: 300px;width: 300px">
            <br>
        </div>
        <br>
        <div class="shadow col-sm-8">
            <h1>工具&链接</h1>
<%--            <a class="btn btn-primary" href="info.jsp" role="button">成员信息维护</a>--%>
            <div class="row">
                <div class="card col-sm-4">
                    <div class="card-body">
                        <h5 class="card-title">成员信息维护</h5>
                        <p class="card-text">社团成员进行信息查询，修改</p>
                        <a href="info.jsp" class="btn btn-primary">点击进入</a>
                    </div>
                </div>
                <div class="card col-sm-4">
                    <div class="card-body">
                        <h5 class="card-title">教务网</h5>
                        <p class="card-text">西安建筑科技大学新教务网</p>
                        <a href="http://swjw.xauat.edu.cn/student/login" class="btn btn-primary">点击跳转</a>
                    </div>
                </div>
                <div class="card col-sm-4">
                    <div class="card-body">
                        <h5 class="card-title">新成员登记</h5>
                        <p class="card-text">社团新成员请在此进行信息登记</p>
                        <a href="reg.jsp" class="btn btn-primary">点击进入</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="card col-sm-4">
                    <div class="card-body">
                        <h5 class="card-title">进制转换器</h5>
                        <p class="card-text">一个在线小工具，进行进制转换</p>
                        <a href="base.jsp" class="btn btn-primary">点击进入</a>
                    </div>
                </div>
            </div>
            <br>
        </div>
        <br>
        <div class="shadow col-sm-4">
            <h2>更多功能开发中...</h2>
        </div>
    </div>
</div>
<hr>
<div class="container mt5">
    <div class="row" >
        <div class="text-center row-sm-2">
            <p>测试网页，不代表社团官方网页，一切解释权归社团所有。| Copyright (C) 2022 HuaJi</p>
        </div>
    </div>
</div>
</body>
</html>
