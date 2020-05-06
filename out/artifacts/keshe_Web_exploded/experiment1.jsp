<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人信息收集</title>
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
        <div class="layui-card">
            <div class="layui-card-header">个人信息收集</div>
            <div class="layui-card-body">
                <form class="layui-form">
                    <div class="layui-form-item">
                        <label class="layui-form-label" for="user">账户</label>
                        <div class="layui-input-block"><input type="text" id="user" name="title" placeholder="输入账户名"  class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label" for="password">密码</label>
                        <div class="layui-input-block"><input id="password" type="password" name="title" placeholder="请输入密码"  class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">性别</label>
                        <div class="layui-input-block">
                            <input type="radio" name="sex" value="男" title="男">
                            <input type="radio" name="sex" value="女" title="女">
                            <input type="radio" name="sex" value="保密" title="保密" checked>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">兴趣</label>
                        <div class="layui-input-block">
                            <input type="checkbox" name="like[write]" title="前端开发">
                            <input type="checkbox" name="like[read]" title="后端开发" checked>
                            <input type="checkbox" name="like[dai]" title="美工">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label" for="study">学历</label>
                        <div class="layui-input-block">
                            <select id="study" name="city">
                                <option value=""></option>
                                <option value="0">初中</option>
                                <option value="1">高中</option>
                                <option value="2">本科</option>
                                <option value="3">专科</option>
                                <option value="4">博士</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label for="content" class="layui-form-label">个人简介</label>
                        <div class="layui-input-block">
                            <textarea id="content" name="desc" placeholder="输入个人简介" class="layui-textarea"></textarea>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit lay-filter="formDemo">确定</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
<script src="./layui/layui.js"></script>
<script>
    layui.use('form',function () {
        var form = layui.form;
    });
</script>
</body>
</html>
