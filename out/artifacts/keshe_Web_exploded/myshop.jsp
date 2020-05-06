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
<%
    //获取session对象
    String user=(String) session.getAttribute("user");
    if (user==null){
        //获取传递过来的参数
        request.setCharacterEncoding("UTF-8");
        String userName=request.getParameter("user");
        if (userName==null){
            response.sendRedirect("experiment5.jsp");
        }else{
            session.setAttribute("user",userName);
            user=userName;
        }
    }
    //获取传递过来的数据(购物车信息)
    String shop=request.getParameter("shop");
    //新建一个数组存储商品数据
    String   shops[]={"0","0","0","0","0"};
    //读取session数据，判断用户的购物车
    String shopData=(String)session.getAttribute("shop");
    int price=0;
    if (shopData!=null){
        //购物车赋值
        shops= shopData.split(",");
        //计算价格
        price+=shops[0].equals("1")?6550:0;
        price+=shops[1].equals("1")?7890:0;
        price+=shops[2].equals("1")?4350:0;
        price+=shops[3].equals("1")?7350:0;
        price+=shops[4].equals("1")?3350:0;
    }
%>
<div class="layui-container">
    <div class="layui-card">
        <div class="layui-card-header">欢迎<%= user%>,下面是你的购物车信息</div>
        <div class="layui-card-body">
            <table class="layui-table">
                <colgroup><col width="150"><col width="200"></colgroup>
                <thead>
                <tr><th>商品</th><th>价格</th></tr>
                </thead>
                <tbody>
                <tr style="display:<%=shops[0].equals("1") ?"":"none"%>"><td>iPhone 11</td><td style="color:#FF5722">￥6550</td></tr>
                <tr style="display:<%=shops[1].equals("1") ?"":"none"%>"><td>MacPro</td><td style="color:#FF5722">￥7890</td></tr>
                <tr style="display:<%=shops[2].equals("1") ?"":"none"%>"><td>iPad</td><td style="color:#FF5722">￥4350</td></tr>
                <tr style="display:<%=shops[3].equals("1") ?"":"none"%>"><td>iPad Pro</td><td style="color:#FF5722">￥7350</td></tr>
                <tr style="display:<%=shops[4].equals("1") ?"":"none"%>"><td>Watch</td><td style="color:#FF5722">￥3350</td></tr>
                <tr><td>总计</td><td style="color:#FF5722">￥<%= price%></td></tr>
                </tbody>
            </table>
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
