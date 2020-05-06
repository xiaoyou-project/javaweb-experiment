<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>下拉组件</title>
    <link rel="stylesheet" href="./layui/css/layui.css">
    <style>
        .layui-container{
            border-radius: 15px;
            margin-top: 10%;
            width: 31%;
        }
        .my-list{
            list-style: square;
            margin-left: 15px;
        }
        .my-table tr td{
            border: 1px solid #FF00FF;
            text-align: center;
            width: 100px;
            border-collapse: collapse;
        }

        tr:nth-child(odd){
            background:#00CCCC;
        }
        tr:nth-child(even){
            background:#FFCCCC;
        }
    </style>
</head>
<body>
<div class="layui-container">
    <div class="layui-card">
        <div class="layui-card-header">css列表和表格样式</div>
        <div class="layui-card-body">
            <h1 style="text-decoration: overline">第一段文字</h1><br>
            <h2 style="text-decoration: line-through">第二段文字</h2><br>
            <h3 style="text-decoration: underline">第三段文字</h3><br>
             	列表显示<br>
            <ul>
                <li class="my-list">HTML--网页结构</li>
                <li class="my-list">CSS--网页样式</li>
                <li class="my-list">JS--网页交互</li>
            </ul><br>
            <table class="my-table">
                <tr>
                    <td>标题1</td>
                    <td>标题2</td>
                    <td>标题3</td>
                </tr>
                <tr>
                    <td>内容11</td>
                    <td>内容12</td>
                    <td>内容13</td>
                </tr>
                <tr>
                    <td>内容21</td>
                    <td>内容22</td>
                    <td>内容23</td>
                </tr>
                <tr>
                    <td>内容31</td>
                    <td>内容32</td>
                    <td>内容33</td>
                </tr>
                <tr>
                    <td>内容41</td>
                    <td>内容42</td>
                    <td>内容43</td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>
