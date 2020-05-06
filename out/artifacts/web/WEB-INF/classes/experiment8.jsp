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
    <div class="layui-card">
        <div class="layui-card-header">Servlet获取表单数据</div>
        <div class="layui-card-body">
            <fieldset class="layui-elem-field">
                <legend>参数传递</legend>
                <div class="layui-field-box">
                    <form class="layui-form" action="TreeParams" method="post">
                        <div class="layui-form-item">
                            <label class="layui-form-label">数据1</label>
                            <div class="layui-input-block">
                                <input type="text" name="n1" placeholder="参数1"  class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">数据2</label>
                            <div class="layui-input-block">
                                <input type="text" name="n2"  placeholder="参数2"  class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">数据3</label>
                            <div class="layui-input-block">
                                <input type="text" name="n3" placeholder="参数3" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
            </fieldset>
            <fieldset class="layui-elem-field">
                <legend>重定向和转发</legend>
                <div class="layui-field-box">
                    <form class="layui-form" action="Verify" method="post">
                        <div class="layui-form-item">
                            <label class="layui-form-label">输入实数:</label>
                            <div class="layui-input-block">
                                <input type="text" name="number" placeholder="输入一个实数"  class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
            </fieldset>
        </div>
    </div>
</div>
<script src="./layui/layui.js"></script>
<script>

</script>
</body>
</html>
