<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="GB2312"%>
<%@page import="java.util.Random" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>�²�Ľ��</title>
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
<%--���òµ�����Ϊ��ȡ�Ĳ���--%>
<jsp:setProperty name="guess" property="guessNumber" param="guessNumber"/>
<div class="layui-container">
    <div class="layui-card">
        <div class="layui-card-header">
        ���ǵ�<jsp:getProperty name="guess" property="guessCount"/>�β¡�
        <jsp:getProperty name="guess" property="result"/>
        ��µ�����<jsp:getProperty name="guess" property="guessNumber"/>��</div>
        <div class="layui-card-body">
            <%
                if(!guess.isRight())
                {
            %>
            <form class="layui-form" action="<%=strGuess%>" method="get">
                <div class="layui-form-item">
                    <label class="layui-form-label">�ٲ�һ��:</label>
                    <div class="layui-inline" style="display:flex">
                        <input type="text" name="guessNumber"  placeholder="������µ���:"  class="layui-input">
                        <button class="layui-btn layui-btn-normal" >�ύ</button>
                    </div>
                </div>
            </form>
            <%
                }
            %>
            <a href="<%=strGetNumber %>">���¿�ʼ����</a>
        </div>
    </div>
</div>
<script src="./layui/layui.js"></script>
<script>
</script>
</body>
</html>