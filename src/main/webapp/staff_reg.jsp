<%--
  Created by IntelliJ IDEA.
  User: fe
  Date: 2022/5/19
  Time: 22:13
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
  <title>2022-2023干部报名</title>
  <meta charset="utf-8">
</head>
<body>
<div class="container-fluid p-5 bg-primary text-white text-center">
  <div class = "row">
    <div class="col-sm-4">
      <img src="image/0.png" style="width: 90px;height: 90px">
    </div>
    <div class="col-sm-4">
      <h2>iOS Club 2022-2023干部报名</h2>
      <p>注意:干部报名范围仅限当前干部与部员</p>
    </div>
  </div>
</div>
<br>
<div class="container-sm">
  <form action="staff-reg" method="post" class="row g-3">
    <div class="form-floating mb-3 col-md-6">
      <input type="text" class="form-control" id="name" name = "name" placeholder="您的姓名">
      <label for="name">姓名</label>
    </div>
    <div class="form-floating mb-3 col-md-6">
      <input type="number" class="form-control" id="tel" name = "tel" placeholder="您的联系方式">
      <label for="tel">联系方式</label>
    </div>
    <div class="mb-3 col-12">
      <%--            <input type="text" class="form-control" id="mcol" name = "mcol" placeholder="您的学院">--%>
      <select class="form-select" id = "apartment" name = "apartment">
        <option value="未选择">请选择您的部门..</option>
        <option value="实践交流部">实践交流部</option>
        <option value="新媒体部">新媒体部</option>
        <option value="科技部">科技部</option>
        <option value="在职干部">在职干部</option>
      </select>
    </div>
    <div class="mb-3 col-md-6">
      <%--            <input type="text" class="form-control" id="mpol" name = "mpol" placeholder="您的政治面貌">--%>
      <select class="form-select" id = "intent" name = "intent">
        <option value="未填写">请选择第一意向..</option>
        <option value="社长">社长</option>
        <option value="副社长">副社长</option>
        <option value="秘书长">秘书长</option>
        <option value="所在部门部长">所在部门部长</option>
      </select>
      <%--            <label for="mpol">政治面貌</label>--%>
    </div>
    <div class="mb-3 col-md-6">
      <%--            <input type="text" class="form-control" id="mpol" name = "mpol" placeholder="您的政治面貌">--%>
      <select class="form-select" id = "intent2" name = "intent2">
        <option value="未填写">请选择第二意向..</option>
        <option value="社长">社长</option>
        <option value="副社长">副社长</option>
        <option value="秘书长">秘书长</option>
        <option value="所在部门部长">所在部门部长</option>
      </select>
      <%--            <label for="mpol">政治面貌</label>--%>
    </div>
    <br>
    <input type="submit" class="btn btn-primary">
    <%--        <a target="_blank" href="https://qm.qq.com/cgi-bin/qm/qr?k=GN0bMRH0uT4um3BYY1rQzE-z4QYWzVAt&jump_from=webapi">--%>
    <%--            <img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="iOS Club of XAUAT 2022" title="iOS Club of XAUAT 2022"></a>--%>
    <%--    <a class="btn btn-primary" href="https://qm.qq.com/cgi-bin/qm/qr?k=GN0bMRH0uT4um3BYY1rQzE-z4QYWzVAt&jump_from=webapi" role="button">一键加群</a>--%>
  </form>

</div>
</body>
</html>
