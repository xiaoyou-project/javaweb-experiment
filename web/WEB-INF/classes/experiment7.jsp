<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="utf-8"%>
<%@page import="java.util.Random" %>
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
<jsp:useBean class="keshe.GuessNumber" scope="session" id="guess"/>
<%
    //实例化一个对象，该对象可以产生随机数
    Random randomNumbers=new Random();
    int answer=1+randomNumbers.nextInt(100);
    String str=response.encodeRedirectURL("guess.jsp");
%>
<jsp:setProperty name="guess" property="answer" value="<%=answer%>"/>
<div class="layui-container">
    <div class="layui-card">
        <div class="layui-card-header">随系统随机生成了一个1到100之间的整数，请猜是什么数？</div>
        <div class="layui-card-body">
            <form class="layui-form" action="<%=str%>" method="get">
                <div class="layui-form-item">
                    <label class="layui-form-label">我猜:</label>
                    <div class="layui-inline" style="display: flex">
                        <input type="text" name="guessNumber"  placeholder="输入你猜的数:"  class="layui-input">
                        <button class="layui-btn layui-btn-normal" >提交</button>
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