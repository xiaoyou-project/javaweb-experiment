<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>关于博主</title>
    <link rel="stylesheet" href="./layui/css/layui.css">
    <style>
        .layui-container{
            display: flex;
            flex-direction: column;
            border-radius: 5px;
            margin-top: 5%;
            width: 50%;
            background: #ffffff;
            align-items: center;
        }
        .avatar{
            margin-top: 10px;
            width: 80px;
            border-radius: 50%;
            margin-right: 8px;
            transition: all .3s;
            cursor: pointer;
        }
        span{
            font-size: 17px;
        }
        .avatar:hover{
            transform: rotate(360deg) scale(1.3);
        }
        p {
            margin-top: 14px;
            font-size: 14px;
        }
    </style>
</head>
<body>
<div class="layui-container">
    <img alt class="avatar" src="https://img.xiaoyou66.com/images/2020/02/20/tTSY.jpg"/>
    <p style="text-align: center;"><strong><span style="color: #000000;">一个喜欢捣鼓</span><span style="color: #00ff00;">硬件</span><span style="color: #000000;">手工达人</span></strong></p>
    <p style="text-align: center;"><strong><span style="color: #000000;">一个爱研究</span><span style="color: #e4508f;">软件</span><span style="color: #000000;">的程序员</span></strong></p>
    <p style="text-align: center;"><span style="color: #ffc3e7;"><strong><span style="color: #000000;">一个沉迷于</span>二次元<span style="color: #000000;">的宅男</span>&nbsp;</strong></span></p>
    <p>&nbsp;</p>
    <p style="text-align: center;">没有什么远大的理想，做自己喜欢的事情就好</p>
    <p style="text-align: center;">没有什么天才的大脑，只有靠努力学习来成长</p>
    <p style="text-align: center;">不会什么社会交际，但有一颗真诚的心</p>
    <hr class="layui-bg-black">
    <div class="my-list">
        <a href="./experiment4/music.html"><button type="button" class="layui-btn"><i class="layui-icon layui-icon-headset"></i>我喜欢的歌</button></a>
        <a href="./experiment4/movie.html"><button type="button" class="layui-btn"><i class="layui-icon layui-icon-video"></i>我喜欢的动漫</button></a>
        <a href="./experiment4/book.html"><button type="button" class="layui-btn"><i class="layui-icon layui-icon-template"></i>我喜欢看的书</button></a>
    </div>
</div>
<script src="./layui/layui.js"></script>
<script>

</script>
</body>
</html>
