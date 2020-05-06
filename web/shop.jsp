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
    if (shopData!=null){
        //购物车赋值
        shops= shopData.split(",");
    }
    if(shop!=null){
        //这里说明用户点击了商品
        shops[0]=request.getParameter("shop1")!=null?"1":"0";
        shops[1]=request.getParameter("shop2")!=null?"1":"0";
        shops[2]=request.getParameter("shop3")!=null?"1":"0";
        shops[3]=request.getParameter("shop4")!=null?"1":"0";
        shops[4]=request.getParameter("shop5")!=null?"1":"0";
        //数组转字符串
        String datas = String.join(",",shops);
        //存储为session数据
        session.setAttribute("shop",datas);
    }

%>
<div class="layui-container">
    <div class="layui-card">
        <div class="layui-card-header">欢迎<%= user%>,下面是本店的商品</div>
        <div class="layui-card-body">
            <form class="layui-form" action="shop.jsp" method="post">
                <table class="layui-table">
                    <colgroup>
                        <col width="50">
                        <col width="80">
                        <col width="200">
                        <col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th>购买</th>
                        <th>购物车</th>
                        <th>商品名</th>
                        <th>价格</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="checkbox" name="shop1" title="" lay-skin="primary"> </td>
                        <td><%=shops[0].equals("1") ?"✔":"✘"%></td>
                        <td>iPhone 11</td>
                        <td style="color:#FF5722">￥6550</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="shop2" title="" lay-skin="primary"> </td>
                        <td><%=shops[1].equals("1") ?"✔":"✘"%></td>
                        <td>MacPro</td>
                        <td style="color:#FF5722">￥7890</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="shop3" title="" lay-skin="primary"> </td>
                        <td><%=shops[2].equals("1") ?"✔":"✘"%></td>
                        <td>iPad</td>
                        <td style="color:#FF5722">￥4350</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="shop4" title="" lay-skin="primary"> </td>
                        <td><%=shops[3].equals("1") ?"✔":"✘"%></td>
                        <td>iPad Pro</td>
                        <td style="color:#FF5722">￥7350</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="shop5" title="" lay-skin="primary"> </td>
                        <td><%=shops[4].equals("1") ?"✔":"✘"%></td>
                        <td>Watch</td>
                        <td style="color:#FF5722">￥3350</td>
                    </tr>
                    </tbody>
                </table>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <a href="myshop.jsp" class="layui-btn layui-btn-normal">购物车界面</a>
                        <button lay-submit name="shop" value="open" class="layui-btn layui-btn-danger">加入购物车</button>
                    </div>
                </div>
            </form>
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
