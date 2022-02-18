<%--
  Created by IntelliJ IDEA.
  User: fe
  Date: 2022/1/14
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css">
    <link rel = "shortcut icon" href="image/favicon.ico">
    <!--  popper.min.js 用于弹窗、提示、下拉菜单 -->
    <script src="https://cdn.staticfile.org/popper.js/2.9.3/umd/popper.min.js"></script>
    <!-- 最新的 Bootstrap5 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/js/bootstrap.min.js"></script>
    <title>iOS Club成员登记</title>
    <meta charset="utf-8">
</head>
<body>
<div class="container-fluid p-5 bg-primary text-white text-center">
    <div class = "row">
        <div class="col-sm-4">
            <img src="image/0.png" style="width: 90px;height: 90px">
        </div>
        <div class="col-sm-4">
            <h2>iOS Club成员信息登记(当前未开放)</h2>
        </div>
    </div>
</div>
<br>
<div class="container-sm">
    <form action="reg" method="post" class="row g-3">
        <div class="form-floating mb-3 col-md-6">
            <input type="number" class="form-control" id="mid" name = "mid" placeholder="您的学号">
            <label for="mid">学号</label>
        </div>
        <div class="form-floating mb-3 col-md-6">
            <input type="text" class="form-control" id="mname" name = "mname" placeholder="您的姓名">
            <label for="mname">姓名</label>
        </div>
        <div class="mb-3 col-md-2">
<%--            <input type="text" class="form-control" id="msex" name = "msex" placeholder="您的性别">--%>
            <select class="form-select" id = "msex" name = "msex">
                <option value="男">男</option>
                <option value="女">女</option>
            </select>
<%--            <label for="msex">性别</label>--%>
        </div>
        <div class="form-floating mb-3 col-md-10">
            <input type="number" class="form-control" id="mtel" name = "mtel" placeholder="您的联系方式">
            <label for="mtel">联系方式</label>
        </div>
        <div class="mb-3 col-12">
<%--            <input type="text" class="form-control" id="mcol" name = "mcol" placeholder="您的学院">--%>
            <select class="form-select" id = "mcol" name = "mcol">
                <option value="建筑学院">建筑学院</option>
                <option value="土木工程学院">土木工程学院</option>
                <option value="环境与市政工程学院">环境与市政工程学院</option>
                <option value="建筑设备科学与工程学院">建筑设备科学与工程学院</option>
                <option value="材料科学与工程学院">材料科学与工程学院</option>
                <option value="管理学院">管理学院</option>
                <option value="机电工程学院">机电工程学院</option>
                <option value="冶金工程学院">冶金工程学院</option>
                <option value="信息与控制工程学院">信息与控制工程学院</option>
                <option value="艺术学院">艺术学院</option>
                <option value="理学院">理学院</option>
                <option value="文学院">文学院</option>
                <option value="马克思主义学院">马克思主义学院</option>
                <option value="资源工程学院">资源工程学院</option>
                <option value="公共管理学院">公共管理学院</option>
                <option value="化学与化工学院">化学与化工学院</option>
                <option value="体育学院">体育学院</option>
                <option value="安德学院">安德学院</option>
                <option value="国际教育学院">国际教育学院</option>
                <option value="继续教育（职业技术）学院">继续教育（职业技术）学院</option>
            </select>
        </div>
        <div class="form-floating mb-3 col-md-6">
            <input type="text" class="form-control" id="mclass" name = "mclass" placeholder="您的专业班级(如:计算机类2201)">
            <label for="mclass">专业班级</label>
        </div>
        <div class="mb-3 col-md-6">
<%--            <input type="text" class="form-control" id="mpol" name = "mpol" placeholder="您的政治面貌">--%>
    <select class="form-select" id = "mpol" name = "mpol">
        <option value="中共党员">中共党员</option>
        <option value="中共预备党员">中共预备党员</option>
        <option value="共青团员">共青团员</option>
        <option value="群众">群众</option>
        <option value="民革党员">民革党员</option>
        <option value="民盟盟员">民盟盟员</option>
        <option value="民建会员">民建会员</option>
        <option value="民进会员">民进会员</option>
        <option value="农工党党员">农工党党员</option>
        <option value="致公党党员">致公党党员</option>
        <option value="九三学社社员">九三学社社员</option>
        <option value="台盟盟员">台盟盟员</option>
        <option value="无党派人士">无党派人士</option>
    </select>
<%--            <label for="mpol">政治面貌</label>--%>
        </div>
        <br>
        <input type="submit" class="btn btn-primary disabled">
        <%--        <a target="_blank" href="https://qm.qq.com/cgi-bin/qm/qr?k=GN0bMRH0uT4um3BYY1rQzE-z4QYWzVAt&jump_from=webapi">--%>
        <%--            <img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="iOS Club of XAUAT 2022" title="iOS Club of XAUAT 2022"></a>--%>
        <a class="btn btn-primary" href="https://qm.qq.com/cgi-bin/qm/qr?k=GN0bMRH0uT4um3BYY1rQzE-z4QYWzVAt&jump_from=webapi" role="button">一键加群</a>
    </form>

</div>
</body>
</html>
