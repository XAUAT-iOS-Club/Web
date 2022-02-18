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
    <title>成员个人信息</title>
    <meta charset="utf-8">
</head>
<body>
<div class="container-fluid p-5 bg-primary text-white text-center">
    <div class = "row">
        <div class="col-sm-4">
            <img src="image/0.png" style="width: 50px;height: 50px">
        </div>
        <div class="col-sm-4">
            <h2>社团成员信息维护(当前未开放)</h2>
        </div>
    </div>
</div>
<div class="container-sm">
    <form action="info" method="post">
        <label for="mid" class="form-label">请输入学号进行查询</label>
        <input type="number" class="form-control" id="mid" name = "mid" placeholder="您的学号">
        <br>
        <input type="submit" class="btn btn-primary btn-lg disabled" value="查询">
    </form>
</div>
<hr>
<div class="container-sm">
    <p>您的个人信息如下，如需修改请编辑后点击修改</p>
    <form action="updateInfo" method="post">
        <label for="mname" class="form-label">姓名</label>
        <input type="text" class="form-control" id="mname" name = "mname" value="${mname}" placeholder="您的姓名">
        <label for="msex" class="form-label">性别</label>
        <input type="text" class="form-control" id="msex" name = "msex" value="${msex}" placeholder="您的性别">
        <label for="mtel" class="form-label">联系方式</label>
        <input type="number" class="form-control" id="mtel" name = "mtel" value="${mtel}" placeholder="您的联系方式">
        <label for="mcol" class="form-label">学院</label>
        <input type="text" class="form-control" id="mcol" name = "mcol" value="${mcol}" placeholder="您的学院">
        <label for="mclass" class="form-label">专业班级</label>
        <input type="text" class="form-control" id="mclass" name = "mclass" value="${mclass}" placeholder="您的专业班级">
        <label for="mpol" class="form-label">政治面貌</label>
        <input type="text" class="form-control" id="mpol" name = "mpol" value="${mpol}" placeholder="您的政治面貌">
        <label for="mjob" class="form-label">职务</label>
        <input type="text" class="form-control " id="mjob" name = "mjob" value="${mjob}" placeholder="您在社团内的职务" disabled>
        <br>
        <input type="submit" class="btn btn-primary btn-lg disabled" value="提交修改">
    </form>
    <hr>
    <P>学号暂不支持在线修改，如需修改请群内联系人工修改！</P>
</div>
</body>
</html>
