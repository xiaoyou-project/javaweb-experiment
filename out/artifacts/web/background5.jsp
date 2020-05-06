<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>答题结果</title>
    <link rel="stylesheet" href="./layui/css/layui.css">
    <style>
        .layui-container{
            border-radius: 15px;
            margin-top: 10%;
            width: 31%;
        }
        .layui-card{
        	padding:7px;
        }
		.question-no{
			font-size: 20px;
			font-weight: 700;
			color: #009688;
		}
		.layui-field-box{
			font-size: 16px;
		}
    </style>
</head>
<body>
<div class="layui-container">
    <div class="layui-card">
		<fieldset class="layui-elem-field layui-field-title">
		  <legend>答题结果</legend>
			<%
				String ok="<i   style=\"font-size: 35px; color: #5FB878;font-weight: 900;\" class=\"layui-icon layui-icon-ok\" ></i>";
				String error="<i style=\"font-size: 35px; color: #FF5722;font-weight: 900;\" class=\"layui-icon layui-icon-close\"></i>";
				String q1=request.getParameter("q1");
				String q2_1=request.getParameter("q2-1");
				String q2_2=request.getParameter("q2-2");
				String q2_3=request.getParameter("q2-3");
				String q2_4=request.getParameter("q2-4");
				String q3_1=request.getParameter("q3-1");
				String q3_2=request.getParameter("q3-2");
				String q3_3=request.getParameter("q3-3");
				String q3_4=request.getParameter("q3-4");
				String q4=request.getParameter("q4");
				String q5=request.getParameter("q5");
			%>
		  <div class="layui-field-box">
			  <div class="layui-field-box">
				  <span class="question-no">第1题:</span>2+3=<%= request.getParameter("q1") %>
				  <%= q1.equals("5")?ok:error %>
				  <hr class="layui-bg-gray">

				  <span class="question-no">第2题:</span>偶数为
				  <%= q2_1!=null?q2_1:""%>
                  <%= q2_2!=null?q2_2:""%>
                  <%= q2_3!=null?q2_3:""%>
                  <%= q2_4!=null?q2_4:""%>
				  <%--	判断题目是否正确--%>
				  <%= q2_1!=null&&q2_2==null&&q2_3!=null&&q2_4==null?ok:error%>
				  <hr class="layui-bg-gray">

				  <span class="question-no">第3题:</span>动态网页为
				  <%= q3_1!=null?q3_1:""%>
				  <%= q3_2!=null?q3_2:""%>
				  <%= q3_3!=null?q3_3:""%>
				  <%= q3_4!=null?q3_4:""%>
				  <%--	判断题目是否正确--%>
				  <%= q3_1!=null&&q3_2!=null&&q3_3==null&&q3_4!=null?ok:error%>
				  <hr class="layui-bg-gray">


				  <span class="question-no">第4题:</span>服务端组件为<%= " "+q4%>
				  <%--	判断题目是否正确--%>
				  <%= q4.equals("servlet")?ok:error%>
				  <hr class="layui-bg-gray">

				  <span class="question-no">第5题:</span>服务器端采用接收用户请求的对象是<%= " "+q5%>
				  <%--	判断题目是否正确--%>
				  <%= q5.equals("request")?ok:error%>
				  <hr class="layui-bg-gray">

			  </div>
		  </div>
		</fieldset>
    </div>
</div>
</body>
</html>