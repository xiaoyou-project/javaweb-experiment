<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>下拉菜单</title>
    <link rel="stylesheet" href="./layui/css/layui.css">
    <style>
        .layui-container{
            border-radius: 15px;
            margin-top: 10%;
        }
        .my-navigation{
            display: inline-flex;
        }
        .my-navigation li a{
            background: #009688;
            width: 200px;
            height: 50px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #ffffff;
            font-size: 15px;
            font-weight: 700;
            cursor: pointer;
        }
        .my-navigation li{
            position: relative;
            padding: 5px;
        }
        .my-navigation dl{
            display: none;
            position: absolute;
            left: 0;
            top: 52px;
            min-width: 94%;
            line-height: 36px;
            margin: 5px;
            box-shadow: 0 2px 4px rgba(0,0,0,.12);
            background-color: #fff;
            z-index: 100;
            color: #000000;
            border-radius: 5px;
            white-space: nowrap;
            cursor: pointer;
        }
        .my-navigation li:hover dl{
            display: block;
        }
        .my-navigation dl dd{
            color: #2F4056;
            text-align: center;
        }
        .my-navigation dl dd:hover{
            background: #01AAED;
        }
    </style>
</head>
<body>
<div class="layui-container">
    <ul class="my-navigation">
        <li>
            <a href="javascript:void(0)">菜单一</a>
            <dl>
                <dd>栏目1</dd>
                <dd>栏目1</dd>
                <dd>栏目1</dd>
                <dd>栏目1</dd>
            </dl>
        </li>
        <li>
            <a href="javascript:void(0)">菜单2</a>
            <dl>
                <dd>栏目2</dd>
                <dd>栏目2</dd>
                <dd>栏目2</dd>
                <dd>栏目2</dd>
            </dl>
        </li>
        <li>
            <a href="javascript:void(0)">菜单3</a>
            <dl>
                <dd>栏目3</dd>
                <dd>栏目3</dd>
                <dd>栏目3</dd>
                <dd>栏目3</dd>
            </dl>
        </li>
        <li>
            <a href="javascript:void(0)">菜单4</a>
            <dl>
                <dd>栏目4</dd>
                <dd>栏目4</dd>
                <dd>栏目4</dd>
                <dd>栏目4</dd>
            </dl>
        </li>
        <li>
            <a href="javascript:void(0)">菜单5</a>
            <dl>
                <dd>栏目5</dd>
                <dd>栏目5</dd>
                <dd>栏目5</dd>
                <dd>栏目5</dd>
            </dl>
        </li>
    </ul>
</div>
<script src="./layui/layui.js"></script>
<script>

</script>
</body>
</html>
