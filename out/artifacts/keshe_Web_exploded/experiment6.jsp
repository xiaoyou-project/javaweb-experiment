<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>使用表单收集个人信息</title>
    <link rel="stylesheet" href="./layui/css/layui.css">
    <style>
        .layui-container{
            border-radius: 15px;
            margin-top: 10%;
            width: 31%;
        }
    </style>
</head>
<body>
<div class="layui-container">
    <%
        //判断用户是否登录
        String user=(String) session.getAttribute("user");
        if (user!=null){
            response.sendRedirect("shop.jsp");
        }
    %>
    <div class="layui-card">
        <div class="layui-card-header">session购物车</div>
        <div class="layui-card-body">
            <form class="layui-form" action="shop.jsp" method="get">
                <div class="layui-form-item">
                    <label class="layui-form-label">输入用户名</label>
                    <div class="layui-inline" style="display: flex">
                        <input type="text" name="user"  placeholder="请输入用户名"  class="layui-input">
                        <button class="layui-btn layui-btn-normal" >进入购物页面</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="./layui/layui.js"></script>
<script>

</script>
</body>
</html>
