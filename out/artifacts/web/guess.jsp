<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="GB2312"%>
<%@page import="java.util.Random" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>猜测的结果</title>
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
    String strGuess=response.encodeRedirectURL("guess.jsp");
    String strGetNumber=response.encodeRedirectURL("experiment7.jsp");
%>
<%--设置猜的数字为获取的参数--%>
<jsp:setProperty name="guess" property="guessNumber" param="guessNumber"/>
<div class="layui-container">
    <div class="layui-card">
        <div class="layui-card-header">
        这是第<jsp:getProperty name="guess" property="guessCount"/>次猜。
        <jsp:getProperty name="guess" property="result"/>
        你猜的数是<jsp:getProperty name="guess" property="guessNumber"/>。</div>
        <div class="layui-card-body">
            <%
                if(!guess.isRight())
                {
            %>
            <form class="layui-form" action="<%=strGuess%>" method="get">
                <div class="layui-form-item">
                    <label class="layui-form-label">再猜一次:</label>
                    <div class="layui-inline" style="display:flex">
                        <input type="text" name="guessNumber"  placeholder="输入你猜的数:"  class="layui-input">
                        <button class="layui-btn layui-btn-normal" >提交</button>
                    </div>
                </div>
            </form>
            <%
                }
            %>
            <a href="<%=strGetNumber %>">重新开始猜数</a>
        </div>
    </div>
</div>
<script src="./layui/layui.js"></script>
<script>
</script>
</body>
</html>