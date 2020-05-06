<%//get.jsp%>
<%@ page language="java" import="java.util.Random" pageEncoding="UTF-8"%>
<%@ page contentType="text/html"%>
<html>
<head>
    <title>系统将随机生成一个数</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
</head>

<body>
<jsp:useBean id="guess" class="GuessNumber" scope="session"/>
<%
    //实例化一个对象，该对象可以产生随机数
    Random randomNumbers=new Random();
    int answer=1+randomNumbers.nextInt(100);
    String str=response.encodeRedirectURL("guess.jsp");
%>
<jsp:setProperty name="guess" property="answer" value="<%=answer%>"/>
<h3>随系统随机生成了一个1到100之间的整数，请猜是什么数？</h3>
<hr>
<form action="<%=str%>"method="get">
    输入你猜的数：<input type="text"name="guessNumber">
    <input type="submit"value="提交">
</form>
</body>
</html>